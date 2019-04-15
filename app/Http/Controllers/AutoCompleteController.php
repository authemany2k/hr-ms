<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\User;
use App\LeaveType;
use App\Department;
use App\DesignationItem;
use App\DocumentType;
use App\Role;
use Auth;

class AutoCompleteController extends Controller
{
	public function users(Request $request){
		$results = array();
		$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->take(5)->get();
		foreach($users as $user)
		{
			$results[] = [ 'id' => $user->id, 'value' => $user->first_name.' '.$user->last_name];
		}
		return response()->json($results);
	}
	
	public function leave_types(Request $request){
		$term =  $request->get('term');
		$results = array();
		$leave_types = LeaveType::where('leave_type', 'LIKE', '%'.$term.'%')->take(5)->get();
		foreach($leave_types as $leave_type)
		{
			$results[] = [ 'id' => $leave_type->id, 'value' => $leave_type->leave_type];
		}
		return response()->json($results);
	}
	
	public function departments(Request $request){
		$term =  $request->get('term');
		$results = array();
		$departments = Department::where('department', 'LIKE', '%'.$term.'%')->take(5)->get();
		foreach($departments as $department)
		{
			$results[] = [ 'id' => $department->id, 'value' => $department->department];
		}
		return response()->json($results);
	}
	
	public function designation_items(Request $request){
		$term =  $request->get('term');
		$results = array();
		$designation_items = DesignationItem::where('designation_item', 'LIKE', '%'.$term.'%')->take(5)->get();
		foreach($designation_items as $designation_item)
		{
			$results[] = [ 'id' => $designation_item->id, 'value' => $designation_item->designation_item];
		}
		return response()->json($results);
	}
	
	public function document_types(Request $request){
		$term =  $request->get('term');
		$results = array();
		$document_types = DocumentType::where('document_type', 'LIKE', '%'.$term.'%')->take(5)->get();
		foreach($document_types as $document_type)
		{
			$results[] = [ 'id' => $document_type->id, 'value' => $document_type->document_type];
		}
		return response()->json($results);
	}
	
	public function roles(Request $request){
		$term =  $request->get('term');
		$results = array();
		$roles = Role::where('role', 'LIKE', '%'.$term.'%')->take(5)->get();
		foreach($roles as $role)
		{
			$results[] = [ 'id' => $role->id, 'value' => $role->role];
		}
		return response()->json($results);
	}
}
