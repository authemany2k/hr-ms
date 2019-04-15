@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">

	<section class="content">
		<?php /* <a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/edit') }}"><i class="fa fa-edit"></i> Edit</a>
		<a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/absences/create') }}"><i class="fa fa-user-times"></i> Absence</a>
		<a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/awards/create') }}"><i class="fa fa-trophy"></i> Award</a>
		<a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/documents/create') }}"><i class="fa fa-file"></i> Document</a>
		<a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/expenses/create') }}"><i class="fa fa-money"></i> Expense</a>
		<a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/leaves/create') }}"><i class="fa fa-rocket"></i> Leave</a>
		<a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/bank-account/create') }}"><i class="fa fa-bank"></i> Bank Account</a> */ ?>
		<div class="row">
			<div class="col-md-3">
				<div class="box box-success">
					<div class="box-body box-profile">
						<img class="profile-user-img img-responsive img-circle" src="{{ asset(Auth::user()->profile_picture) }}" alt="User profile picture">
						<h3 class="profile-username text-center">{{ Auth::user()->first_name.' '.Auth::user()->last_name }}</h3>
						<p class="text-center no-margin">{{ Auth::user()->designation_item ? Auth::user()->designation_item->designation_item : '' }}</p>
						<p class="small text-center no-margin"><span class="text-muted">Department:</span> {{ Auth::user()->department ? Auth::user()->department->department : '' }}</p>
						<p class="small text-center no-margin"><span class="text-muted">Employee ID:</span> {{ Auth::user()->employee_id }}</p>
					</div>
					<div class="box-footer">
						<div class="row">
							<!--<div class="col-sm-4 border-right">
								<div class="description-block">
								<h5 class="description-header">8/11</h5>
								<span class="description-text small">Attendance</span>
								</div>
							</div>-->
							<div class="col-sm-6 border-right">
								<div class="description-block">
								<h5 class="description-header">{{ Auth::user()->leaves->count() }}</h5>
								<span class="description-text small">Leave</span>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="description-block">
								<h5 class="description-header">{{ Auth::user()->awards->count() }}</h5>
								<span class="description-text small">Awards</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="small-box bg-black">
					<div class="inner datebar" align="center">
						<p><?php echo date('l'). ", " .date('jS \of F, Y'); ?></p>
						<h3 id="clock"></h3>
						<br />
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<div class="row">
					<div class="col-md-6">
						<div class="box box-success">
							<div class="box-header">
								<h3 class="box-title">Personal Details</h3>
							</div>
							<div class="box-body no-padding">
								<table class="table">
									<tbody>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-birthday-cake"></i></td>
										<td><strong>Birthday</strong></td>
										<td>{{ Auth::user()->birthday }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-genderless"></i></td>
										<td><strong>Gender</strong></td>
										<td>{{ Auth::user()->gender_text() }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-envelope-o"></i></td>
										<td><strong>Email</strong></td>
										<td>{{ Auth::user()->email }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-phone"></i></td>
										<td><strong>Telephone</strong></td>
										<td>{{ Auth::user()->telephone }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-mobile-phone"></i></td>
										<td><strong>Cellphone</strong></td>
										<td>{{ Auth::user()->cellphone }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-map-marker"></i></td>
										<td><strong>Local Address</strong></td>
										<td>{{ Auth::user()->local_address }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-map-marker"></i></td>
										<td><strong>Permanent Address</strong></td>
										<td>{{ Auth::user()->permanent_address }}</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="box box-success">
							<div class="box-header">
								<h3 class="box-title">Company Details</h3>
							</div>
							<div class="box-body no-padding">
								<table class="table">
									<tbody>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-key"></i></td>
										<td><strong>Employee ID</strong></td>
										<td>{{ Auth::user()->employee_id }}</td>
									</tr>
									<tr>
										<td class="text-center"><i class="fa fa-briefcase"></i></td>
										<td><strong>Department</strong></td>
										<td>{{ Auth::user()->department ? Auth::user()->department->department : '' }}</td>
									</tr>
									<tr>
										<td class="text-center"><i class="fa fa-cubes"></i></td>
										<td><strong>Designation</strong></td>
										<td>{{ Auth::user()->designation_item ? Auth::user()->designation_item->designation_item : '' }}</td>
									</tr>
									<tr>
										<td class="text-center"><i class="fa fa-calendar-check-o"></i></td>
										<td><strong>Date Hired</strong></td>
										<td>{{ Auth::user()->date_hired }}</td>
									</tr>
									<tr>
										<td class="text-center"><i class="fa fa-credit-card"></i></td>
										<td><strong>Salary</strong></td>
										<td>{{ Auth::user()->salary }}</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="box box-success">
							<div class="box-header">
								<h3 class="box-title">Bank Details</h3>
							</div>
							<div class="box-body no-padding">
								<table class="table">
									<tbody>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-credit-card-alt"></i></td>
										<td><strong>Account Name</strong></td>
										<td>{{ Auth::user()->bank_account ? Auth::user()->bank_account->account_name : '' }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-hashtag"></i></td>
										<td><strong>Account Number</strong></td>
										<td>{{ Auth::user()->bank_account ? Auth::user()->bank_account->account_number : '' }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-bank"></i></td>
										<td><strong>Bank Name</strong></td>
										<td>{{ Auth::user()->bank_account ? Auth::user()->bank_account->bank_name : '' }}</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title"><i class="fa fa-bell-o"></i> Notice Board</h3>
							</div>
							<div class="box-body">
								<ul class="products-list product-list-in-box">
									@foreach($notices as $notice)
									<li class="item">
										<div class="product-img">
											<img src="{{ asset($notice->image) }}" alt="Product Image">
										</div>
										<div class="product-info">
											<a href="{{ asset('notices/'.$notice->id) }}" class="product-title">{{ $notice->title }}
											<span class="label label-success pull-right">{{ $notice->created_at }}</span></a>
											<span class="product-description">
											{{ $notice->description }}
											</span>
										</div>
									</li>
									@endforeach
								</ul>
							</div>
							<div class="box-footer text-center">
								<a href="{{ asset('notices') }}" class="uppercase">View All</a>
							</div>
						</div>
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title"><i class="fa fa-calendar-o"></i> Upcoming Events</h3>
							</div>
							<div class="box-body">
								<ul class="products-list product-list-in-box">
									@foreach($events as $event)
									<li class="item">
										<div class="product-img">
											<img src="{{ asset($event->image) }}" alt="Product Image">
										</div>
										<div class="product-info">
											<a href="{{ asset('events/'.$event->id) }}" class="product-title">{{ $event->event_name }}
											<span class="label label-success pull-right">{{ $event->date_start }}</span></a>
											<span class="product-description">
											{{ $event->description }}
											</span>
										</div>
									</li>
									@endforeach
								</ul>
							</div>
							<div class="box-footer text-center">
								<a href="{{ asset('events') }}" class="uppercase">View All</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection

@section('foot')
	<script type="text/javascript">
		function startTime() {
			var today=new Date(),
			curr_hour=today.getHours(),
			curr_min=today.getMinutes(),
			curr_sec=today.getSeconds();
			curr_hour=checkTime(curr_hour);
			curr_min=checkTime(curr_min);
			curr_sec=checkTime(curr_sec);
			document.getElementById('clock').innerHTML=curr_hour+":"+curr_min+":"+curr_sec;
		}
		function checkTime(i) {
			if (i<10) {
				i="0" + i;
			}
			return i;
		}
		setInterval(startTime, 500);
	</script>
@endsection