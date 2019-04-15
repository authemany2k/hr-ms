<div class="form-group{{ $errors->has('department') ? ' has-error' : '' }}">
	{!! Form::label('department', 'Department') !!}
	{!! Form::text('department', null, ['class' => 'form-control']) !!}
	@if ($errors->has('department'))
		<span class="help-block">
			<strong>{{ $errors->first('department') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ asset('/departments') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>