@if(isset($department) && $department->count() == 0)
<div class="form-group">
	{!! Form::label('department_id', 'Department') !!}
	{!! Form::text('department', $department->department, ['class' => 'form-control', 'disabled' => '']) !!}
	{!! Form::hidden('department_id', $department->id) !!}
</div>
@else
<div class="form-group{{ $errors->has('department_id') || $errors->has('department') ? ' has-error' : '' }}">
	{!! Form::label('department_id', 'Department') !!}<br />
	{!! Form::select('department_id', $departments, null, ['class' => 'form-control']) !!}
	@if ($errors->has('department_id') || $errors->has('department'))
		<span class="help-block">
			<strong>{{ $errors->has('department') ? $errors->first('department') : $errors->first('department_id') }}</strong>
		</span>
	@endif
</div>
@endif
<div class="form-group{{ $errors->has('designation_item') ? ' has-error' : '' }}">
	{!! Form::label('designation_item', 'Designation Item') !!}
	{!! Form::text('designation_item', null, ['class' => 'form-control']) !!}
	@if ($errors->has('designation_item'))
		<span class="help-block">
			<strong>{{ $errors->first('designation_item') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ isset($department->id) ? asset('/departments/'.$department->id) : asset('/designation-items') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>