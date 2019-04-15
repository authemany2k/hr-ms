<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Department;
use App\Http\Requests\DepartmentRequest;
use App\DesignationItem;
use Auth;

class DepartmentController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
	
    public function index()
    {
        if(Auth::user()->role->role_permission('view_departments')){
			$departments = Department::paginate(30);
			return view('departments.index', compact('departments'));
		}else{
			abort(403);
		}
    }
	
	public function search(Request $request)
	{
		if(Auth::user()->role->role_permission('view_departments')){
			$departments = Department::where('department', 'LIKE', '%'. $request->get('term') .'%')->paginate(30);
			return view('departments.index', compact('departments'));
		}else{
			abort(403);
		}
	}
    
    public function create()
    {
		if(Auth::user()->role->role_permission('create_departments')){
			return view('departments.create');
		}else{
			abort(403);
		}
    }
	
    public function store(DepartmentRequest $request)
    {
		if(Auth::user()->role->role_permission('create_departments')){
			$department = Department::create($request->all());
			return redirect('departments')->withSuccess($department->department.' has been saved.');
		}else{
			abort(403);
		}
    }
	
    public function show(Department $department)
    {
		if(Auth::user()->role->role_permission('view_departments')){
			//$designation_items = DesignationItem::where('department_id', $department->id)->paginate(30);
			return view('departments.show', compact('department'));
		}else{
			abort(403);
		}
    }
	
    public function edit(Department $department)
    {
		if(Auth::user()->role->role_permission('edit_departments')){
			return view('departments.edit', compact('department'));
		}else{
			abort(403);
		}
    }
	
    public function update(DepartmentRequest $request, Department $department)
    {
		if(Auth::user()->role->role_permission('edit_departments')){
			$department->update($request->all());
			return redirect('departments')->withSuccess($department->department.' has been updated.');
		}else{
			abort(403);
		}
    }
	
    public function destroy(Department $department)
    {
		if(Auth::user()->role->role_permission('delete_departments')){
			$department->delete();
			return redirect('departments')->withSuccess($department->department.' has been deleted.');
		}else{
			abort(403);
		}
    }
}
