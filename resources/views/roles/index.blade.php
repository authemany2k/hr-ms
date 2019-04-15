@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Roles
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				@include('alert.success')

				<a href="{{ asset('/roles/create') }}" type="button" class="btn btn-success btn-flat margin">New Role</a>
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">Role List</h3>
						<div class="box-tools">
							{!! Form::open(['url' => '/roles/search', 'method' => 'get']) !!}
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
								<th>Role</th>
								<th>Action</th>
							</tr>
							@foreach($roles as $role)
							<tr>
								<td>{{ $role->id }}</td>
								<td>{{ $role->role }}</td>
								<td>
									@if($role->id != 1)
									<div class="btn-group">
										<a href="{{ asset('roles/'.$role->id.'/edit') }}" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-pencil"></i></a>
										@if($role->id != 2 && $role->id != 3)
										<a type="button" class="btn btn-default btn-flat btn-sm" title="Delete" data-toggle="modal" data-target="#deleteModal{{ $role->id }}"><i class="fa fa-trash"></i></a>
										<div id="deleteModal{{ $role->id }}" class="modal fade" role="dialog">
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
											{!! Form::open(['url' => ['roles/'.$role->id], 'method' => 'delete']) !!}
											{!! Form::submit('Yes', ['class' => 'btn btn-success btn-flat']) !!}
											{!! Form::close() !!}
											</div>
											</div>
											</div>
										</div>
										@endif
									</div>
									@endif
								</td>
							</tr>
							@endforeach
						</table>
					</div>
					<div class="box-footer clearfix">
						<div class="row">
							<div class="col-xs-12">
								Showing {{ $roles->firstItem() }} to {{ $roles->lastItem() }} of {{ $roles->total() }} entries
								<div class="pull-right">
								{!! $roles->links() !!}
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