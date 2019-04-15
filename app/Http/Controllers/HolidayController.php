<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Holiday;
use App\Http\Requests\HolidayRequest;
use Auth;

class HolidayController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
	
    public function index()
    {
		if(Auth::user()->role->role_permission('view_holidays')){
			$holidays = Holiday::paginate(30);
			return view('holidays.index', compact('holidays'));
		}else{
			abort(403);
		}
    }
	
	public function search(Request $request)
	{
		if(Auth::user()->role->role_permission('view_holidays')){
			$holidays = Holiday::where('occasion', 'LIKE', '%'. $request->get('term') .'%')->paginate(30);
			return view('holidays.index', compact('holidays'));
		}else{
			abort(403);
		}
	}
    
    public function create()
    {
		if(Auth::user()->role->role_permission('create_holidays')){
			return view('holidays.create');
		}else{
			abort(403);
		}
    }
	
    public function store(HolidayRequest $request)
    {
		if(Auth::user()->role->role_permission('create_holidays')){
			$holiday = Holiday::create($request->all());
			return redirect('holidays')->withSuccess($holiday->occasion.' has been saved.');
		}else{
			abort(403);
		}
    }
	
    public function show(Holiday $holiday)
    {
		if(Auth::user()->role->role_permission('view_holidays')){
			return $holiday;
		}else{
			abort(403);
		}
    }
	
    public function edit(Holiday $holiday)
    {
		if(Auth::user()->role->role_permission('edit_holidays')){
			return view('holidays.edit', compact('holiday'));
		}else{
			abort(403);
		}
    }
	
    public function update(HolidayRequest $request, Holiday $holiday)
    {
		if(Auth::user()->role->role_permission('edit_holidays')){
			$holiday->update($request->all());
			return redirect('holidays')->withSuccess($holiday->occasion.' has been updated.');
		}else{
			abort(403);
		}
    }
	
    public function destroy(Holiday $holiday)
    {
		if(Auth::user()->role->role_permission('delete_holidays')){
			$holiday->delete();
			return redirect('holidays')->withSuccess($holiday->occasion.' has been deleted.');
		}else{
			abort(403);
		}
    }
}
