<div class="form-group{{ $errors->has('role') ? ' has-error' : '' }}">
	{!! Form::label('role', 'Role') !!}
	{!! Form::text('role', null, ['class' => 'form-control']) !!}
	@if ($errors->has('role'))
		<span class="help-block">
			<strong>{{ $errors->first('role') }}</strong>
		</span>
	@endif
</div>
<div class="row">
	@foreach($permissions as $permission)
	<div class="col-md-6">
		<div class="row">
			<div class="col-md-6">
				{!! Form::hidden($permission->permission, '0') !!}
				{!! Form::checkbox($permission->permission, '1', isset($role) ? $permission->role_permission($role) : false) !!}
				{!! Form::label($permission->permission, $permission->label) !!}
			</div>
			@if($permission->level)
			<div class="col-md-6">
				{!! Form::select('level-'.$permission->id, ['all' => 'All', 'team' => 'Team', 'self' => 'Individual'], isset($role) && $permission->role_permission($role) ? $permission->role_permission($role)->level : null, ['class' => 'form-control input-sm']) !!}
			</div>
			@endif
		</div>
	</div>
	@endforeach
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ asset('/roles') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>