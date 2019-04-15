<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use Carbon\Carbon;

class Holiday extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at', 'date'];
	
	protected $fillable = [
		'occasion',
		'date'
	];
	
	public function setDateAttribute($date){
		$this->attributes['date'] = Carbon::parse($date);
	}
	
	public function getDateAttribute($date){
		return Carbon::parse($date)->format('m/d/Y');
	}
}
