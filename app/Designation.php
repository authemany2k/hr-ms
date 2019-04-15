<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use Carbon\Carbon;

class Designation extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at', 'date_start', 'date_end'];
	
	protected $fillable = [
		'user_id',
		'designation_item_id',
		'date_start',
		'date_end'
	];
	
	public function user()
	{
		return $this->belongsTo('App\User');
	}
	
	public function designation_item()
	{
		return $this->belongsTo('App\DesignationItem');
	}
	
	public function setDateStartAttribute($date){
		$this->attributes['date_start'] = Carbon::parse($date);
	}
	
	public function getDateStartAttribute($date){
		return Carbon::parse($date)->format('m/d/Y');
	}
	
	public function setDateEndAttribute($date){
		$this->attributes['date_end'] = $date != '' ? Carbon::parse($date) : NULL;
	}
	
	public function getDateEndAttribute($date){
		return $date != NULL ? Carbon::parse($date)->format('m/d/Y') : 'present';
	}
}
