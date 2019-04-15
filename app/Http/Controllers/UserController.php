<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\User;
use App\Http\Requests\UserRequest;

use Event;
use App\Events\RegisterUserEvent;
use App\Department;
use App\DesignationItem;
use App\Role;
use App\CutOff;
use Auth;

class UserController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
	
	public function user()
    {
		$user = User::findOrFail(1);
		Event::fire(new RegisterUserEvent($user));
    }
	
    public function index()
    {
		if(Auth::user()->role->role_permission('view_users')){
			if(Auth::user()->role->role_permission('view_users')->level == 'all'){
				$users = User::paginate(30);
			}elseif(Auth::user()->role->role_permission('view_users')->level == 'team'){
				$users = User::where('department_id', Auth::user()->department_id)->paginate(30);
			}else{
				$users = User::where('id', Auth::user()->id)->paginate(30);
			}
			return view('users.index', compact('users'));
		}else{
			abort(403);
		}
    }
	
	public function search(Request $request)
	{
		if(Auth::user()->role->role_permission('view_users')){
			if(Auth::user()->role->role_permission('view_users')->level == 'all'){
				$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->paginate(50);
			}elseif(Auth::user()->role->role_permission('view_users')->level == 'team'){
				$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->where('department_id', Auth::user()->department_id)->paginate(50);
			}else{
				$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->where('id', Auth::user()->id)->paginate(30);
			}
			return view('users.index', compact('users'));
		}else{
			abort(403);
		}
	}
    
    public function create()
    {
		if(Auth::user()->role->role_permission('create_users')){
			$departments = [''=>''] + Department::lists('department', 'id')->toArray();
			$designation_items = [''=>''] + DesignationItem::lists('designation_item', 'id')->toArray();
			$roles = [''=>''] + Role::lists('role', 'id')->toArray();
			return view('users.create', compact('departments', 'designation_items', 'roles'));
		}else{
			abort(403);
		}
    }
	
    public function store(UserRequest $request)
    {
		if(Auth::user()->role->role_permission('create_users')){
			$user = User::create($request->all());
			return redirect('users')->withSuccess($user->first_name.' '.$user->last_name.' has been saved.');
		}else{
			abort(403);
		}
    }
	
    public function show(User $user)
    {
		if(Auth::user()->role->role_permission('view_users')){
			if(Auth::user()->role->role_permission('view_users')->level == 'team'){
				$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
				$user = User::where('id', $user->id)->whereIn('id', $users)->first();
			}elseif(Auth::user()->role->role_permission('view_users')->level == 'self'){
				$user = User::where('id', Auth::user()->id)->first();
			}
			$cut_offs = [''=>''] + CutOff::all()->lists('cut_off', 'id')->toArray();
			return view('users.show', compact('user', 'cut_offs'));
		}else{
			abort(403);
		}
    }
	
    public function edit(User $user)
    {
		if(Auth::user()->role->role_permission('edit_users')){
			if(Auth::user()->role->role_permission('edit_users')->level == 'team'){
				$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
				$user = User::where('id', $user->id)->whereIn('user_id', $users)->first();
			}elseif(Auth::user()->role->role_permission('edit_users')->level == 'self'){
				$user = User::where('id', Auth::user()->id)->first();
			}
			$departments = [''=>''] + Department::lists('department', 'id')->toArray();
			$designation_items = [''=>''] + DesignationItem::lists('designation_item', 'id')->toArray();
			$roles = [''=>''] + Role::lists('role', 'id')->toArray();
			return view('users.edit', compact('user', 'departments', 'designation_items', 'roles'));
		}else{
			abort(403);
		}
    }
	
    public function update(UserRequest $request, User $user)
    {
		if(Auth::user()->role->role_permission('edit_users')){
			$user->update($request->all());
			return redirect('users/'.$user->id)->withSuccess($user->first_name.' '.$user->last_name.' has been updated.');
		}else{
			abort(403);
		}
    }
	
    public function destroy(User $user)
    {
		if(Auth::user()->role->role_permission('delete_users')){
			$user->delete();
			return redirect('users')->withSuccess($user->first_name.' '.$user->last_name.' has been deleted.');
		}else{
			abort(403);
		}
    }
}
