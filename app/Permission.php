<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Permission extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at'];
	
	protected $fillable = [
		'permission',
		'label',
		'level',
	];
	
	public function role_permissions()
	{
		return $this->hasMany('App\RolePermission');
	}
	
	public function role_permission($role)
	{
		return $this->hasMany('App\RolePermission')->where('role_id', $role->id)->first();
	}
}
