@extends('layouts.guest')

@section('head')
	<link rel="stylesheet" href="{{ asset('/plugins/iCheck/square/green.css') }}">
@endsection

@section('content')
	<div class="login-box">
		<div class="login-logo">
			<a href="{{ url('/') }}"><b class="text-green">Lara</b>hrm</a>
		</div>
		<div class="login-box-body">
			<p class="login-box-msg">Sign in to start your session</p>

			<form method="POST" action="{{ url('/login') }}">
			{!! csrf_field() !!}
				<div class="form-group{{ $errors->has('username') ? ' has-error' : '' }} has-feedback">
					<input type="username" class="form-control" name="username" value="{{ old('username') }}" placeholder="Username">
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
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
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label>
							<input type="checkbox"> Remember Me
							</label>
						</div>
					</div>
					<div class="col-xs-4">
						<button type="submit" class="btn btn-success btn-block btn-flat">Sign In</button>
					</div>
				</div>
			</form>
			<!--<a href="#">I forgot my password</a><br>-->
			<a href="{{ asset('/register') }}" class="text-center">Register a new membership</a>
		</div>
	</div>
@endsection

@section('foot')
<script src="{{ asset('/plugins/iCheck/icheck.min.js') }}"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-green',
      radioClass: 'iradio_square-green',
      increaseArea: '20%' // optional
    });
  });
</script>
@endsection