<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use Carbon\Carbon;

class Event extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at', 'date_start', 'date_end'];
	
	protected $fillable = [
		'event_name',
		'description',
		'date_start',
		'date_end',
		'image',
	];
	
	public function setDateStartAttribute($date){
		$this->attributes['date_start'] = Carbon::parse($date);
	}
	
	public function getDateStartAttribute($date){
		return Carbon::parse($date)->format('m/d/Y');
	}
	
	public function setDateEndAttribute($date){
		$this->attributes['date_end'] = Carbon::parse($date);
	}
	
	public function getDateEndAttribute($date){
		return Carbon::parse($date)->format('m/d/Y');
	}
	
	public function setImageAttribute($value)
	{
		if(empty($value)){
			$this->attributes['image'] = '';
		}else{
			$ext = $value->getClientOriginalExtension();
			$filename = str_random(12).'.'.$ext;
			\Image::make($value)->resize(50, null, function ($constraint) {
				$constraint->aspectRatio();
			})->crop(50, 50)->save(public_path('dist/img/events/'.$filename));
			$this->attributes['image'] = 'dist/img/events/'.$filename;
		}
	}
	
	public function getImageAttribute($value)
	{
		return $value != NULL ? $value : 'dist/img/default-50x50.gif';
	}
}