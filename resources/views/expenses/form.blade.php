<div class="form-group{{ $errors->has('user_id') ? ' has-error' : '' }}">
	{!! Form::label('user_id', 'Employee') !!}
	{!! Form::text('employee', isset($expense) && $expense->user ? $expense->user->first_name.' '.$expense->user->last_name : (isset($user->id) ? $user->first_name.' '.$user->last_name : null), ['class' => 'form-control', 'id' => 'employee', isset($expense) || isset($user->id) ? 'disabled' : '']) !!}
	{!! Form::hidden('user_id', isset($user->id) ? $user->id : null, ['id' =>  'user_id']) !!}
	@if ($errors->has('user_id'))
		<span class="help-block">
			<strong>{{ $errors->first('user_id') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('item_name') ? ' has-error' : '' }}">
	{!! Form::label('item_name', 'Item Name') !!}
	{!! Form::text('item_name', null, ['class' => 'form-control']) !!}
	@if ($errors->has('item_name'))
		<span class="help-block">
			<strong>{{ $errors->first('item_name') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('purchase_from') ? ' has-error' : '' }}">
	{!! Form::label('purchase_from', 'Purchase From') !!}
	{!! Form::text('purchase_from', null, ['class' => 'form-control']) !!}
	@if ($errors->has('purchase_from'))
		<span class="help-block">
			<strong>{{ $errors->first('purchase_from') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('purchase_date') ? ' has-error' : '' }}">
	{!! Form::label('purchase_date', 'Purchase Date') !!}
	<div class="input-group">
		<div class="input-group-addon">
		<i class="fa fa-calendar"></i>
		</div>
		{!! Form::text('purchase_date', null, ['class' => 'form-control datepicker', 'data-inputmask' => "'alias': 'mm/dd/yyyy'", 'data-mask' => '']) !!}
	</div>
	@if ($errors->has('purchase_date'))
		<span class="help-block">
			<strong>{{ $errors->first('purchase_date') }}</strong>
		</span>
	@endif
</div>
<div class="form-group{{ $errors->has('amount') ? ' has-error' : '' }}">
	{!! Form::label('amount', 'Amount') !!}
	{!! Form::text('amount', null, ['class' => 'form-control']) !!}
	@if ($errors->has('amount'))
		<span class="help-block">
			<strong>{{ $errors->first('amount') }}</strong>
		</span>
	@endif
</div>
<div class="pull-right">
	{!! Form::submit('Save', ['class' => 'btn btn-success btn-flat']) !!}
	<a href="{{ isset($user->id) ? asset('/users/'.$user->id) : asset('/expenses') }}" type="button" class="btn btn-default btn-flat">Cancel</a>
</div>