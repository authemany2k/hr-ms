@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Departments
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				@include('alert.success')

				<a href="{{ asset('departments/'.$department->id.'/designation-items/create') }}" type="button" class="btn btn-success btn-flat margin">New Designation Item</a>
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">Designation Item List</h3>
						<div class="box-tools">
							<div class="input-group input-group-sm" style="width: 150px;">
							<input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

							<div class="input-group-btn">
							<button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
							</div>
							</div>
						</div>
					</div>
					<div class="box-body table-responsive no-padding">
						<table class="table table-hover">
							<tr>
								<th>ID</th>
								<th>Designation Item</th>
								<th>Action</th>
							</tr>
							@foreach($department->designation_items as $designation_item)
							<tr>
								<td>{{ $designation_item->id }}</td>
								<td>{{ $designation_item->designation_item }}</td>
								<td>
									<div class="btn-group">
										<a href="{{ asset('departments/'.$department->id.'/designation-items/'.$designation_item->id.'/edit') }}" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-pencil"></i></a>
										<a type="button" class="btn btn-default btn-flat btn-sm" title="Delete" data-toggle="modal" data-target="#deleteModal{{ $designation_item->id }}"><i class="fa fa-trash"></i></a>
										<div id="deleteModal{{ $designation_item->id }}" class="modal fade" role="dialog">
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
											{!! Form::open(['url' => ['/departments/'.$department->id.'/designation-items/'.$designation_item->id], 'method' => 'delete']) !!}
											{!! Form::submit('Yes', ['class' => 'btn btn-success btn-flat']) !!}
											{!! Form::close() !!}
											</div>
											</div>
											</div>
										</div>
									</div>
								</td>
							</tr>
							@endforeach
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection