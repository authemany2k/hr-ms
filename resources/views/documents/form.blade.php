<div class="form-group{{ $errors->has('user_id') ? ' has-error' : '' }}">
	{!! Form::label('user_id', 'Employee') !!}
	{!! Form::text('employee', isset($document) && $document->user ? $document->user->first_name.' '.$document->user->last_name : (isset($user->id) ? $user->first_name.' '.$user->last_name : null), ['class' => 'form-control', 'id' => 'employee', isset($document) || isset($user->id) ? 'disabled' : '']) !!}
	{!! Form::hidden('user_id', isset($user->id) ? $user->id : null, ['id' =>  'user_id']) !!}
	@if ($errors->has('user_id'))
		<span class="help-block">
			<strong>{{ $errors->first('user_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('document_type_id') || $errors->has('document_type') ? ' has-error' : '' }}">
	{!! Form::label('document_type_id', 'Document Type') !!}<br />
	{!! Form::select('document_type_id', $document_types, null, ['class' => 'form-control']) !!}
	@if ($errors->has('document_type_id') || $errors->has('document_type'))
		<span class="help-block">
			<strong>{{ $errors->has('document_type') ? $errors->first('document_type') : $errors->first('document_type_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('document') ? ' has-error' : '' }}">
	{!! Form::label('document', 'Document') !!}
	{!! Form::file('document') !!}
	@if ($errors->has('document'))
		<span class="help-block">
			<strong>{{ $errors->first('document') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ isset($user->id) ? asset('/users/'.$user->id) : asset('/documents') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>