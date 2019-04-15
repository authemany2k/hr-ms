<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Leave;
use App\Http\Requests\LeaveRequest;
use App\User;
use App\LeaveType;
use Auth;

class LeaveController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
	
    public function index()
    {
		if(Auth::user()->role->role_permission('view_leaves')){
			if(Auth::user()->role->role_permission('view_leaves')->level == 'all'){
				$leaves = Leave::paginate(30);
			}elseif(Auth::user()->role->role_permission('view_leaves')->level == 'team'){
				$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
				$leaves = Leave::whereIn('user_id', $users)->paginate(30);
			}else{
				$leaves = Leave::where('user_id', Auth::user()->id)->paginate(30);
			}
			return view('leaves.index', compact('leaves'));
		}else{
			abort(403);
		}
    }
	
	public function search(Request $request)
	{
		if(Auth::user()->role->role_permission('view_leaves')){
			if(Auth::user()->role->role_permission('view_leaves')->level == 'all'){
				$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->get();
				$leaves = Leave::whereIn('user_id', $users->pluck('id'))->paginate(30);
			}elseif(Auth::user()->role->role_permission('view_leaves')->level == 'team'){
				$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->where('department_id', Auth::user()->department_id)->pluck('id');
				$leaves = Leave::whereIn('user_id', $users)->paginate(30);
			}else{
				$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->where('id', Auth::user()->id)->pluck('id');
				$leaves = Leave::whereIn('user_id', $users)->paginate(30);
			}
			return view('leaves.index', compact('leaves'));
		}else{
			abort(403);
		}
	}
    
    public function create(User $user)
    {
		if(Auth::user()->role->role_permission('create_leaves')){
			$leave_types = [''=>''] + LeaveType::lists('leave_type', 'id')->toArray();
			return view('leaves.create', compact('user', 'leave_types'));
		}else{
			abort(403);
		}
    }
	
    public function store(LeaveRequest $request, User $user)
    {
		if(Auth::user()->role->role_permission('create_leaves')){
			$leave = Leave::create($request->all());
			return redirect(isset($user->id) ? 'users/'.$user->id : 'leaves')->withSuccess('Leave has been saved.');
		}else{
			abort(403);
		}
    }
	
    public function show(Leave $leave)
    {
		if(Auth::user()->role->role_permission('view_leaves')){
			if(Auth::user()->role->role_permission('view_leaves')->level == 'team'){
				$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
				$leave = Leave::where('id', $leave->id)->whereIn('user_id', $users)->first();
			}elseif(Auth::user()->role->role_permission('view_leaves')->level == 'self'){
				$leave = Leave::where('id', $leave->id)->where('user_id', Auth::user()->id)->first();
			}
			return $leave ? $leave : abort(403);
		}else{
			abort(403);
		}
    }
	
    public function edit(Leave $leave)
    {
		if(Auth::user()->role->role_permission('edit_leaves')){
			if(Auth::user()->role->role_permission('edit_awards')->level == 'team'){
				$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
				$leave = Leave::where('id', $leave->id)->whereIn('user_id', $users)->first();
			}elseif(Auth::user()->role->role_permission('edit_awards')->level == 'self'){
				$leave = Leave::where('id', $leave->id)->where('user_id', Auth::user()->id)->first();
			}
			$leave_types = [''=>''] + LeaveType::lists('leave_type', 'id')->toArray();
			return $leave ? view('leaves.edit', compact('leave', 'leave_types')) : abort(403);
		}else{
			abort(403);
		}
    }
	
    public function update(LeaveRequest $request, Leave $leave)
    {
		if(Auth::user()->role->role_permission('edit_leaves')){
			$leave->update($request->all());
			return redirect('leaves')->withSuccess('Leave has been updated.');
		}else{
			abort(403);
		}
    }
	
    public function destroy(Leave $leave)
    {
		if(Auth::user()->role->role_permission('delete_leaves')){
			$leave->delete();
			return redirect('leaves')->withSuccess('Leave has been deleted.');
		}else{
			abort(403);
		}
    }
}
