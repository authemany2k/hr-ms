<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Department extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at'];
	
	protected $fillable = [
		'department',
		'department_id'
	];
	
	public function users()
	{
		return $this->hasMany('App\User');
	}
	
	public function department()
	{
		return $this->belongsTo('App\Department');
	}
	
	public function designation_items()
	{
		return $this->hasMany('App\DesignationItem');
	}
}
