<div class="form-group{{ $errors->has('job_title') ? ' has-error' : '' }}">
	{!! Form::label('job_title', 'Job Title') !!}
	{!! Form::text('job_title', null, ['class' => 'form-control']) !!}
	@if ($errors->has('job_title'))
		<span class="help-block">
			<strong>{{ $errors->first('job_title') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('user_id') ? ' has-error' : '' }}">
	{!! Form::label('user_id', 'Hiring Manager') !!}
	{!! Form::text('employee', isset($job_vacancy) && $job_vacancy->user ? $job_vacancy->user->first_name.' '.$job_vacancy->user->last_name : (isset($user->id) ? $user->first_name.' '.$user->last_name : null), ['class' => 'form-control', 'id' => 'employee']) !!}
	{!! Form::hidden('user_id', isset($user->id) ? $user->id : null, ['id' =>  'user_id']) !!}
	@if ($errors->has('user_id'))
		<span class="help-block">
			<strong>{{ $errors->first('user_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group">
	{!! Form::radio('status', '1', true) !!}
	{!! Form::label('status', 'Open', ['class' => 'margin']) !!}
	{!! Form::radio('status', '0') !!}
	{!! Form::label('status', 'Close', ['class' => 'margin']) !!}
</div>
<div class="form-group{{ $errors->has('details') ? ' has-error' : '' }}">
	{!! Form::label('details', 'Details') !!}
	{!! Form::textarea('details', null, ['class' => 'form-control', 'rows' => '3']) !!}
	@if ($errors->has('details'))
		<span class="help-block">
			<strong>{{ $errors->first('details') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('type') ? ' has-error' : '' }}">
	{!! Form::label('type', 'Job Type') !!}
	{!! Form::text('type', null, ['class' => 'form-control']) !!}
	@if ($errors->has('type'))
		<span class="help-block">
			<strong>{{ $errors->first('type') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ asset('/job-vacancies') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>