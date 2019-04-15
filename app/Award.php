<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Award extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at'];
	
	protected $fillable = [
		'user_id',
		'award_name',
		'gift_item',
		'cash_price'
	];
	
	public function user()
	{
		return $this->belongsTo('App\User');
	}
}
