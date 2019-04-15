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
	{!! Form::label('cut_off_id', 'Cut Off') !!}<br />
	{!! Form::select('cut_off_id', $cut_offs, null, ['class' => 'form-control', 'id' => 'cut_off']) !!}
	@if ($errors->has('cut_off_id') || $errors->has('document_type'))
		<span class="help-block">
			<strong>{{ $errors->first('cut_off_id') }}</strong>
		</span>
	@endif
</div>
<div id="attendance-wrapper">
	
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ isset($user->id) ? asset('/users/'.$user->id) : asset('/attendances') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>