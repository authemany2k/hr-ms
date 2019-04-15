<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use Carbon\Carbon;

class CutOff extends Model
{
    use SoftDeletes;
	
		protected $dates = ['deleted_at', 'date'];
		
		protected $fillable = [
			'date_start',
			'date_end',
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
		
		public function getCutOffAttribute(){
			return $this->date_start." - ".$this->date_end;
		}
}
