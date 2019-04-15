<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RolePermission extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at'];
	
	protected $fillable = [
		'permission_id',
		'role_id',
		'level',
	];
	
	public function permission()
	{
		return $this->belongsTo('App\Permission');
	}
	
	public function role()
	{
		return $this->belongsTo('App\Role');
	}
}
