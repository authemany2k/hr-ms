<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\LeaveType;
use App\Http\Requests\LeaveTypeRequest;
use Auth;

class LeaveTypeController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
	
    public function index()
    {
		if(Auth::user()->role->role_permission('view_leave_types')){
			$leave_types = LeaveType::paginate(30);
			return view('leave-types.index', compact('leave_types'));
		}else{
			abort(403);
		}
    }
	
	public function search(Request $request)
	{
		if(Auth::user()->role->role_permission('view_leave_types')){
			$leave_types = LeaveType::where('leave_type', 'LIKE', '%'. $request->get('term') .'%')->paginate(30);
			return view('leave-types.index', compact('leave_types'));
		}else{
			abort(403);
		}
	}
    
    public function create()
    {
		if(Auth::user()->role->role_permission('create_leave_types')){
			return view('leave-types.create');
		}else{
			abort(403);
		}
    }
	
    public function store(LeaveTypeRequest $request)
    {
		if(Auth::user()->role->role_permission('create_leave_types')){
			$leave_type = LeaveType::create($request->all());
			return redirect('leave-types')->withSuccess($leave_type->leave_type.' has been saved.');
		}else{
			abort(403);
		}
    }
	
    public function show(LeaveType $leave_type)
    {
		if(Auth::user()->role->role_permission('view_leave_types')){
			return $leave_type;
		}else{
			abort(403);
		}
    }
	
    public function edit(LeaveType $leave_type)
    {
		if(Auth::user()->role->role_permission('edit_leave_types')){
			return view('leave-types.edit', compact('leave_type'));
		}else{
			abort(403);
		}
    }
	
    public function update(LeaveTypeRequest $request, LeaveType $leave_type)
    {
		if(Auth::user()->role->role_permission('edit_leave_types')){
			$leave_type->update($request->all());
			return redirect('leave-types')->withSuccess($leave_type->leave_type.' has been updated.');
		}else{
			abort(403);
		}
    }
	
    public function destroy(LeaveType $leave_type)
    {
		if(Auth::user()->role->role_permission('delete_leave_types')){
			$leave_type->delete();
			return redirect('leave-types')->withSuccess($leave_type->leave_type.' has been deleted.');
		}else{
			abort(403);
		}
    }
}
