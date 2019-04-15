<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Absence;
use App\Http\Requests\AbsenceRequest;
use App\User;
use App\LeaveType;
use Auth;

class AbsenceController extends Controller
{
		public function __construct()
		{
				$this->middleware('auth');
		}

		public function index()
		{
			if(Auth::user()->role->role_permission('view_absences')){
				if(Auth::user()->role->role_permission('view_absences')->level == 'all'){
					$absences = Absence::paginate(30);
				}elseif(Auth::user()->role->role_permission('view_absences')->level == 'team'){
					$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
					$absences = Absence::whereIn('user_id', $users)->paginate(30);
				}else{
					$absences = Absence::where('user_id', Auth::user()->id)->paginate(30);
				}
				
				return view('absences.index', compact('absences'));
			}else{
				abort(403);
			}
		}
		
		public function search(Request $request)
		{
			if(Auth::user()->role->role_permission('view_absences')){
				if(Auth::user()->role->role_permission('view_absences')->level == 'all'){
					$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->get();
					$absences = Absence::whereIn('user_id', $users->pluck('id'))->paginate(30);
				}elseif(Auth::user()->role->role_permission('view_absences')->level == 'team'){
					$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->where('department_id', Auth::user()->department_id)->pluck('id');
					$absences = Absence::whereIn('user_id', $users)->paginate(30);
				}else{
					$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->where('id', Auth::user()->id)->pluck('id');
					$absences = Absence::whereIn('user_id', $users)->paginate(30);
				}	
				return view('absences.index', compact('absences'));
			}else{
				abort(403);
			}
		}
    
    public function create(User $user)
    {
			if(Auth::user()->role->role_permission('create_absences')){
				$leave_types = [''=>''] + LeaveType::lists('leave_type', 'id')->toArray();
				return view('absences.create', compact('user', 'leave_types'));
			}else{
				abort(403);
			}
    }
	
    public function store(AbsenceRequest $request, User $user)
    {
			if(Auth::user()->role->role_permission('create_absences')){
				$absence = Absence::create($request->all());
				return redirect(isset($user->id) ? 'users/'.$user->id : 'absences')->withSuccess('Absence has been saved.');
			}else{
				abort(403);
			}
    }
	
    public function show(Absence $absence)
    {
			if(Auth::user()->role->role_permission('view_absences')){
				if(Auth::user()->role->role_permission('view_absences')->level == 'team'){
					$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
					$absence = Absence::where('id', $absence->id)->whereIn('user_id', $users)->first();
				}elseif(Auth::user()->role->role_permission('view_absences')->level == 'self'){
					$absence = Absence::where('id', $absence->id)->where('user_id', Auth::user()->id)->first();
				}
				return $absence ? $absence : abort(403);
			}else{
				abort(403);
			}
    }
	
    public function edit(Absence $absence)
    {
			if(Auth::user()->role->role_permission('edit_absences')){
				if(Auth::user()->role->role_permission('edit_absences')->level == 'team'){
					$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
					$absence = Absence::where('id', $absence->id)->whereIn('user_id', $users)->first();
				}elseif(Auth::user()->role->role_permission('edit_absences')->level == 'self'){
					$absence = Absence::where('id', $absence->id)->where('user_id', Auth::user()->id)->first();
				}
				$leave_types = [''=>''] + LeaveType::lists('leave_type', 'id')->toArray();
				return view('absences.edit', compact('absence', 'leave_types'));
			}else{
				abort(403);
			}
    }
	
    public function update(AbsenceRequest $request, Absence $absence)
    {
			if(Auth::user()->role->role_permission('edit_absences')){
				$absence->update($request->all());
				return redirect('absences')->withSuccess('Absence has been updated.');
			}else{
				abort(403);
			}
    }
	
    public function destroy(Absence $absence)
    {
			if(Auth::user()->role->role_permission('delete_absences')){
				$absence->delete();
				return redirect('absences')->withSuccess('Absence has been deleted.');
			}else{
				abort(403);
			}
    }
}
