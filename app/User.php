<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;

use Carbon\Carbon;
use Hash;

class User extends Authenticatable
{
    use SoftDeletes;
	
	protected $dates = ['deleted_at', 'birthday', 'date_hired', 'exit_date'];
	
	protected $image_fields = ['profile_picture'];
	
	/**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
		'first_name',
		'last_name',
		'birthday',
		'gender',
		'email',
		'telephone',
		'cellphone',
		'local_address',
		'permanent_address',
		'employee_id',
		'department_id',
		'designation_item_id',
		'date_hired',
		'exit_date',
		'salary',
		'role_id',
		'username',
		'password',
		'profile_picture'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

	
	public function bank_account()
	{
		return $this->hasOne(BankAccount::class);
	}
	
	public function awards()
	{
		return $this->hasMany(Award::class);
	}
	
	public function department()
	{
		return $this->belongsTo(Department::class);
	}
	
	public function designation_item()
	{
		return $this->belongsTo('App\DesignationItem');
	}
	
	public function absences()
	{
		return $this->hasMany('App\Absence');
	}
	
	public function leaves()
	{
		return $this->hasMany('App\Leave');
	}
	
	public function expenses()
	{
		return $this->hasMany('App\Expense');
	}
	
	public function documents()
	{
		return $this->hasMany('App\Document');
	}
	
	public function role()
	{
		return $this->belongsTo('App\Role');
	}
	
	public function gender_text()
	{
		return $this->gender == 'M' ? 'Male' : 'Female';
	}
	
	public function setBirthdayAttribute($birthday){
		$this->attributes['birthday'] = Carbon::parse($birthday);
	}
	
	public function getBirthdayAttribute($birthday){
		return Carbon::parse($birthday)->format('m/d/Y');
	}
	
	public function setDateHiredAttribute($date_hired){
		$this->attributes['date_hired'] = Carbon::parse($date_hired);
	}
	
	public function getDateHiredAttribute($date_hired){
		return $date_hired ? Carbon::parse($date_hired)->format('m/d/Y') : '';
	}
	
	public function setExitDateAttribute($exit_date){
		$this->attributes['exit_date'] = $exit_date != '' ? Carbon::parse($exit_date) : NULL;
	}
	
	public function getExitDateAttribute($exit_date){
		return $exit_date != NULL ? Carbon::parse($exit_date)->format('m/d/Y') : 'present';
	}
	
	public function setPasswordAttribute($value)
	{
		$this->attributes['password'] = empty($value)
		? $this->password
		: Hash::make($value);
	}
	
	public function setProfilePictureAttribute($value)
	{
		if(empty($value)){
			$this->attributes['profile_picture'] = '';
		}else{
			$ext = $value->getClientOriginalExtension();
			$filename = str_random(12).'.'.$ext;
			\Image::make($value)->resize(120, null, function ($constraint) {
				$constraint->aspectRatio();
			})->crop(120, 120)->save(public_path('dist/img/users/'.$filename));
			$this->attributes['profile_picture'] = 'dist/img/users/'.$filename;
		}
	}
	
	public function getProfilePictureAttribute($value)
	{
		return $value != NULL ? $value : 'dist/img/default.jpg';
	}
	
}
