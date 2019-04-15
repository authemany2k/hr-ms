<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use Carbon\Carbon;

class Candidate extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at', 'application_date'];
	
	protected $fillable = [
		'first_name',
		'last_name',
		'email',
		'contact_no',
		'job_vacancy_id',
		'resume',
		'comment',
		'application_date',
		'status',
	];
	
	public function job_vacancy()
	{
		return $this->belongsTo('App\JobVacancy');
	}
	
	public function setResumeAttribute($value)
	{
		if(empty($value)){
			$this->attributes['resume'] = '';
		}else{
			$filename = str_random(12);
			$ext = $value->getClientOriginalExtension();
			$value->move(public_path('dist/candidates/'), $filename.".".$ext);
			$this->attributes['resume'] = 'dist/candidates/'.$filename.".".$ext;
		}
	}
	
	public function getResumeLinkAttribute()
	{
		return $this->resume ? '<a href="'.asset('/candidates/'.$this->id.'/download').'" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-download"></i></a>' : '';
	}
	
	public function setApplicationDateAttribute($date){
		$this->attributes['application_date'] = Carbon::parse($date);
	}
	
	public function getApplicationDateAttribute($date){
		return Carbon::parse($date)->format('m/d/Y');
	}
}
