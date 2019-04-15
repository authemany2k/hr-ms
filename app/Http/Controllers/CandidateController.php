<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Candidate;
use App\Http\Requests\CandidateRequest;
use App\JobVacancy;
use Auth;

class CandidateController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
	
    public function index()
    {
        if(Auth::user()->role->role_permission('view_candidates')){
			$candidates = Candidate::paginate(30);
			return view('candidates.index', compact('candidates'));
		}else{
			abort(403);
		}
    }
	
	public function search(Request $request)
	{
		if(Auth::user()->role->role_permission('view_candidates')){
			$candidates = Candidate::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->orWhere('status', 'LIKE', '%'. $request->get('term') .'%')->orWhere('comment', 'LIKE', '%'. $request->get('term') .'%')->paginate(30);
			return view('candidates.index', compact('candidates'));
		}else{
			abort(403);
		}
	}
    
    public function create()
    {
		if(Auth::user()->role->role_permission('create_candidates')){
			$job_vacancies = [''=>''] + JobVacancy::where('status', 1)->lists('job_title', 'id')->toArray();
			return view('candidates.create', compact('job_vacancies'));
		}else{
			abort(403);
		}
    }
	
    public function store(CandidateRequest $request)
    {
		if(Auth::user()->role->role_permission('create_candidates')){
			$candidate = Candidate::create($request->all());
			return redirect('candidates')->withSuccess($candidate->first_name.' '.$candidate->last_name.' has been saved.');
		}else{
			abort(403);
		}
    }
	
    public function download(Candidate $candidate)
    {
		if(Auth::user()->role->role_permission('view_candidates')){
			return $candidate ? response()->download(public_path($candidate->resume)) : abort(403);
		}else{
			abort(403);
		}
    }
	
	public function show(Candidate $candidate)
    {
		if(Auth::user()->role->role_permission('view_candidates')){
			return view('candidates.show', compact('candidate'));
		}else{
			abort(403);
		}
    }
	
    public function edit(Candidate $candidate)
    {
		if(Auth::user()->role->role_permission('edit_candidates')){
			$job_vacancies = [''=>''] + JobVacancy::lists('job_title', 'id')->toArray();
			return view('candidates.edit', compact('candidate', 'job_vacancies'));
		}else{
			abort(403);
		}
    }
	
    public function update(CandidateRequest $request, Candidate $candidate)
    {
		if(Auth::user()->role->role_permission('edit_candidates')){
			$candidate->update($request->all());
			return redirect('candidates')->withSuccess($candidate->first_name.' '.$candidate->last_name.' has been updated.');
		}else{
			abort(403);
		}
    }
	
    public function destroy(Candidate $candidate)
    {
		if(Auth::user()->role->role_permission('delete_candidates')){
			$candidate->delete();
			return redirect('candidates')->withSuccess($candidate->first_name.' '.$candidate->last_name.' has been deleted.');
		}else{
			abort(403);
		}
    }
}
