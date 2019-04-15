<div class="form-group{{ $errors->has('event_name') ? ' has-error' : '' }}">
	{!! Form::label('event_name', 'Event Name') !!}
	{!! Form::text('event_name', null, ['class' => 'form-control']) !!}
	@if ($errors->has('event_name'))
		<span class="help-block">
			<strong>{{ $errors->first('event_name') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
	{!! Form::label('description', 'Event Description') !!}
	{!! Form::text('description', null, ['class' => 'form-control']) !!}
	@if ($errors->has('description'))
		<span class="help-block">
			<strong>{{ $errors->first('description') }}</strong>
		</span>
	@endif
</div>
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
<div class="form-group{{ $errors->has('image') ? ' has-error' : '' }}">
	{!! Form::label('image', 'Image') !!}
	{!! Form::file('image') !!}
	@if ($errors->has('image'))
		<span class="help-block">
			<strong>{{ $errors->first('image') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ asset('/events') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>