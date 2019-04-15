<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class JobVacancy extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at'];
	
	protected $fillable = [
		'job_title',
		'user_id',
		'status',
		'details',
		'type',
	];
	
	public function user()
	{
		return $this->belongsTo('App\User');
	}
	
	public function getStatusTextAttribute()
	{
		return $this->status == '1' ? 'Open' : 'Closed';
	}
}
