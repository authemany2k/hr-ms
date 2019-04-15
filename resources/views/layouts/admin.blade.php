<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Laravel Human Resource Management</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="{{ asset('/bootstrap/css/bootstrap.min.css') }}">
	<link rel="stylesheet" href="{{ asset('/dist/css/font-awesome.min.css') }}">
	<link rel="stylesheet" href="{{ asset('/dist/css/AdminLTE.min.css') }}">
	<link rel="stylesheet" href="{{ asset('/dist/css/app.css') }}">
	<link rel="stylesheet" href="{{ asset('/dist/css/skins/skin-green.min.css') }}">
	<link rel="stylesheet" href="{{ asset('plugins/pace/pace.min.css') }}">
	@yield('head')
</head>
<body class="hold-transition skin-green sidebar-mini">
	<div class="wrapper">
		<header class="main-header">
			<a href="{{ url('/') }}" class="logo">
				<span class="logo-mini"><b>A</b>hrm</span>
				<span class="logo-lg"><b>Authe</b>hrm</span>
			</a>

			<nav class="navbar navbar-static-top" role="navigation">
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
					<span class="sr-only">Toggle navigation</span>
				</a>

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
									<a href="{{ url('/logout') }}" class="btn btn-default btn-flat">Sign out</a>
									</div>
								</li>
							</ul>
						</li>
					</ul>
				</div>

			</nav>
		</header>
		
		<aside class="main-sidebar">
			<section class="sidebar">
				<ul class="sidebar-menu">
					<li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
					<li><a href="{{ url('/users') }}"><i class="fa fa-users"></i> <span>Employees</span></a></li>
					<li><a href="{{ url('/absences') }}"><i class="fa fa-user-times"></i> <span>Absences</span></a></li>
					<li class="treeview">
						<a href="#"><i class="fa fa-hand-paper-o"></i><span>Attendances</span><i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
						<li><a href="{{ url('/attendances') }}"><i class="fa fa-hand-paper-o"></i> <span>Attendances</span></a></li>
						<li><a href="{{ url('/cut-offs') }}"><i class="fa fa-clock-o"></i> <span>Cut Offs</span></a></li>
						</ul>
					</li>
					<li><a href="{{ url('/awards') }}"><i class="fa fa-trophy"></i> <span>Awards</span></a></li>
					<li><a href="{{ url('/bank-accounts') }}"><i class="fa fa-bank"></i> <span>Bank Accounts</span></a></li>
					<li class="treeview">
						<a href="#"><i class="fa fa-briefcase"></i><span>Departments</span><i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
						<li><a href="{{ url('/departments') }}"><i class="fa fa-briefcase"></i> <span>Departments</span></a></li>
						<li><a href="{{ url('/designation-items') }}"><i class="fa fa-gavel"></i> <span>Designation Items</span></a></li>
						<li><a href="{{ url('/designations') }}"><i class="fa fa-gavel"></i> <span>Designations/Promotions</span></a></li>
						</ul>
					</li>
					<li class="treeview">
						<a href="#"><i class="fa fa-file"></i><span>Documents</span><i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
						<li><a href="{{ url('/documents') }}"><i class="fa fa-file"></i> <span>Documents</span></a></li>
						<li><a href="{{ url('/document-types') }}"><i class="fa fa-file-text"></i> <span>Document Types</span></a></li>
						</ul>
					</li>
					<li><a href="{{ url('/events') }}"><i class="fa fa-calendar"></i> <span>Events</span></a></li>
					<li><a href="{{ url('/expenses') }}"><i class="fa fa-money"></i> <span>Expenses</span></a></li>
					<li><a href="{{ url('/holidays') }}"><i class="fa fa-tree"></i> <span>Holidays</span></a></li>
					<li class="treeview">
						<a href="#"><i class="fa fa-rocket"></i><span>Leaves</span><i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
						<li><a href="{{ url('/leaves') }}"><i class="fa fa-rocket"></i> <span>Leaves</span></a></li>
						<li><a href="{{ url('/leave-types') }}"><i class="fa fa-sun-o"></i> <span>Leave Types</span></a></li>
						</ul>
					</li>
					<li><a href="{{ url('/notices') }}"><i class="fa fa-sticky-note-o"></i> <span>Notice</span></a></li>
					<li><a href="{{ url('/roles') }}"><i class="fa fa-list-alt"></i> <span>Roles</span></a></li>
					<li class="treeview">
						<a href="#"><i class="fa fa-laptop"></i><span>Recruitment</span><i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
						<li><a href="{{ url('/candidates') }}"><i class="fa fa-user"></i> <span>Candidates</span></a></li>
						<li><a href="{{ url('/job-vacancies') }}"><i class="fa fa-circle-o"></i> <span>Vacancies</span></a></li>
						</ul>
					</li>
				</ul>
			</section>
		</aside>


		@yield('content')
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
			<strong class="text-green">Autheman</strong> Human Resource Management
			</div>
			<strong>Copyright &copy; 2019 <a href="http://www.authemanict.com/">Autheman ICT LTD.</a></strong> All rights reserved.
		</footer>

	</div>

<script src="{{ asset('plugins/jQuery/jQuery-2.1.4.min.js') }}"></script>
<script src="{{ asset('bootstrap/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('plugins/pace/pace.min.js') }}"></script>
<script src="{{ asset('plugins/slimScroll/jquery.slimscroll.min.js') }}"></script>
<script src="{{ asset('plugins/fastclick/fastclick.js') }}"></script>
<script src="{{ asset('dist/js/app.min.js') }}"></script>
@yield('foot')
</body>
</html>
