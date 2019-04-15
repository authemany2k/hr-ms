<div class="form-group{{ $errors->has('user_id') ? ' has-error' : '' }}">
	{!! Form::label('user_id', 'Employee') !!}
	{!! Form::text('employee', isset($leave) && $leave->user ? $leave->user->first_name.' '.$leave->user->last_name : (isset($user->id) ? $user->first_name.' '.$user->last_name : null), ['class' => 'form-control', 'id' => 'employee', isset($leave) || isset($user->id) ? 'disabled' : '']) !!}
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
<div class="form-group{{ $errors->has('date_from') ? ' has-error' : '' }}">
	{!! Form::label('date_from', 'Date From') !!}
	<div class="input-group">
		<div class="input-group-addon">
		<i class="fa fa-calendar"></i>
		</div>
		{!! Form::text('date_from', null, ['class' => 'form-control datepicker', 'data-inputmask' => "'alias': 'mm/dd/yyyy'", 'data-mask' => '']) !!}
	</div>
	@if ($errors->has('date_from'))
		<span class="help-block">
			<strong>{{ $errors->first('date_from') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('date_to') ? ' has-error' : '' }}">
	{!! Form::label('date_to', 'Date To') !!}
	<div class="input-group">
		<div class="input-group-addon">
		<i class="fa fa-calendar"></i>
		</div>
		{!! Form::text('date_to', null, ['class' => 'form-control datepicker', 'data-inputmask' => "'alias': 'mm/dd/yyyy'", 'data-mask' => '']) !!}
	</div>
	@if ($errors->has('date_to'))
		<span class="help-block">
			<strong>{{ $errors->first('date_to') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('applied_on') ? ' has-error' : '' }}">
	{!! Form::label('applied_on', 'Applied On') !!}
	<div class="input-group">
		<div class="input-group-addon">
		<i class="fa fa-calendar"></i>
		</div>
		{!! Form::text('applied_on', null, ['class' => 'form-control datepicker', 'data-inputmask' => "'alias': 'mm/dd/yyyy'", 'data-mask' => '']) !!}
	</div>
	@if ($errors->has('applied_on'))
		<span class="help-block">
			<strong>{{ $errors->first('applied_on') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('reason') ? ' has-error' : '' }}">
	{!! Form::label('reason', 'Reason') !!}
	{!! Form::text('reason', null, ['class' => 'form-control']) !!}
	@if ($errors->has('reason'))
		<span class="help-block">
			<strong>{{ $errors->first('reason') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('comment') ? ' has-error' : '' }}">
	{!! Form::label('comment', 'Comment') !!}
	{!! Form::text('comment', null, ['class' => 'form-control']) !!}
	@if ($errors->has('comment'))
		<span class="help-block">
			<strong>{{ $errors->first('comment') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ isset($user->id) ? asset('/users/'.$user->id) : asset('/leaves') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>