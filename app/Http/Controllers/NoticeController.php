<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Notice;
use App\Http\Requests\NoticeRequest;
use Auth;

class NoticeController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
	
    public function index()
    {
		if(Auth::user()->role->role_permission('view_notices')){
			$notices = Notice::orderBy('created_at', 'desc')->paginate(30);
			return view('notices.index', compact('notices'));
		}else{
			abort(403);
		}
    }
	
	public function search(Request $request)
	{
		if(Auth::user()->role->role_permission('view_notices')){
			$notices = Notice::where('title', 'LIKE', '%'. $request->get('term') .'%')->paginate(30);
			return view('notices.index', compact('notices'));
		}else{
			abort(403);
		}
	}
    
    public function create()
    {
		if(Auth::user()->role->role_permission('create_notices')){
			return view('notices.create');
		}else{
			abort(403);
		}
    }
	
    public function store(NoticeRequest $request)
    {
		if(Auth::user()->role->role_permission('create_notices')){
			$notice = Notice::create($request->all());
			return redirect('notices')->withSuccess($notice->title.' has been saved.');
		}else{
			abort(403);
		}
    }
	
    public function show(Notice $notice)
    {
		if(Auth::user()->role->role_permission('view_notices')){
			return view('notices.show', compact('notice'));
		}else{
			abort(403);
		}
    }
	
    public function edit(Notice $notice)
    {
		if(Auth::user()->role->role_permission('edit_notices')){
			return view('notices.edit', compact('notice'));
		}else{
			abort(403);
		}
    }
	
    public function update(NoticeRequest $request, Notice $notice)
    {
		if(Auth::user()->role->role_permission('edit_notices')){
			$notice->update($request->all());
			return redirect('notices')->withSuccess($notice->title.' has been updated.');
		}else{
			abort(403);
		}
    }
	
    public function destroy(Notice $notice)
    {
		if(Auth::user()->role->role_permission('delete_notices')){
			$notice->delete();
			return redirect('notices')->withSuccess($notice->title.' has been deleted.');
		}else{
			abort(403);
		}
    }
}
