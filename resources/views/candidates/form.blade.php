<div class="form-group{{ $errors->has('first_name') ? ' has-error' : '' }}">
	{!! Form::label('first_name', 'First Name') !!}
	{!! Form::text('first_name', null, ['class' => 'form-control']) !!}
	@if ($errors->has('first_name'))
		<span class="help-block">
			<strong>{{ $errors->first('first_name') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('last_name') ? ' has-error' : '' }}">
	{!! Form::label('last_name', 'Last Name') !!}
	{!! Form::text('last_name', null, ['class' => 'form-control']) !!}
	@if ($errors->has('last_name'))
		<span class="help-block">
			<strong>{{ $errors->first('last_name') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
	{!! Form::label('email', 'Email') !!}
	{!! Form::text('email', null, ['class' => 'form-control']) !!}
	@if ($errors->has('email'))
		<span class="help-block">
			<strong>{{ $errors->first('email') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('contact_no') ? ' has-error' : '' }}">
	{!! Form::label('contact_no', 'Contact No') !!}
	{!! Form::text('contact_no', null, ['class' => 'form-control']) !!}
	@if ($errors->has('contact_no'))
		<span class="help-block">
			<strong>{{ $errors->first('contact_no') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('job_vacancy_id') || $errors->has('job_vacancy') ? ' has-error' : '' }}">
	{!! Form::label('job_vacancy_id', 'Job Vacancy') !!}<br />
	{!! Form::select('job_vacancy_id', $job_vacancies, null, ['class' => 'form-control']) !!}
	@if ($errors->has('job_vacancy_id') || $errors->has('designation_item'))
		<span class="help-block">
			<strong>{{ $errors->has('designation_item') ? $errors->first('designation_item') : $errors->first('job_vacancy_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('resume') ? ' has-error' : '' }}">
	{!! Form::label('resume', 'Resume') !!}
	{!! Form::file('resume') !!}
	@if ($errors->has('resume'))
		<span class="help-block">
			<strong>{{ $errors->first('resume') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('comment') ? ' has-error' : '' }}">
	{!! Form::label('comment', 'Comment') !!}
	{!! Form::textarea('comment', null, ['class' => 'form-control', 'rows' => '3']) !!}
	@if ($errors->has('comment'))
		<span class="help-block">
			<strong>{{ $errors->first('comment') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('application_date') ? ' has-error' : '' }}">
	{!! Form::label('application_date', 'Date of Application') !!}
	<div class="input-group">
		<div class="input-group-addon">
		<i class="fa fa-calendar"></i>
		</div>
		{!! Form::text('application_date', null, ['class' => 'form-control datepicker', 'data-inputmask' => "'alias': 'mm/dd/yyyy'", 'data-mask' => '']) !!}
	</div>
	@if ($errors->has('application_date'))
		<span class="help-block">
			<strong>{{ $errors->first('application_date') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('status') ? ' has-error' : '' }}">
	{!! Form::label('status', 'Status') !!}
	{!! Form::text('status', null, ['class' => 'form-control']) !!}
	@if ($errors->has('status'))
		<span class="help-block">
			<strong>{{ $errors->first('status') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ asset('/candidates') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>