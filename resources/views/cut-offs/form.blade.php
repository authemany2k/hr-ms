<div class="form-group{{ $errors->has('date_start') ? ' has-error' : '' }}">
	{!! Form::label('date_start', 'Date Start') !!}
	<div class="input-group">
		<div class="input-group-addon">
		<i class="fa fa-calendar"></i>
		</div>
		{!! Form::text('date_start', null, ['class' => 'form-control datepicker', 'data-inputmask' => "'alias': 'mm/dd/yyyy'", 'data-mask' => '']) !!}
	</div>
	@if ($errors->has('date_start'))
		<span class="help-block">
			<strong>{{ $errors->first('date_start') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('date_end') ? ' has-error' : '' }}">
	{!! Form::label('date_end', 'Date End') !!}
	<div class="input-group">
		<div class="input-group-addon">
		<i class="fa fa-calendar"></i>
		</div>
		{!! Form::text('date_end', null, ['class' => 'form-control datepicker', 'data-inputmask' => "'alias': 'mm/dd/yyyy'", 'data-mask' => '']) !!}
	</div>
	@if ($errors->has('date_end'))
		<span class="help-block">
			<strong>{{ $errors->first('date_end') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ asset('/cut-offs') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>