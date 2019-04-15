<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\CutOff;
use App\Http\Requests\CutOffRequest;
use Auth;

class CutOffController extends Controller
{
    public function __construct()
    {
			$this->middleware('auth');
    }
	
    public function index()
    {
			if(Auth::user()->role->role_permission('view_cut_offs')){
				$cut_offs = CutOff::orderBy('date_start', 'desc')->paginate(30);
				return view('cut-offs.index', compact('cut_offs'));
			}else{
				abort(403);
			}
    }
	
		public function search(Request $request)
		{
			if(Auth::user()->role->role_permission('view_cut_offs')){
				$cut_offs = CutOff::whereDate('date_start', '=', $request->get('term'))->orWhereDate('date_end', '=', $request->get('term'))->paginate(30);
				return view('cut-offs.index', compact('cut_offs'));
			}else{
				abort(403);
			}
		}
    
    public function create()
    {
			if(Auth::user()->role->role_permission('create_cut_offs')){
				return view('cut-offs.create');
			}else{
				abort(403);
			}
    }
	
    public function store(CutOffRequest $request)
		{
			if(Auth::user()->role->role_permission('create_cut_offs')){
				$cut_off = CutOff::create($request->all());
				return redirect('cut-offs')->withSuccess('Cut off period has been saved.');
			}else{
				abort(403);
			}
    }
	
    public function show(CutOff $cut_off)
    {
			if(Auth::user()->role->role_permission('view_cut_offs')){
				return view('cut-offs.show', compact('cut_off'));
			}else{
				abort(403);
			}
    }
	
    public function edit(CutOff $cut_off)
    {
			if(Auth::user()->role->role_permission('edit_cut_offs')){
				return view('cut-offs.edit', compact('cut_off'));
			}else{
				abort(403);
			}
    }
	
    public function update(CutOffRequest $request, CutOff $cut_off)
    {
			if(Auth::user()->role->role_permission('edit_cut_offs')){
				$cut_off->update($request->all());
				return redirect('cut-offs')->withSuccess('Cut off period has been updated.');
			}else{
				abort(403);
			}
    }
	
    public function destroy(CutOff $cut_off)
    {
			if(Auth::user()->role->role_permission('delete_cut_offs')){
				$cut_off->delete();
				return redirect('cut-offs')->withSuccess('Cut off period has been deleted.');
			}else{
				abort(403);
			}
    }
}
