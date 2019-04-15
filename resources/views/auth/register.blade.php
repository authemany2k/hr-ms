@extends('layouts.guest')

@section('head')
	<link rel="stylesheet" href="{{ asset('/plugins/iCheck/square/green.css') }}">
	<link rel="stylesheet" href="{{ asset('/plugins/datepicker/datepicker3.css') }}">
@endsection

@section('content')
	<div class="register-box">
		<div class="register-logo">
			<a href="{{ url('/') }}"><b class="text-green">Lara</b>hrm</a>
		</div>
		<div class="register-box-body">
			<p class="login-box-msg">Register a new membership</p>
			<form method="POST" action="{{ url('/register') }}">
			{!! csrf_field() !!}
				<div class="form-group{{ $errors->has('first_name') ? ' has-error' : '' }} has-feedback">
					{!! Form::text('first_name', null, ['class' => 'form-control', 'placeholder' => 'First Name']) !!}
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
					@if ($errors->has('first_name'))
						<span class="help-block">
							<strong>{{ $errors->first('first_name') }}</strong>
						</span>
					@endif
				</div>
				<div class="form-group{{ $errors->has('last_name') ? ' has-error' : '' }} has-feedback">
					{!! Form::text('last_name', null, ['class' => 'form-control', 'placeholder' => 'Last Name']) !!}
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
					@if ($errors->has('last_name'))
						<span class="help-block">
							<strong>{{ $errors->first('last_name') }}</strong>
						</span>
					@endif
				</div>
				<div class="form-group{{ $errors->has('birthday') ? ' has-error' : '' }} has-feedback">
					{!! Form::text('birthday', null, ['class' => 'form-control', 'placeholder' => 'Birthday', 'data-inputmask' => "'alias': 'mm/dd/yyyy'", 'data-mask' => '', 'id' => 'datepicker']) !!}
					<span class="fa fa-birthday-cake form-control-feedback"></span>
					@if ($errors->has('birthday'))
						<span class="help-block">
							<strong>{{ $errors->first('birthday') }}</strong>
						</span>
					@endif
				</div>
				<div class="form-group{{ $errors->has('email') ? ' has-error' : '' }} has-feedback">
					<input type="email" class="form-control" name="email" placeholder="Email" value="{{ old('email') }}">
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
					@if ($errors->has('email'))
						<span class="help-block">
							<strong>{{ $errors->first('email') }}</strong>
						</span>
					@endif
				</div>
				<div class="form-group">
					{!! Form::radio('gender', 'M', true) !!}
					{!! Form::label('gender', 'Male', ['class' => 'margin']) !!}
					{!! Form::radio('gender', 'F') !!}
					{!! Form::label('gender', 'Female', ['class' => 'margin']) !!}
				</div>
				<div class="form-group{{ $errors->has('username') ? ' has-error' : '' }} has-feedback">
					{!! Form::text('username', null, ['class' => 'form-control', 'placeholder' => 'Username']) !!}
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
					@if ($errors->has('username'))
						<span class="help-block">
							<strong>{{ $errors->first('username') }}</strong>
						</span>
					@endif
				</div>
				<div class="form-group{{ $errors->has('password') ? ' has-error' : '' }} has-feedback">
					<input type="password" class="form-control" name="password" placeholder="Password">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					@if ($errors->has('password'))
						<span class="help-block">
							<strong>{{ $errors->first('password') }}</strong>
						</span>
					@endif
				</div>
				<div class="form-group{{ $errors->has('password_confirmation') ? ' has-error' : '' }} has-feedback">
					<input type="password" class="form-control" name="password_confirmation" placeholder="Retype password">
					<span class="glyphicon glyphicon-log-in form-control-feedback"></span>
					@if ($errors->has('password_confirmation'))
						<span class="help-block">
							<strong>{{ $errors->first('password_confirmation') }}</strong>
						</span>
					@endif
				</div>
				<div class="row">
					<div class="col-xs-8">
						<!-- <div class="checkbox icheck">
							<label>
								<input type="checkbox"> I agree to the <a href="#">terms</a>
							</label>
						</div> -->
					</div>
					<div class="col-xs-4">
						<button type="submit" class="btn btn-success btn-block btn-flat">Register</button>
					</div>
				</div>
			</form>

			<a href="{{ asset('/login') }}" class="text-center">I already have a membership</a>
		</div>
	</div>
@endsection

@section('foot')
<script src="{{ asset('/plugins/iCheck/icheck.min.js') }}"></script>
<script src="{{ asset('/plugins/input-mask/jquery.inputmask.js') }}"></script>
<script src="{{ asset('/plugins/input-mask/jquery.inputmask.date.extensions.js') }}"></script>
<script src="{{ asset('/plugins/input-mask/jquery.inputmask.extensions.js') }}"></script>
<script src="{{ asset('/plugins/datepicker/bootstrap-datepicker.js') }}"></script>
<script>
  $(function () {
	$("#datemask").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
	$("[data-mask]").inputmask();
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-green',
      radioClass: 'iradio_square-green',
      increaseArea: '20%' // optional
    });
		$('#datepicker').datepicker({
      autoclose: true
    });
  });
</script>
@endsection