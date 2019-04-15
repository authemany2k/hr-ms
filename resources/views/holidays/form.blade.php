<div class="form-group{{ $errors->has('occasion') ? ' has-error' : '' }}">
	{!! Form::label('occasion', 'Occasion') !!}
	{!! Form::text('occasion', null, ['class' => 'form-control']) !!}
	@if ($errors->has('occasion'))
		<span class="help-block">
			<strong>{{ $errors->first('occasion') }}</strong>
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
	<a href="{{ asset('/holidays') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>