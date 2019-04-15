<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Document;
use App\Http\Requests\DocumentRequest;
use App\User;
use App\DocumentType;
use Auth;

class DocumentController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
	
    public function index()
    {
		if(Auth::user()->role->role_permission('view_documents')){
			if(Auth::user()->role->role_permission('view_documents')->level == 'all'){
				$documents = Document::paginate(30);
			}elseif(Auth::user()->role->role_permission('view_documents')->level == 'team'){
				$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
				$documents = Document::whereIn('user_id', $users)->paginate(30);
			}else{
				$documents = Document::where('user_id', Auth::user()->id)->paginate(30);
			}
			return view('documents.index', compact('documents'));
		}else{
			abort(403);
		}
    }
	
	public function search(Request $request)
	{
		if(Auth::user()->role->role_permission('view_documents')){
			if(Auth::user()->role->role_permission('view_documents')->level == 'all'){
				$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->get();
				$documents = Document::whereIn('user_id', $users->pluck('id'))->paginate(30);
			}elseif(Auth::user()->role->role_permission('view_documents')->level == 'team'){
				$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->where('department_id', Auth::user()->department_id)->pluck('id');
				$documents = Document::whereIn('user_id', $users)->paginate(30);
			}else{
				$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->where('id', Auth::user()->id)->pluck('id');
				$documents = Document::whereIn('user_id', $users)->paginate(30);
			}
			return view('documents.index', compact('documents'));
		}else{
			abort(403);
		}
	}
    
    public function create(User $user)
    {
		if(Auth::user()->role->role_permission('create_documents')){
			$document_types = [''=>''] + DocumentType::lists('document_type', 'id')->toArray();
			return view('documents.create', compact('user', 'document_types'));
		}else{
			abort(403);
		}
    }
	
    public function store(DocumentRequest $request, User $user)
    {
		if(Auth::user()->role->role_permission('create_documents')){
			$document = Document::create($request->all());
			return redirect(isset($user->id) ? 'users/'.$user->id : 'documents')->withSuccess('Document has been saved.');
		}else{
			abort(403);
		}
    }
	
    public function show(Document $document)
    {
		if(Auth::user()->role->role_permission('view_documents')){
			if(Auth::user()->role->role_permission('view_documents')->level == 'team'){
				$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
				$document = Document::where('id', $document->id)->whereIn('user_id', $users)->first();
			}elseif(Auth::user()->role->role_permission('view_documents')->level == 'self'){
				$document = Document::where('id', $document->id)->where('user_id', Auth::user()->id)->first();
			}
			return $document ? response()->download(public_path($document->document)) : abort(403);
		}else{
			abort(403);
		}
    }
	
    public function edit(Document $document)
    {
		if(Auth::user()->role->role_permission('edit_documents')){
			if(Auth::user()->role->role_permission('edit_documents')->level == 'team'){
				$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
				$document = Document::where('id', $document->id)->whereIn('user_id', $users)->first();
			}elseif(Auth::user()->role->role_permission('edit_documents')->level == 'self'){
				$document = Document::where('id', $document->id)->where('user_id', Auth::user()->id)->first();
			}
			$document_types = [''=>''] + DocumentType::lists('document_type', 'id')->toArray();
			return $document ? view('documents.edit', compact('document', 'document_types')) : abort(403);
		}else{
			abort(403);
		}
    }
	
    public function update(DocumentRequest $request, Document $document)
    {
		if(Auth::user()->role->role_permission('edit_documents')){
			$document->update($request->all());
			return redirect('documents')->withSuccess('Document has been updated.');
		}else{
			abort(403);
		}
    }
	
    public function destroy(Document $document)
    {
		if(Auth::user()->role->role_permission('delete_documents')){
			$document->delete();
			return redirect('documents')->withSuccess('Document has been deleted.');
		}else{
			abort(403);
		}
    }
}
