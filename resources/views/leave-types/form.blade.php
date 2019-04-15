<div class="form-group{{ $errors->has('leave_type') ? ' has-error' : '' }}">
	{!! Form::label('leave_type', 'Leave Type') !!}
	{!! Form::text('leave_type', null, ['class' => 'form-control']) !!}
	@if ($errors->has('leave_type'))
		<span class="help-block">
			<strong>{{ $errors->first('leave_type') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ asset('/leave-types') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>