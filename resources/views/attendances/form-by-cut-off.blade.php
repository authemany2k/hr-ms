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
<div class="form-group{{ $errors->has('cut_off_id') ? ' has-error' : '' }}">
	{!! Form::label('cut_off_id', 'Cut Off Period') !!}
	{!! Form::text('cut_off', $cut_off->cut_off, ['class' => 'form-control', 'disabled' => '']) !!}
	{!! Form::hidden('cut_off_id', $cut_off->id) !!}
	@if ($errors->has('cut_off_id'))
		<span class="help-block">
			<strong>{{ $errors->first('cut_off_id') }}</strong>
		</span>
	@endif
</div>
@foreach($dates as $date)
<div class="row">
	<div class="col-sm-4">
		<div class="input-group">
		{!! Form::text('cut_off', Carbon\Carbon::createFromFormat('m/d/Y', $date)->format('m/d/Y l'), ['class' => 'form-control', 'disabled' => '']) !!}
		<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
		</div>
	</div>
	<div class="col-sm-4">
		<div class="form-group bootstrap-timepicker">
			<div class="input-group">
				@if($attendances->where('date', $date)->first())
				{!! Form::text('time_in_'.$date, $attendances->where('date', $date)->first()->time_in, ['class' => 'form-control timepicker']) !!}
				@else
				{!! Form::text('time_in_'.$date, null, ['class' => 'form-control timepicker']) !!}
				@endif
				<div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
			</div>
		</div>
	</div>
	<div class="col-sm-4">
		<div class="form-group bootstrap-timepicker">
			<div class="input-group">
				@if($attendances->where('date', $date)->first())
				{!! Form::text('time_out_'.$date, $attendances->where('date', $date)->first()->time_out, ['class' => 'form-control timepicker']) !!}
				@else
				{!! Form::text('time_out_'.$date, null, ['class' => 'form-control timepicker']) !!}
				@endif
				<div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
			</div>
		</div>
	</div>
</div>
@endforeach
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ isset($user->id) ? asset('/users/'.$user->id) : asset('/attendances') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>