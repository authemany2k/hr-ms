<div class="form-group{{ $errors->has('user_id') ? ' has-error' : '' }}">
	{!! Form::label('user_id', 'Employee') !!}
	{!! Form::text('employee', isset($absence) && $absence->user ? $absence->user->first_name.' '.$absence->user->last_name : (isset($user->id) ? $user->first_name.' '.$user->last_name : null), ['class' => 'form-control', 'id' => 'employee', isset($absence) || isset($user->id) ? 'disabled' : '']) !!}
	{!! Form::hidden('user_id', isset($user->id) ? $user->id : null, ['id' =>  'user_id']) !!}
	@if ($errors->has('user_id'))
		<span class="help-block">
			<strong>{{ $errors->first('user_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('leave_type_id') || $errors->has('leave_type') ? ' has-error' : '' }}">
	{!! Form::label('leave_type_id', 'Leave Type') !!}<br />
	{!! Form::select('leave_type_id', $leave_types, null, ['class' => 'form-control']) !!}
	@if ($errors->has('leave_type_id') || $errors->has('leave_type'))
		<span class="help-block">
			<strong>{{ $errors->has('leave_type') ? $errors->first('leave_type') : $errors->first('leave_type_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('reason') ? ' has-error' : '' }}">
	{!! Form::label('reason', 'Reason') !!}
	{!! Form::textarea('reason', null, ['class' => 'form-control', 'rows' => '3']) !!}
	@if ($errors->has('reason'))
		<span class="help-block">
			<strong>{{ $errors->first('reason') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('date') ? ' has-error' : '' }}">
	{!! Form::label('date', 'Date') !!}
	<div class="input-group">
		<div class="input-group-addon">
		<i class="fa fa-calendar"></i>
		</div>
		{!! Form::text('date', null, ['class' => 'form-control datepicker', 'data-inputmask' => "'alias': 'mm/dd/yyyy'", 'data-mask' => '']) !!}
	</div>
	@if ($errors->has('date'))
		<span class="help-block">
			<strong>{{ $errors->first('date') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ isset($user->id) ? asset('/users/'.$user->id) : asset('/absences') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>