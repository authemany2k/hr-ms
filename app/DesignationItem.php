<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DesignationItem extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at'];
	
	protected $fillable = [
		'designation_item',
		'department_id'
	];
	
	public function department()
	{
		return $this->belongsTo('App\Department');
	}
	
	public function designation()
	{
		return $this->hasMany('App\Designation');
	}
}
