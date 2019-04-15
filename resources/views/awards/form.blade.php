<div class="form-group{{ $errors->has('user_id') ? ' has-error' : '' }}">
	{!! Form::label('user_id', 'Employee') !!}
	{!! Form::text('employee', isset($award) && $award->user ? $award->user->first_name.' '.$award->user->last_name : (isset($user->id) ? $user->first_name.' '.$user->last_name : null), ['class' => 'form-control', 'id' => 'employee', isset($award) || isset($user->id) ? 'disabled' : '']) !!}
	{!! Form::hidden('user_id', isset($user->id) ? $user->id : null, ['id' =>  'user_id']) !!}
	@if ($errors->has('user_id'))
		<span class="help-block">
			<strong>{{ $errors->first('user_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('award_name') ? ' has-error' : '' }}">
	{!! Form::label('award_name', 'Award Name') !!}
	{!! Form::text('award_name', null, ['class' => 'form-control']) !!}
	@if ($errors->has('award_name'))
		<span class="help-block">
			<strong>{{ $errors->first('award_name') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('gift_item') ? ' has-error' : '' }}">
	{!! Form::label('gift_item', 'Gift Item') !!}
	{!! Form::text('gift_item', null, ['class' => 'form-control']) !!}
	@if ($errors->has('gift_item'))
		<span class="help-block">
			<strong>{{ $errors->first('gift_item') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('cash_price') ? ' has-error' : '' }}">
	{!! Form::label('cash_price', 'Cash Price') !!}
	{!! Form::text('cash_price', null, ['class' => 'form-control']) !!}
	@if ($errors->has('cash_price'))
		<span class="help-block">
			<strong>{{ $errors->first('cash_price') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ isset($user->id) ? asset('/users/'.$user->id) : asset('/awards') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>