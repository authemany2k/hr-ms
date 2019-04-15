<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;

use App\Notice;
use App\Event;
use Carbon\Carbon;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
		$notices = Notice::where('published', 1)->orderBy('created_at', 'desc')->take(5)->get();
		$events = Event::where('date_start', '>', Carbon::now())->orderBy('date_start')->take(5)->get();
        return view('home', compact('notices', 'events'));
    }
}
