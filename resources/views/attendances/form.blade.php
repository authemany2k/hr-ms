<div class="form-group{{ $errors->has('user_id') ? ' has-error' : '' }}">
	{!! Form::label('user_id', 'Employee') !!}
	{!! Form::text('employee', isset($attendance) && $attendance->user ? $attendance->user->first_name.' '.$attendance->user->last_name : (isset($user->id) ? $user->first_name.' '.$user->last_name : null), ['class' => 'form-control', 'id' => 'employee', isset($attendance) || isset($user->id) ? 'disabled' : '']) !!}
	{!! Form::hidden('user_id', isset($user->id) ? $user->id : null, ['id' =>  'user_id']) !!}
	@if ($errors->has('user_id'))
		<span class="help-block">
			<strong>{{ $errors->first('user_id') }}</strong>
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
<div class="form-group{{ $errors->has('time_in') ? ' has-error' : '' }} bootstrap-timepicker">
	{!! Form::label('time_in', 'Time In') !!}
	<div class="input-group">
	{!! Form::text('time_in', null, ['class' => 'form-control timepicker']) !!}
		<div class="input-group-addon">
			<i class="fa fa-clock-o"></i>
		</div>
	</div>
	@if ($errors->has('time_in'))
		<span class="help-block">
			<strong>{{ $errors->first('time_in') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('time_out') ? ' has-error' : '' }} bootstrap-timepicker">
	{!! Form::label('time_out', 'Time Out') !!}
	<div class="input-group">
	{!! Form::text('time_out', null, ['class' => 'form-control timepicker']) !!}
		<div class="input-group-addon">
			<i class="fa fa-clock-o"></i>
		</div>
	</div>
	@if ($errors->has('time_out'))
		<span class="help-block">
			<strong>{{ $errors->first('time_out') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ isset($user->id) ? asset('/users/'.$user->id) : asset('/attendances') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>