@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Accounts
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				@include('alert.success')
				@if(Auth::user()->role->role_permission('create_users'))
				<a href="{{ asset('/users/create') }}" type="button" class="btn btn-success btn-flat margin">New Account</a>
				@endif
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">Account List</h3>
						<div class="box-tools">
							{!! Form::open(['url' => '/users/search', 'method' => 'get']) !!}
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
								<th>Employee ID</th>
								<th>Account</th>
								<th>Gender</th>
								<th>Email</th>
								<th>Department</th>
								<th>Designation</th>
								<th>Role</th>
								@if(Auth::user()->role->role_permission('edit_users') || Auth::user()->role->role_permission('delete_users'))
								<th>Action</th>
								@endif
							</tr>
							@foreach($users as $user)
							<tr>
								<td>{{ $user->employee_id }}</td>
								<td><a href="{{ asset('users/'.$user->id) }}">{{ $user->first_name.' '.$user->last_name }}</a></td>
								<td>{{ $user->gender_text() }}</td>
								<td>{{ $user->email }}</td>
								<td>{{ $user->department ? $user->department->department : '' }}</td>
								<td>{{ $user->designation_item ? $user->designation_item->designation_item : '' }}</td>
								<td>{{ $user->role ? $user->role->role : '' }}</td>
								@if(Auth::user()->role->role_permission('edit_users') || Auth::user()->role->role_permission('delete_users'))
								<td>
									<div class="btn-group">
										@if(Auth::user()->role->role_permission('edit_users'))
										<a href="{{ asset('users/'.$user->id.'/edit') }}" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-pencil"></i></a>
										@endif
										@if(Auth::user()->role->role_permission('delete_users') && $user->id != 1)
										<a type="button" class="btn btn-default btn-flat btn-sm" title="Delete" data-toggle="modal" data-target="#deleteModal{{ $user->id }}"><i class="fa fa-trash"></i></a>
										<div id="deleteModal{{ $user->id }}" class="modal fade" role="dialog">
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
											{!! Form::open(['url' => ['users/'.$user->id], 'method' => 'delete']) !!}
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
								Showing {{ $users->firstItem() }} to {{ $users->lastItem() }} of {{ $users->total() }} entries
								<div class="pull-right">
								{!! $users->links() !!}
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