<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\DesignationItem;
use App\Http\Requests\DesignationItemRequest;
use App\Department;
use Auth;

class DesignationItemController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
	
    public function index()
    {
		if(Auth::user()->role->role_permission('view_designation_items')){
			$designation_items = DesignationItem::paginate(30);
			return view('designation-items.index', compact('designation_items'));
		}else{
			abort(403);
		}
    }
	
	public function search(Request $request)
	{
		if(Auth::user()->role->role_permission('view_designation_items')){
			$designation_items = DesignationItem::where('designation_item', 'LIKE', '%'. $request->get('term') .'%')->paginate(30);
			return view('designation-items.index', compact('designation_items'));
		}else{
			abort(403);
		}
	}
    
    public function create(Department $department)
    {
		if(Auth::user()->role->role_permission('create_designation_items')){
			$departments = [''=>''] + Department::lists('department', 'id')->toArray();
			return view('designation-items.create', compact('department', 'departments'));
		}else{
			abort(403);
		}
    }
	
    public function store(DesignationItemRequest $request, Department $department)
    {
		if(Auth::user()->role->role_permission('create_designation_items')){
			$designation_item = DesignationItem::create($request->all());
			return redirect(isset($department->id) ? 'departments/'.$department->id : 'designation-items')->withSuccess($designation_item->designation_item.' has been saved.');
		}else{
			abort(403);
		}
    }
	
    public function show(DesignationItem $designation_item)
    {
		if(Auth::user()->role->role_permission('view_designation_items')){
			return $designation_item;
		}else{
			abort(403);
		}
    }
	
    public function edit(Department $department, DesignationItem $designation_item)
    {
		if(Auth::user()->role->role_permission('edit_designation_items')){
			$departments = [''=>''] + Department::lists('department', 'id')->toArray();
			return view('designation-items.edit', compact('designation_item', 'departments', 'department'));
		}else{
			abort(403);
		}
    }
	
    public function update(DesignationItemRequest $request, Department $department, DesignationItem $designation_item)
    {
		if(Auth::user()->role->role_permission('edit_designation_items')){
			$designation_item->update($request->all());
			return redirect(isset($department->id) ? 'departments/'.$department->id : 'designation-items')->withSuccess($designation_item->designation_item.' has been updated.');
		}else{
			abort(403);
		}
    }
	
    public function destroy(Department $department, DesignationItem $designation_item)
    {
		if(Auth::user()->role->role_permission('delete_designation_items')){
			$designation_item->delete();
			return redirect(isset($department->id) ? 'departments/'.$department->id : 'designation-items')->withSuccess($designation_item->designation_item.' has been deleted.');
		}else{
			abort(403);
		}
    }
}
