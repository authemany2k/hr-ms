@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Attendances
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				@include('alert.success')
				@if(Auth::user()->role->role_permission('create_attendances'))
				<a href="{{ asset('/attendances/create') }}" type="button" class="btn btn-success btn-flat margin">New Attendance</a>
				@endif
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">Attendance List</h3>
						<div class="box-tools">
							{!! Form::open(['url' => '/attendances/search', 'method' => 'get']) !!}
							<div class="input-group input-group-sm" style="width: 150px;">
							{!! Form::text('term', null, ['class' => 'form-control pull-right', 'placeholder' => 'Search']) !!}
							<div class="input-group-btn">
							<button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
							</div>
							</div>
							{!! Form::close() !!}
						</div>
					</div>
					<div class="box-body table-responsive no-padding">
						<table class="table table-hover">
							<tr>
								<th>ID</th>
								<th>Employee</th>
								<th>Date</th>
								<th>Time In</th>
								<th>Time Out</th>
								@if(Auth::user()->role->role_permission('edit_attendances') || Auth::user()->role->role_permission('delete_attendances'))
								<th>Action</th>
								@endif
							</tr>
							@foreach($attendances as $attendance)
							<tr>
								<td>{{ $attendance->id }}</td>
								<td><a href="{{ $attendance->user ? asset('/users/'.$attendance->user->id) : '' }}">{{ $attendance->user ? $attendance->user->first_name.' '.$attendance->user->last_name : '' }}</a></td>
								<td>{{ $attendance->date }}</td>
								<td>{{ $attendance->time_in }}</td>
								<td>{{ $attendance->time_out }}</td>
								@if(Auth::user()->role->role_permission('edit_attendances') || Auth::user()->role->role_permission('delete_attendances'))
								<td>
									<div class="btn-group">
										@if(Auth::user()->role->role_permission('edit_attendances'))
										<a href="{{ asset('attendances/'.$attendance->id.'/edit') }}" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-pencil"></i></a>
										@endif
										@if(Auth::user()->role->role_permission('delete_attendances'))
										<a type="button" class="btn btn-default btn-flat btn-sm" title="Delete" data-toggle="modal" data-target="#deleteModal{{ $attendance->id }}"><i class="fa fa-trash"></i></a>
										<div id="deleteModal{{ $attendance->id }}" class="modal fade" role="dialog">
											<div class="modal-dialog">
											<div class="modal-content">
											<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
											<h4 class="modal-title">Confirm Delete</h4>
											</div>
											<div class="modal-body">
											<p>Are you sure you want to delete this item?</p>
											</div>
											<div class="modal-footer">
											<button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal">Close</button>
											{!! Form::open(['url' => ['attendances/'.$attendance->id], 'method' => 'delete']) !!}
											{!! Form::submit('Yes', ['class' => 'btn btn-success btn-flat']) !!}
											{!! Form::close() !!}
											</div>
											</div>
											</div>
										</div>
										@endif
									</div>
								</td>
								@endif
							</tr>
							@endforeach
						</table>
					</div>
					<div class="box-footer clearfix">
						<div class="row">
							<div class="col-md-12">
								Showing {{ $attendances->firstItem() }} to {{ $attendances->lastItem() }} of {{ $attendances->total() }} entries
								<div class="pull-right">
								{!! $attendances->links() !!}
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection