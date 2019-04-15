<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DocumentType extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at'];
	
	protected $fillable = [
		'document_type'
	];
	
	public function documents()
	{
		return $this->hasMany('App\Document');
	}
}
