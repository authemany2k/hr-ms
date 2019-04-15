<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use Carbon\Carbon;

class Leave extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at', 'date_from', 'date_to', 'applied_on'];
	
	protected $fillable = [
		'user_id',
		'leave_type_id',
		'date_from',
		'date_to',
		'applied_on',
		'reason',
		'comment',
		'status'
	];
	
	public function user()
	{
		return $this->belongsTo('App\User');
	}
	
	public function leave_type()
	{
		return $this->belongsTo('App\LeaveType');
	}
	
	public function setDateFromAttribute($date){
		$this->attributes['date_from'] = Carbon::parse($date);
	}
	
	public function getDateFromAttribute($date){
		return Carbon::parse($date)->format('m/d/Y');
	}
	
	public function setDateToAttribute($date){
		$this->attributes['date_to'] = Carbon::parse($date);
	}
	
	public function getDateToAttribute($date){
		return Carbon::parse($date)->format('m/d/Y');
	}
	
	public function setAppliedOnAttribute($date){
		$this->attributes['applied_on'] = Carbon::parse($date);
	}
	
	public function getAppliedOnAttribute($date){
		return Carbon::parse($date)->format('m/d/Y');
	}
	
	public function getStatusAttribute($status){
		return $status == 0 ? 'pending' : ($status == 1 ? 'approved' : 'rejected');
	}
}
