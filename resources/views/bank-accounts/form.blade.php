<div class="form-group{{ $errors->has('user_id') ? ' has-error' : '' }}">
	{!! Form::label('user_id', 'Employee') !!}
	{!! Form::text('employee', isset($bank_account) && $bank_account->user ? $bank_account->user->first_name.' '.$bank_account->user->last_name : (isset($user->id) ? $user->first_name.' '.$user->last_name : null), ['class' => 'form-control', 'id' => 'employee', isset($bank_account) || isset($user->id) ? 'disabled' : '']) !!}
	{!! Form::hidden('user_id', isset($user->id) ? $user->id : null, ['id' =>  'user_id']) !!}
	@if ($errors->has('user_id'))
		<span class="help-block">
			<strong>{{ $errors->first('user_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('account_name') ? ' has-error' : '' }}">
	{!! Form::label('account_name', 'Account Name') !!}
	{!! Form::text('account_name', null, ['class' => 'form-control']) !!}
	@if ($errors->has('account_name'))
		<span class="help-block">
			<strong>{{ $errors->first('account_name') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('account_number') ? ' has-error' : '' }}">
	{!! Form::label('account_number', 'Account Number') !!}
	{!! Form::text('account_number', null, ['class' => 'form-control']) !!}
	@if ($errors->has('account_number'))
		<span class="help-block">
			<strong>{{ $errors->first('account_number') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('bank_name') ? ' has-error' : '' }}">
	{!! Form::label('bank_name', 'Bank Name') !!}
	{!! Form::text('bank_name', null, ['class' => 'form-control']) !!}
	@if ($errors->has('bank_name'))
		<span class="help-block">
			<strong>{{ $errors->first('bank_name') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ isset($user->id) ? asset('/users/'.$user->id) : asset('/bank-accounts') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>