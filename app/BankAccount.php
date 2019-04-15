<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BankAccount extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at'];
	
	protected $fillable = [
		'user_id',
		'account_name',
		'account_number',
		'bank_name'
	];
	
	public function user()
	{
		return $this->belongsTo('App\User');
	}
}
