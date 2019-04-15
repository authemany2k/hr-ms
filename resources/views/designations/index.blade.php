@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Designations
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				@include('alert.success')
				@if(Auth::user()->role->role_permission('create_designations'))
				<a href="{{ asset('/designations/create') }}" type="button" class="btn btn-success btn-flat margin">New Designation</a>
				@endif
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">Designation List</h3>
						<div class="box-tools">
							{!! Form::open(['url' => '/designations/search', 'method' => 'get']) !!}
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
								<th>Designation</th>
								<th>Date Start</th>
								<th>Date End</th>
								@if(Auth::user()->role->role_permission('edit_designations') || Auth::user()->role->role_permission('delete_designations'))
								<th>Action</th>
								@endif
							</tr>
							@foreach($designations as $designation)
							<tr>
								<td>{{ $designation->id }}</td>
								<td><a href="{{ $designation->user ? asset('/users/'.$designation->user->id) : '' }}">{{ $designation->user ? $designation->user->first_name.' '.$designation->user->last_name : '' }}</a></td>
								<td>{{ $designation->designation_item ? $designation->designation_item->designation_item : '' }}</td>
								<td>{{ $designation->date_start }}</td>
								<td>{{ $designation->date_end }}</td>
								@if(Auth::user()->role->role_permission('edit_designations') || Auth::user()->role->role_permission('delete_designations'))
								<td>
									<div class="btn-group">
										@if(Auth::user()->role->role_permission('edit_designations'))
										<a href="{{ asset('designations/'.$designation->id.'/edit') }}" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-pencil"></i></a>
										@endif
										@if(Auth::user()->role->role_permission('delete_designations'))
										<a type="button" class="btn btn-default btn-flat btn-sm" title="Delete" data-toggle="modal" data-target="#deleteModal{{ $designation->id }}"><i class="fa fa-trash"></i></a>
										<div id="deleteModal{{ $designation->id }}" class="modal fade" role="dialog">
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
											{!! Form::open(['url' => ['designations/'.$designation->id], 'method' => 'delete']) !!}
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
								Showing {{ $designations->firstItem() }} to {{ $designations->lastItem() }} of {{ $designations->total() }} entries
								<div class="pull-right">
								{!! $designations->links() !!}
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