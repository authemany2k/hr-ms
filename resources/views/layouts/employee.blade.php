<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Laravel Human Resource Management</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="{{ asset('/bootstrap/css/bootstrap.min.css') }}">
	<link rel="stylesheet" href="{{ asset('/dist/css/font-awesome.min.css') }}">
	<link rel="stylesheet" href="{{ asset('/dist/css/AdminLTE.css') }}">
	<link rel="stylesheet" href="{{ asset('/dist/css/app.css') }}">
	<link rel="stylesheet" href="{{ asset('/dist/css/skins/skin-green.min.css') }}">
	@yield('head')
</head>
<body class="hold-transition skin-green layout-boxed layout-top-nav">
	<div class="wrapper">
		<header class="main-header">
			<nav class="navbar navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<a href="{{ asset('/') }}" class="navbar-brand"><b>Authe</b>hrm</a>
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
						<i class="fa fa-bars"></i>
						</button>
					</div>
					<div class="collapse navbar-collapse pull-left" id="navbar-collapse">
						<ul class="nav navbar-nav">
							@if(Auth::user()->role->role_permission('view_absences'))
							<li><a href="{{ asset('/absences') }}"><span>Absences</span></a></li>
							@endif
							@if(Auth::user()->role->role_permission('view_awards'))
							<li><a href="{{ asset('/awards') }}"><span>Awards</span></a></li>
							@endif
							@if(Auth::user()->role->role_permission('view_documents'))
							<li><a href="{{ asset('/documents') }}"><span>Documents</span></a></li>
							@endif
							@if(Auth::user()->role->role_permission('view_events'))
							<li><a href="{{ asset('/events') }}"><span>Events</span></a></li>
							@endif
							@if(Auth::user()->role->role_permission('view_expenses'))
							<li><a href="{{ asset('/expenses') }}"><span>Expenses</span></a></li>
							@endif
							@if(Auth::user()->role->role_permission('view_leaves'))
							<li><a href="{{ asset('/leaves') }}"><span>Leaves</span></a></li>
							@endif
							@if(Auth::user()->role->role_permission('view_notices'))
							<li><a href="{{ asset('/notices') }}"><span>Notices</span></a></li>
							@endif
							@if(Auth::user()->role->role_permission('view_job_vacancies'))
							<li><a href="{{ asset('/job-vacancies') }}"><span>Vacancies</span></a></li>
							@endif
							@if(Auth::user()->role->role_permission('view_candidates'))
							<li><a href="{{ asset('/candidates') }}"><span>Candidates</span></a></li>
							@endif
							@if(Auth::user()->role->role_permission('view_users'))
							<li><a href="{{ asset('/users') }}"><span>Users</span></a></li>
							@endif
						</ul>
					</div>
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<li class="dropdown user user-menu">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="{{ asset(Auth::user()->profile_picture) }}" class="user-image" alt="User Image">
								<span class="hidden-xs">{{ Auth::user() ? Auth::user()->first_name.' '.Auth::user()->last_name : '' }}</span>
								</a>
								<ul class="dropdown-menu">
									<li class="user-header">
										<img src="{{ asset(Auth::user()->profile_picture) }}" class="img-circle" alt="User Image">
										<p>
										{{ Auth::user() ? Auth::user()->first_name.' '.Auth::user()->last_name : '' }}
										<small>{{ Auth::user() && Auth::user()->designation_item ? Auth::user()->designation_item->designation_item : '' }}</small>
										</p>
									</li>
									<li class="user-footer">
										<div class="pull-right">
										<a href="{{ asset('/logout') }}" class="btn btn-default btn-flat">Sign out</a>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
		<div class="content-wrapper">
			<div class="container">
			@yield('content')
			</div>
		</div>
		<footer class="main-footer">
			<div class="container">
			<div class="pull-right hidden-xs">
			<strong>Laravel</strong> Human Resource Management
			</div>
			<strong>Copyright &copy; 2016 <a href="http://www.maxwebinc.com/">Maxweb, Inc.</a></strong> All rights reserved.
			</div>
		</footer>
	</div>
	

<script src="{{ asset('plugins/jQuery/jQuery-2.1.4.min.js') }}"></script>
<script src="{{ asset('bootstrap/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('dist/js/app.min.js') }}"></script>
@yield('foot')
</body>
</html>
