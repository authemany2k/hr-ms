<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class LeaveType extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at'];
	
	protected $fillable = [
		'leave_type'
	];
	
	public function leaves()
	{
		return $this->hasMany('App\Leave');
	}
	
	public function absences()
	{
		return $this->hasMany('App\Absence');
	}
}
