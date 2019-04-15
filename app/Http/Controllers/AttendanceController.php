<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Attendance;
use App\Http\Requests\AttendanceRequest;
use App\Http\Requests\AttendanceBulkRequest;
use App\User;
use App\CutOff;
use Auth;
use Carbon\Carbon;

class AttendanceController extends Controller
{
    public function __construct()
		{
			$this->middleware('auth');
		}
		
		public function getUserAttendanceByCutOff(Request $request, User $user)
		{
			$cut_off = CutOff::findOrFail($request->get('cut_off_id'));
			$dates = [];
			for($date = Carbon::createFromFormat('m/d/Y', $cut_off->date_start); $date->lte(Carbon::createFromFormat('m/d/Y', $cut_off->date_end)); $date->addDay()) {
					$dates[] = $date->format('m/d/Y');
			}
			$attendances = Attendance::where('user_id', $user->id)->whereBetween('date', [Carbon::createFromFormat('m/d/Y', $cut_off->date_start)->format('Y-m-d'), Carbon::createFromFormat('m/d/Y', $cut_off->date_end)->format('Y-m-d')])->get();
			return compact('attendances', 'cut_off', 'dates');
		}
		
		public function index()
		{
			if(Auth::user()->role->role_permission('view_attendances')){
				if(Auth::user()->role->role_permission('view_attendances')->level == 'all'){
					$attendances = Attendance::paginate(30);
				}elseif(Auth::user()->role->role_permission('view_attendances')->level == 'team'){
					$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
					$attendances = Attendance::whereIn('user_id', $users)->paginate(30);
				}else{
					$attendances = Attendance::where('user_id', Auth::user()->id)->paginate(30);
				}
				return view('attendances.index', compact('attendances'));
			}else{
				abort(403);
			}
		}
	
		public function search(Request $request)
		{
			if(Auth::user()->role->role_permission('view_attendances')){
				if(Auth::user()->role->role_permission('view_attendances')->level == 'all'){
					$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->get();
					$attendances = Attendance::whereIn('user_id', $users->pluck('id'))->paginate(30);
				}elseif(Auth::user()->role->role_permission('view_attendances')->level == 'team'){
					$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->where('department_id', Auth::user()->department_id)->pluck('id');
					$attendances = Attendance::whereIn('user_id', $users)->paginate(30);
				}else{
					$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->where('id', Auth::user()->id)->pluck('id');
					$attendances = Attendance::whereIn('user_id', $users)->paginate(30);
				}	
				return view('attendances.index', compact('attendances'));
			}else{
				abort(403);
			}
		}

		public function create(User $user)
		{
			if(Auth::user()->role->role_permission('create_attendances')){
				return view('attendances.create', compact('user'));
			}else{
				abort(403);
			}
		}
		
		public function createBulk(User $user)
		{
			if(Auth::user()->role->role_permission('create_attendances')){
				$cut_offs = [''=>''] + CutOff::all()->lists('cut_off', 'id')->toArray();
				return view('attendances.create-bulk', compact('user', 'cut_offs'));
			}else{
				abort(403);
			}
		}
		
		public function createByCutOffRedirect(User $user, Request $request)
		{
			return redirect('users/'.$user->id.'/attendances/create/cut-off/'.$request->get('cut_off_id'));
		}
		
		public function createByCutOff(User $user, CutOff $cut_off)
		{
			if(Auth::user()->role->role_permission('create_attendances')){
				$dates = [];
				for($date = Carbon::createFromFormat('m/d/Y', $cut_off->date_start); $date->lte(Carbon::createFromFormat('m/d/Y', $cut_off->date_end)); $date->addDay()) {
						$dates[] = $date->format('m/d/Y');
				}
				$attendances = Attendance::where('user_id', $user->id)->whereBetween('date', [Carbon::createFromFormat('m/d/Y', $cut_off->date_start)->format('Y-m-d'), Carbon::createFromFormat('m/d/Y', $cut_off->date_end)->format('Y-m-d')])->get();
				return view('attendances.create-by-cut-off', compact('user', 'cut_off', 'dates', 'attendances'));
			}else{
				abort(403);
			}
		}

		public function store(AttendanceRequest $request, User $user)
		{
			if(Auth::user()->role->role_permission('create_attendances')){
				$exists = Attendance::where('user_id', $request->get('user_id'))->whereDate('date', '=', Carbon::createFromFormat('m/d/Y', $request->get('date'))->format('Y-m-d'))->first();
				if($exists){
					return redirect()->back()->withErrors(['date' => 'The date has already been taken.'])->withInput($request->all());
				}
				$attendance = Attendance::create($request->all());
				return redirect(isset($user->id) ? 'users/'.$user->id : 'attendances')->withSuccess('Attendance has been saved.');
			}else{
				abort(403);
			}
		}
		
		public function storeBulk(AttendanceBulkRequest $request, User $user)
		{
			if(Auth::user()->role->role_permission('create_attendances')){
				$cut_off = CutOff::findOrFail($request->get('cut_off_id'));
				for($date = Carbon::createFromFormat('m/d/Y', $cut_off->date_start); $date->lte(Carbon::createFromFormat('m/d/Y', $cut_off->date_end)); $date->addDay()) {
						$exists = Attendance::where('user_id', $user->id)->whereDate('date', '=', Carbon::createFromFormat('m/d/Y', $date->format('m/d/Y'))->format('Y-m-d'))->first();
						if($request->get('time_in_'.$date->format('m/d/Y')) || $request->get('time_out_'.$date->format('m/d/Y'))){
							if($exists){
								$exists->update([
									'time_in' => $request->get('time_in_'.$date->format('m/d/Y')),
									'time_out' => $request->get('time_out_'.$date->format('m/d/Y')),
								]);
							}else{
								$attendance = Attendance::create([
									'user_id' => $user->id,
									'date' => $date,
									'time_in' => $request->get('time_in_'.$date->format('m/d/Y')),
									'time_out' => $request->get('time_out_'.$date->format('m/d/Y')),
								]);
							}
						}
				}
				return redirect(isset($user->id) ? 'users/'.$user->id : 'attendances')->withSuccess('Attendance has been saved.');
			}else{
				abort(403);
			}
		}

		public function show(Attendance $attendance)
		{
			if(Auth::user()->role->role_permission('view_attendances')){
				if(Auth::user()->role->role_permission('view_attendances')->level == 'team'){
					$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
					$attendance = Attendance::where('id', $attendance->id)->whereIn('user_id', $users)->first();
				}elseif(Auth::user()->role->role_permission('view_attendances')->level == 'self'){
					$attendance = Attendance::where('id', $attendance->id)->where('user_id', Auth::user()->id)->first();
				}
				return $attendance ? $attendance : abort(403);
			}else{
				abort(403);
			}
		}

		public function edit(Attendance $attendance)
		{
			if(Auth::user()->role->role_permission('edit_attendances')){
				if(Auth::user()->role->role_permission('edit_attendances')->level == 'team'){
					$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
					$attendance = Attendance::where('id', $attendance->id)->whereIn('user_id', $users)->first();
				}elseif(Auth::user()->role->role_permission('edit_attendances')->level == 'self'){
					$attendance = Attendance::where('id', $attendance->id)->where('user_id', Auth::user()->id)->first();
				}
				return view('attendances.edit', compact('attendance'));
			}else{
				abort(403);
			}
		}

		public function update(AttendanceRequest $request, Attendance $attendance)
		{
			if(Auth::user()->role->role_permission('edit_attendances')){
				$exists = Attendance::where('id', '!=', $request->get('id'))->where('user_id', $request->get('user_id'))->whereDate('date', '=', Carbon::createFromFormat('m/d/Y', $request->get('date'))->format('Y-m-d 00:00:00'))->first();
				if($exists){
					return redirect()->back()->withErrors(['date' => 'The date has already been taken.'])->withInput($request->all());
				}
				$attendance->update($request->all());
				return redirect('attendances')->withSuccess('Attendance has been updated.');
			}else{
				abort(403);
			}
		}

		public function destroy(Attendance $attendance)
		{
			if(Auth::user()->role->role_permission('delete_attendances')){
				$attendance->delete();
				return redirect('attendances')->withSuccess('Attendance has been deleted.');
			}else{
				abort(403);
			}
		}
}
