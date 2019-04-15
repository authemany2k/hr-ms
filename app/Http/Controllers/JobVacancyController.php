<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\JobVacancy;
use App\Http\Requests\JobVacancyRequest;
use Auth;

class JobVacancyController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
	
    public function index()
    {
        if(Auth::user()->role->role_permission('view_job_vacancies')){
			$job_vacancies = JobVacancy::paginate(30);
			return view('job-vacancies.index', compact('job_vacancies'));
		}else{
			abort(403);
		}
    }
	
	public function search(Request $request)
	{
		if(Auth::user()->role->role_permission('view_job_vacancies')){
			$job_vacancies = JobVacancy::where('job_title', 'LIKE', '%'. $request->get('term') .'%')->paginate(30);
			return view('job-vacancies.index', compact('job_vacancies'));
		}else{
			abort(403);
		}
	}
    
    public function create()
    {
		if(Auth::user()->role->role_permission('create_job_vacancies')){
			return view('job-vacancies.create');
		}else{
			abort(403);
		}
    }
	
    public function store(JobVacancyRequest $request)
    {
		if(Auth::user()->role->role_permission('create_job_vacancies')){
			$job_vacancy = JobVacancy::create($request->all());
			return redirect('job-vacancies')->withSuccess($job_vacancy->job_title.' has been saved.');
		}else{
			abort(403);
		}
    }
	
    public function show(JobVacancy $job_vacancy)
    {
		if(Auth::user()->role->role_permission('view_job_vacancies')){
			return view('job-vacancies.show', compact('job_vacancy'));
		}else{
			abort(403);
		}
    }
	
    public function edit(JobVacancy $job_vacancy)
    {
		if(Auth::user()->role->role_permission('edit_job_vacancies')){
			return view('job-vacancies.edit', compact('job_vacancy'));
		}else{
			abort(403);
		}
    }
	
    public function update(JobVacancyRequest $request, JobVacancy $job_vacancy)
    {
		if(Auth::user()->role->role_permission('edit_job_vacancies')){
			$job_vacancy->update($request->all());
			return redirect('job-vacancies')->withSuccess($job_vacancy->job_title.' has been updated.');
		}else{
			abort(403);
		}
    }
	
    public function destroy(JobVacancy $job_vacancy)
    {
		if(Auth::user()->role->role_permission('delete_job_vacancies')){
			$job_vacancy->delete();
			return redirect('job-vacancies')->withSuccess($job_vacancy->job_title.' has been deleted.');
		}else{
			abort(403);
		}
    }
}
