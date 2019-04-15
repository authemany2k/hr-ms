@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Cut Offs
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				@include('alert.success')
				@if(Auth::user()->role->role_permission('create_cut_offs'))
				<a href="{{ asset('/cut-offs/create') }}" type="button" class="btn btn-success btn-flat margin">New Cut Off</a>
				@endif
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">Cut Offs List</h3>
						<div class="box-tools">
							{!! Form::open(['url' => '/cut-offs/search', 'method' => 'get']) !!}
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
								<th>Date Start</th>
								<th>Date End</th>
								@if(Auth::user()->role->role_permission('edit_cut_offs') || Auth::user()->role->role_permission('delete_cut_offs'))
								<th>Action</th>
								@endif
							</tr>
							@foreach($cut_offs as $cut_off)
							<tr>
								<td>{{ $cut_off->id }}</td>
								<td>{{ $cut_off->date_start }}</td>
								<td>{{ $cut_off->date_end }}</td>
								@if(Auth::user()->role->role_permission('edit_cut_offs') || Auth::user()->role->role_permission('delete_cut_offs'))
								<td>
									<div class="btn-group">
										@if(Auth::user()->role->role_permission('edit_cut_offs'))
										<a href="{{ asset('cut-offs/'.$cut_off->id.'/edit') }}" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-pencil"></i></a>
										@endif
										@if(Auth::user()->role->role_permission('delete_cut_offs'))
										<a type="button" class="btn btn-default btn-flat btn-sm" title="Delete" data-toggle="modal" data-target="#deleteModal{{ $cut_off->id }}"><i class="fa fa-trash"></i></a>
										<div id="deleteModal{{ $cut_off->id }}" class="modal fade" role="dialog">
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
											{!! Form::open(['url' => ['cut-offs/'.$cut_off->id], 'method' => 'delete']) !!}
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
								Showing {{ $cut_offs->firstItem() }} to {{ $cut_offs->lastItem() }} of {{ $cut_offs->total() }} entries
								<div class="pull-right">
								{!! $cut_offs->links() !!}
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