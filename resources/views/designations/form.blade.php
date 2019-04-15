<div class="form-group{{ $errors->has('user_id') ? ' has-error' : '' }}">
	{!! Form::label('user_id', 'Employee') !!}
	{!! Form::text('employee', isset($designation) && $designation->user ? $designation->user->first_name.' '.$designation->user->last_name : null, ['class' => 'form-control', 'id' => 'employee', isset($designation) ? 'disabled' : '']) !!}
	{!! Form::hidden('user_id', null, ['id' =>  'user_id']) !!}
	@if ($errors->has('user_id'))
		<span class="help-block">
			<strong>{{ $errors->first('user_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('designation_item_id') || $errors->has('designation_item') ? ' has-error' : '' }}">
	{!! Form::label('designation_item_id', 'Designation') !!}<br />
	{!! Form::select('designation_item_id', $designation_items, null, ['class' => 'form-control']) !!}
	@if ($errors->has('designation_item_id') || $errors->has('designation_item'))
		<span class="help-block">
			<strong>{{ $errors->has('designation_item') ? $errors->first('designation_item') : $errors->first('designation_item_id') }}</strong>
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
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ asset('/designations') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>