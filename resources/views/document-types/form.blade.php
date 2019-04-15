<div class="form-group{{ $errors->has('document_type') ? ' has-error' : '' }}">
	{!! Form::label('document_type', 'Document Type') !!}
	{!! Form::text('document_type', null, ['class' => 'form-control']) !!}
	@if ($errors->has('document_type'))
		<span class="help-block">
			<strong>{{ $errors->first('document_type') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ asset('/document-types') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>