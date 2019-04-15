<div class="form-group">
	@if($new)
	{!! Form::hidden('published', '0') !!}
	{!! Form::checkbox('published', '1', true) !!}
	@else
	{!! Form::hidden('published', '0') !!}
	{!! Form::checkbox('published', '1') !!}
	@endif
	{!! Form::label('published', 'Published') !!}
</div>
<div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
	{!! Form::label('title', 'Title') !!}
	{!! Form::text('title', null, ['class' => 'form-control']) !!}
	@if ($errors->has('title'))
		<span class="help-block">
			<strong>{{ $errors->first('title') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
	{!! Form::label('description', 'Description') !!}
	{!! Form::text('description', null, ['class' => 'form-control']) !!}
	@if ($errors->has('description'))
		<span class="help-block">
			<strong>{{ $errors->first('description') }}</strong>
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
	<a href="{{ asset('/notices') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>