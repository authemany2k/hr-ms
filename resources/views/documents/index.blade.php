@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Documents
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				@include('alert.success')
				@if(Auth::user()->role->role_permission('create_documents'))
				<a href="{{ asset('/documents/create') }}" type="button" class="btn btn-success btn-flat margin">New Document</a>
				@endif
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">Document List</h3>
						<div class="box-tools">
							{!! Form::open(['url' => '/documents/search', 'method' => 'get']) !!}
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
								<th>Document Type</th>
								@if(Auth::user()->role->role_permission('edit_documents') || Auth::user()->role->role_permission('delete_documents'))
								<th>Action</th>
								@endif
							</tr>
							@foreach($documents as $document)
							<tr>
								<td>{{ $document->id }}</td>
								<td><a href="{{ $document->user ? asset('/users/'.$document->user->id) : '' }}">{{ $document->user ? $document->user->first_name.' '.$document->user->last_name : '' }}</a></td>
								<td>{{ $document->document_type ? $document->document_type->document_type : '' }}</td>
								@if(Auth::user()->role->role_permission('edit_documents') || Auth::user()->role->role_permission('delete_documents'))
								<td>
									<div class="btn-group">
										<a href="{{ asset('documents/'.$document->id) }}" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-download"></i></a>
										@if(Auth::user()->role->role_permission('edit_documents'))
										<a href="{{ asset('documents/'.$document->id.'/edit') }}" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-pencil"></i></a>
										@endif
										@if(Auth::user()->role->role_permission('delete_documents'))
										<a type="button" class="btn btn-default btn-flat btn-sm" title="Delete" data-toggle="modal" data-target="#deleteModal{{ $document->id }}"><i class="fa fa-trash"></i></a>
										<div id="deleteModal{{ $document->id }}" class="modal fade" role="dialog">
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
											{!! Form::open(['url' => ['documents/'.$document->id], 'method' => 'delete']) !!}
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
								Showing {{ $documents->firstItem() }} to {{ $documents->lastItem() }} of {{ $documents->total() }} entries
								<div class="pull-right">
								{!! $documents->links() !!}
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