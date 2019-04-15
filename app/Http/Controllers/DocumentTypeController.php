<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\DocumentType;
use App\Http\Requests\DocumentTypeRequest;
use Auth;

class DocumentTypeController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
	
    public function index()
    {
		if(Auth::user()->role->role_permission('view_document_types')){
			$document_types = DocumentType::paginate(30);
			return view('document-types.index', compact('document_types'));
		}else{
			abort(403);
		}
    }
	
	public function search(Request $request)
	{
		if(Auth::user()->role->role_permission('view_document_types')){
			$document_types = DocumentType::where('document_type', 'LIKE', '%'. $request->get('term') .'%')->paginate(30);
			return view('document-types.index', compact('document_types'));
		}else{
			abort(403);
		}
	}
    
    public function create()
    {
		if(Auth::user()->role->role_permission('create_document_types')){
			return view('document-types.create');
		}else{
			abort(403);
		}
    }
	
    public function store(DocumentTypeRequest $request)
    {
		if(Auth::user()->role->role_permission('create_document_types')){
			$document_type = DocumentType::create($request->all());
			return redirect('document-types')->withSuccess($document_type->document_type.' has been saved.');
		}else{
			abort(403);
		}
    }
	
    public function show(DocumentType $document_type)
    {
		if(Auth::user()->role->role_permission('view_document_types')){
			return $document_type;
		}else{
			abort(403);
		}
    }
	
    public function edit(DocumentType $document_type)
    {
		if(Auth::user()->role->role_permission('edit_document_types')){
			return view('document-types.edit', compact('document_type'));
		}else{
			abort(403);
		}
    }
	
    public function update(DocumentTypeRequest $request, DocumentType $document_type)
    {
		if(Auth::user()->role->role_permission('edit_document_types')){
			$document_type->update($request->all());
			return redirect('document-types')->withSuccess($document_type->document_type.' has been updated.');
		}else{
			abort(403);
		}
    }
	
    public function destroy(DocumentType $document_type)
    {
		if(Auth::user()->role->role_permission('delete_document_types')){
			$document_type->delete();
			return redirect('document-types')->withSuccess($document_type->document_type.' has been deleted.');
		}else{
			abort(403);
		}
    }
}
