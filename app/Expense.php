<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use Carbon\Carbon;

class Expense extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at', 'purchase_date'];
	
	protected $fillable = [
		'user_id',
		'item_name',
		'purchase_from',
		'purchase_date',
		'amount',
		'attachment'
	];
	
	public function user()
	{
		return $this->belongsTo('App\User');
	}
	
	public function setPurchaseDateAttribute($date){
		$this->attributes['purchase_date'] = Carbon::parse($date);
	}
	
	public function getPurchaseDateAttribute($date){
		return Carbon::parse($date)->format('m/d/Y');
	}
}
