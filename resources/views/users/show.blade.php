@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Profile
		</h1>
	</section>

	<section class="content">
		<a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/edit') }}"><i class="fa fa-edit"></i> Edit</a>
		<a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/absences/create') }}"><i class="fa fa-user-times"></i> Absence</a>
		<a type="button" class="btn btn-app btn-flat bg-green" data-toggle="modal" data-target="#attendance"><i class="fa fa-hand-paper-o"></i> Attendance</a>
		<div id="attendance" class="modal fade" role="dialog">
			<div class="modal-dialog">
			<div class="modal-content">
			{!! Form::open(['url' => ['users/'.$user->id.'/attendances/create/cut-off']]) !!}
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<h4 class="modal-title">Select Cut Off Period</h4>
			</div>
			<div class="modal-body">
			<div class="form-group">
				{!! Form::label('cut_off_id', 'Cut Off') !!}<br />
				{!! Form::select('cut_off_id', $cut_offs, null, ['class' => 'form-control', 'id' => 'cut_off']) !!}
				@if ($errors->has('cut_off_id') || $errors->has('document_type'))
					<span class="help-block">
						<strong>{{ $errors->first('cut_off_id') }}</strong>
					</span>
				@endif
			</div>
			</div>
			<div class="modal-footer">
			<button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal">Close</button>
			{!! Form::submit('Yes', ['class' => 'btn btn-success btn-flat']) !!}
			</div>
			{!! Form::close() !!}
			</div>
			</div>
		</div>
		<a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/awards/create') }}"><i class="fa fa-trophy"></i> Award</a>
		<a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/documents/create') }}"><i class="fa fa-file"></i> Document</a>
		<a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/expenses/create') }}"><i class="fa fa-money"></i> Expense</a>
		<a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/leaves/create') }}"><i class="fa fa-rocket"></i> Leave</a>
		<a class="btn btn-app btn-flat bg-green" href="{{ asset('/users/'.$user->id.'/bank-account/create') }}"><i class="fa fa-bank"></i> Bank Account</a>
		<div class="row">
			<div class="col-md-3">
				<div class="box box-success">
					<div class="box-body box-profile">
						<img class="profile-user-img img-responsive img-circle" src="{{ asset($user->profile_picture) }}" alt="User profile picture">
						<h3 class="profile-username text-center">{{ $user->first_name.' '.$user->last_name }}</h3>
						<p class="text-center no-margin">{{ $user->designation_item ? $user->designation_item->designation_item : '' }}</p>
						<p class="small text-center no-margin"><span class="text-muted">Department:</span> {{ $user->department ? $user->department->department : '' }}</p>
						<p class="small text-center no-margin"><span class="text-muted">Employee ID:</span> {{ $user->employee_id }}</p>
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
								<h5 class="description-header">{{ $user->leaves->count() }}</h5>
								<span class="description-text small">Leave</span>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="description-block">
								<h5 class="description-header">{{ $user->awards->count() }}</h5>
								<span class="description-text small">Awards</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">Account Details</h3>
					</div>
					<div class="box-body no-padding">
						<table class="table">
							<tbody>
							<tr>
								<td style="width: 10px" class="text-center"><i class="fa fa-user"></i></td>
								<td><strong>Username</strong></td>
								<td>{{ $user->username }}</td>
							</tr>
							</tbody>
						</table>
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
										<td>{{ $user->birthday }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-genderless"></i></td>
										<td><strong>Gender</strong></td>
										<td>{{ $user->gender_text() }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-envelope-o"></i></td>
										<td><strong>Email</strong></td>
										<td>{{ $user->email }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-phone"></i></td>
										<td><strong>Telephone</strong></td>
										<td>{{ $user->telephone }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-mobile-phone"></i></td>
										<td><strong>Cellphone</strong></td>
										<td>{{ $user->cellphone }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-map-marker"></i></td>
										<td><strong>Local Address</strong></td>
										<td>{{ $user->local_address }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-map-marker"></i></td>
										<td><strong>Permanent Address</strong></td>
										<td>{{ $user->permanent_address }}</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-6">
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
										<td>{{ $user->employee_id }}</td>
									</tr>
									<tr>
										<td class="text-center"><i class="fa fa-briefcase"></i></td>
										<td><strong>Department</strong></td>
										<td>{{ $user->department ? $user->department->department : '' }}</td>
									</tr>
									<tr>
										<td class="text-center"><i class="fa fa-cubes"></i></td>
										<td><strong>Designation</strong></td>
										<td>{{ $user->designation_item ? $user->designation_item->designation_item : '' }}</td>
									</tr>
									<tr>
										<td class="text-center"><i class="fa fa-calendar-check-o"></i></td>
										<td><strong>Date Hired</strong></td>
										<td>{{ $user->date_hired }}</td>
									</tr>
									<tr>
										<td class="text-center"><i class="fa fa-credit-card"></i></td>
										<td><strong>Salary</strong></td>
										<td>{{ $user->salary }}</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
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
										<td>{{ $user->bank_account ? $user->bank_account->account_name : '' }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-hashtag"></i></td>
										<td><strong>Account Number</strong></td>
										<td>{{ $user->bank_account ? $user->bank_account->account_number : '' }}</td>
									</tr>
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-bank"></i></td>
										<td><strong>Bank Name</strong></td>
										<td>{{ $user->bank_account ? $user->bank_account->bank_name : '' }}</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="box box-success">
							<div class="box-header">
								<h3 class="box-title">Documents</h3>
							</div>
							<div class="box-body no-padding">
								<table class="table">
									<tbody>
									@foreach($user->documents as $document)
									<tr>
										<td style="width: 10px" class="text-center"><i class="fa fa-file"></i></td>
										<td><strong>{{ $document->document_type ? $document->document_type->document_type : '' }}</strong></td>
										<td><a href="{{ asset('documents/'.$document->id) }}" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-download"></i> Download</a></td>
									</tr>
									@endforeach
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection