<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Document extends Model
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at'];
	
	protected $fillable = [
		'user_id',
		'document_type_id',
		'document'
	];
	
	public function user()
	{
		return $this->belongsTo('App\User');
	}
	
	public function document_type()
	{
		return $this->belongsTo('App\DocumentType');
	}
	
	public function setDocumentAttribute($value)
	{
		if(empty($value)){
			$this->attributes['document'] = '';
		}else{
			$filename = str_random(12);
			$ext = $value->getClientOriginalExtension();
			$value->move(public_path('dist/documents/'), $filename.".".$ext);
			$this->attributes['document'] = 'dist/documents/'.$filename.".".$ext;
		}
	}
}
