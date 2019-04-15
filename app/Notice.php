<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use Carbon\Carbon;

class Notice extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at'];
	
	protected $fillable = [
		'published',
		'title',
		'description',
		'image',
	];
	
	public function getCreatedAtAttribute($date){
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
			})->crop(50, 50)->save(public_path('dist/img/notices/'.$filename));
			$this->attributes['image'] = 'dist/img/notices/'.$filename;
		}
	}
	
	public function getImageAttribute($value)
	{
		return $value != NULL ? $value : 'dist/img/default-50x50.gif';
	}
}
