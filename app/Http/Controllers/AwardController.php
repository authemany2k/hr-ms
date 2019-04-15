<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Award;
use App\Http\Requests\AwardRequest;
use App\User;
use Auth;

class AwardController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
	
    public function index()
    {
		if(Auth::user()->role->role_permission('view_awards')){
			if(Auth::user()->role->role_permission('view_awards')->level == 'all'){
				$awards = Award::paginate(30);
			}elseif(Auth::user()->role->role_permission('view_awards')->level == 'team'){
				$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
				$awards = Award::whereIn('user_id', $users)->paginate(30);
			}else{
				$awards = Award::where('user_id', Auth::user()->id)->paginate(30);
			}
			return view('awards.index', compact('awards'));
		}else{
			abort(403);
		}
    }
	
	public function search(Request $request)
	{
		if(Auth::user()->role->role_permission('view_awards')){
			if(Auth::user()->role->role_permission('view_awards')->level == 'all'){
				$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->pluck('id');
				$awards = Award::whereIn('user_id', $users)->paginate(30);
			}elseif(Auth::user()->role->role_permission('view_awards')->level == 'team'){
				$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->where('department_id', Auth::user()->department_id)->pluck('id');
				$awards = Award::whereIn('user_id', $users)->paginate(30);
			}else{
				$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->where('id', Auth::user()->id)->pluck('id');
				$awards = Award::whereIn('user_id', $users)->paginate(30);
			}
			return view('awards.index', compact('awards'));
		}else{
			abort(403);
		}
	}
    
    public function create(User $user)
    {
		if(Auth::user()->role->role_permission('create_awards')){
			return view('awards.create', compact('user'));
		}else{
			abort(403);
		}
    }
	
    public function store(AwardRequest $request, User $user)
    {
        if(Auth::user()->role->role_permission('create_awards')){
			$award = Award::create($request->all());
			return redirect(isset($user->id) ? 'users/'.$user->id : 'awards')->withSuccess($award->award_name.' has been saved.');
		}else{
			abort(403);
		}
    }
	
    public function show(Award $award)
    {
		if(Auth::user()->role->role_permission('view_awards')){
			if(Auth::user()->role->role_permission('view_awards')->level == 'team'){
				$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
				$award = Award::where('id', $award->id)->whereIn('user_id', $users)->first();
			}elseif(Auth::user()->role->role_permission('view_awards')->level == 'self'){
				$award = Award::where('id', $award->id)->where('user_id', Auth::user()->id)->first();
			}
			return $award ? $award : abort(403);
		}else{
			abort(403);
		}
    }
	
    public function edit(Award $award)
    {
		if(Auth::user()->role->role_permission('edit_awards')){
			if(Auth::user()->role->role_permission('edit_awards')->level == 'team'){
				$users = User::where('department_id', Auth::user()->department_id)->pluck('id');
				$award = Award::where('id', $award->id)->whereIn('user_id', $users)->first();
			}elseif(Auth::user()->role->role_permission('edit_awards')->level == 'self'){
				$award = Award::where('id', $award->id)->where('user_id', Auth::user()->id)->first();
			}
			return $award ? view('awards.edit', compact('award')) : abort(403);
		}else{
			abort(403);
		}
    }
	
    public function update(AwardRequest $request, Award $award)
    {
		if(Auth::user()->role->role_permission('edit_awards')){
			$award->update($request->all());
			return redirect('awards')->withSuccess($award->award_name.' has been updated.');
		}else{
			abort(403);
		}
    }
	
    public function destroy(Award $award)
    {
		if(Auth::user()->role->role_permission('delete_awards')){
			$award->delete();
			return redirect('awards')->withSuccess($award->award_name.' has been deleted.');
		}else{
			abort(403);
		}
    }
}
