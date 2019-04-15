<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use Carbon\Carbon;

class Attendance extends Model
{
	use SoftDeletes;
	
	protected $dates = ['deleted_at', 'date'];
	
	protected $fillable = [
		'user_id',
		'date',
		'time_in',
		'time_out',
	];
	
	public function user()
	{
		return $this->belongsTo('App\User');
	}
	
	public function setDateAttribute($date){
		$this->attributes['date'] = Carbon::parse($date);
	}
	
	public function getDateAttribute($date){
		return Carbon::parse($date)->format('m/d/Y');
	}
	
	public function setTimeInAttribute($time_in){
		$this->attributes['time_in'] = Carbon::parse($time_in);
	}
	
	public function getTimeInAttribute($time_in){
		return Carbon::parse($time_in)->format('h:i A');
	}
	
	public function setTimeOutAttribute($time_out){
		$this->attributes['time_out'] = Carbon::parse($time_out);
	}
	
	public function getTimeOutAttribute($time_out){
		return Carbon::parse($time_out)->format('h:i A');
	}
}
