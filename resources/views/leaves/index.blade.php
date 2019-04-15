@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Leaves
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				@include('alert.success')
				@if(Auth::user()->role->role_permission('create_leaves'))
				<a href="{{ asset('/leaves/create') }}" type="button" class="btn btn-success btn-flat margin">New Leave</a>
				@endif
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">Leave List</h3>
						<div class="box-tools">
							{!! Form::open(['url' => '/leaves/search', 'method' => 'get']) !!}
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
								<th>Leave Type</th>
								<th>Date From</th>
								<th>Date To</th>
								<th>Applied On</th>
								<th>Reason</th>
								<th>Comment</th>
								<th>Status</th>
								@if(Auth::user()->role->role_permission('edit_leaves') || Auth::user()->role->role_permission('delete_leaves'))
								<th>Action</th>
								@endif
							</tr>
							@foreach($leaves as $leave)
							<tr>
								<td>{{ $leave->id }}</td>
								<td><a href="{{ $leave->user ? asset('/users/'.$leave->user->id) : '' }}">{{ $leave->user ? $leave->user->first_name.' '.$leave->user->last_name : '' }}</a></td>
								<td>{{ $leave->leave_type ? $leave->leave_type->leave_type : '' }}</td>
								<td>{{ $leave->date_from }}</td>
								<td>{{ $leave->date_to }}</td>
								<td>{{ $leave->applied_on }}</td>
								<td>{{ $leave->reason }}</td>
								<td>{{ $leave->comment }}</td>
								<td>{{ $leave->status }}</td>
								@if(Auth::user()->role->role_permission('edit_leaves') || Auth::user()->role->role_permission('delete_leaves'))
								<td>
									<div class="btn-group">
										@if(Auth::user()->role->role_permission('edit_leaves'))
										<a href="{{ asset('leaves/'.$leave->id.'/edit') }}" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-pencil"></i></a>
										@endif
										@if(Auth::user()->role->role_permission('delete_leaves'))
										<a type="button" class="btn btn-default btn-flat btn-sm" title="Delete" data-toggle="modal" data-target="#deleteModal{{ $leave->id }}"><i class="fa fa-trash"></i></a>
										<div id="deleteModal{{ $leave->id }}" class="modal fade" role="dialog">
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
											{!! Form::open(['url' => ['leaves/'.$leave->id], 'method' => 'delete']) !!}
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
							<div class="col-xs-12">
								Showing {{ $leaves->firstItem() }} to {{ $leaves->lastItem() }} of {{ $leaves->total() }} entries
								<div class="pull-right">
								{!! $leaves->links() !!}
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