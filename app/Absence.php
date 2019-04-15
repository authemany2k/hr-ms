<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use Carbon\Carbon;

class Absence extends Model
{
	use SoftDeletes;
	
	protected $dates = ['deleted_at', 'date'];
	
	protected $fillable = [
		'user_id',
		'leave_type_id',
		'reason',
		'date'
	];
	
	public function user()
	{
		return $this->belongsTo('App\User');
	}
	
	public function leave_type()
	{
		return $this->belongsTo('App\LeaveType');
	}
	
	public function setDateAttribute($date){
		$this->attributes['date'] = Carbon::parse($date);
	}
	
	public function getDateAttribute($date){
		return Carbon::parse($date)->format('m/d/Y');
	}
}
