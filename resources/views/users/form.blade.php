<div class="form-group{{ $errors->has('first_name') ? ' has-error' : '' }}">
	{!! Form::label('first_name', 'First Name') !!}
	{!! Form::text('first_name', null, ['class' => 'form-control']) !!}
	@if ($errors->has('first_name'))
		<span class="help-block">
			<strong>{{ $errors->first('first_name') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('last_name') ? ' has-error' : '' }}">
	{!! Form::label('last_name', 'Last Name') !!}
	{!! Form::text('last_name', null, ['class' => 'form-control']) !!}
	@if ($errors->has('last_name'))
		<span class="help-block">
			<strong>{{ $errors->first('last_name') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('birthday') ? ' has-error' : '' }}">
	{!! Form::label('birthday', 'Birthday') !!}
	<div class="input-group">
		<div class="input-group-addon">
		<i class="fa fa-calendar"></i>
		</div>
		{!! Form::text('birthday', null, ['class' => 'form-control datepicker', 'data-inputmask' => "'alias': 'mm/dd/yyyy'", 'data-mask' => '']) !!}
	</div>
	@if ($errors->has('birthday'))
		<span class="help-block">
			<strong>{{ $errors->first('birthday') }}</strong>
		</span>
	@endif
</div>
<div class="form-group">
	{!! Form::radio('gender', 'M', true) !!}
	{!! Form::label('gender', 'Male', ['class' => 'margin']) !!}
	{!! Form::radio('gender', 'F') !!}
	{!! Form::label('gender', 'Female', ['class' => 'margin']) !!}
</div>
<div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
	{!! Form::label('email', 'Email') !!}
	{!! Form::text('email', null, ['class' => 'form-control']) !!}
	@if ($errors->has('email'))
		<span class="help-block">
			<strong>{{ $errors->first('email') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('telephone') ? ' has-error' : '' }}">
	{!! Form::label('telephone', 'Telephone') !!}
	{!! Form::text('telephone', null, ['class' => 'form-control']) !!}
	@if ($errors->has('telephone'))
		<span class="help-block">
			<strong>{{ $errors->first('telephone') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('cellphone') ? ' has-error' : '' }}">
	{!! Form::label('cellphone', 'Cellphone') !!}
	{!! Form::text('cellphone', null, ['class' => 'form-control']) !!}
	@if ($errors->has('cellphone'))
		<span class="help-block">
			<strong>{{ $errors->first('cellphone') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('local_address') ? ' has-error' : '' }}">
	{!! Form::label('local_address', 'Local Address') !!}
	{!! Form::text('local_address', null, ['class' => 'form-control']) !!}
	@if ($errors->has('local_address'))
		<span class="help-block">
			<strong>{{ $errors->first('local_address') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('permanent_address') ? ' has-error' : '' }}">
	{!! Form::label('permanent_address', 'Permanent Address') !!}
	{!! Form::text('permanent_address', null, ['class' => 'form-control']) !!}
	@if ($errors->has('permanent_address'))
		<span class="help-block">
			<strong>{{ $errors->first('permanent_address') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('employee_id') ? ' has-error' : '' }}">
	{!! Form::label('employee_id', 'Employee ID') !!}
	{!! Form::text('employee_id', null, ['class' => 'form-control']) !!}
	@if ($errors->has('employee_id'))
		<span class="help-block">
			<strong>{{ $errors->first('employee_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('department_id') || $errors->has('department') ? ' has-error' : '' }}">
	{!! Form::label('department_id', 'Department') !!}<br />
	{!! Form::select('department_id', $departments, null, ['class' => 'form-control']) !!}
	@if ($errors->has('department_id') || $errors->has('department'))
		<span class="help-block">
			<strong>{{ $errors->has('department') ? $errors->first('department') : $errors->first('department_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('designation_item_id') || $errors->has('designation_item') ? ' has-error' : '' }}">
	{!! Form::label('designation_item_id', 'Designation') !!}<br />
	{!! Form::select('designation_item_id', $designation_items, null, ['class' => 'form-control']) !!}
	@if ($errors->has('designation_item_id') || $errors->has('designation_item'))
		<span class="help-block">
			<strong>{{ $errors->has('designation_item') ? $errors->first('designation_item') : $errors->first('designation_item_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('date_hired') ? ' has-error' : '' }}">
	{!! Form::label('date_hired', 'Date Hired') !!}
	<div class="input-group">
		<div class="input-group-addon">
		<i class="fa fa-calendar"></i>
		</div>
		{!! Form::text('date_hired', null, ['class' => 'form-control datepicker', 'data-inputmask' => "'alias': 'mm/dd/yyyy'", 'data-mask' => '']) !!}
	</div>
	@if ($errors->has('date_hired'))
		<span class="help-block">
			<strong>{{ $errors->first('date_hired') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('exit_date') ? ' has-error' : '' }}">
	{!! Form::label('exit_date', 'Exit Date') !!}
	<div class="input-group">
		<div class="input-group-addon">
		<i class="fa fa-calendar"></i>
		</div>
		{!! Form::text('exit_date', null, ['class' => 'form-control datepicker', 'data-inputmask' => "'alias': 'mm/dd/yyyy'", 'data-mask' => '']) !!}
	</div>
	@if ($errors->has('exit_date'))
		<span class="help-block">
			<strong>{{ $errors->first('exit_date') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('salary') ? ' has-error' : '' }}">
	{!! Form::label('salary', 'Salary') !!}
	{!! Form::text('salary', null, ['class' => 'form-control']) !!}
	@if ($errors->has('salary'))
		<span class="help-block">
			<strong>{{ $errors->first('salary') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('profile_picture') ? ' has-error' : '' }}">
	{!! Form::label('profile_picture', 'Profile Picture') !!}
	{!! Form::file('profile_picture') !!}
	@if ($errors->has('profile_picture'))
		<span class="help-block">
			<strong>{{ $errors->first('profile_picture') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('role_id') || $errors->has('role') ? ' has-error' : '' }}">
	{!! Form::label('role_id', 'Role') !!}<br />
	{!! Form::select('role_id', $roles, null, ['class' => 'form-control']) !!}
	@if ($errors->has('role_id') || $errors->has('role'))
		<span class="help-block">
			<strong>{{ $errors->has('role') ? $errors->first('role') : $errors->first('role_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('username') ? ' has-error' : '' }}">
	{!! Form::label('username', 'Username') !!}
	{!! Form::text('username', null, ['class' => 'form-control']) !!}
	@if ($errors->has('username'))
		<span class="help-block">
			<strong>{{ $errors->first('username') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
	{!! Form::label('password', 'Password') !!}
	{!! Form::password('password', ['class' => 'form-control']) !!}
	@if ($errors->has('password'))
		<span class="help-block">
			<strong>{{ $errors->first('password') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('password_confirmation') ? ' has-error' : '' }}">
	{!! Form::label('password_confirmation', 'Password Confirmation') !!}
	{!! Form::password('password_confirmation', ['class' => 'form-control']) !!}
	@if ($errors->has('password_confirmation'))
		<span class="help-block">
			<strong>{{ $errors->first('password_confirmation') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ isset($user) ? asset('/users/'.$user->id) : asset('/users') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>