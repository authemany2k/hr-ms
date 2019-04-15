<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Autheman Human Resource Management</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="{{ asset('/bootstrap/css/bootstrap.min.css') }}">
	<link rel="stylesheet" href="{{ asset('/dist/css/font-awesome.min.css') }}">
	<link rel="stylesheet" href="{{ asset('/dist/css/AdminLTE.min.css') }}">
	
	@yield('head')
</head>
<body class="hold-transition login-page">
	@yield('content')
<script src="{{ asset('/plugins/jQuery/jQuery-2.1.4.min.js') }}"></script>
<script src="{{ asset('/bootstrap/js/bootstrap.min.js') }}"></script>
@yield('foot')
</body>
</html>
