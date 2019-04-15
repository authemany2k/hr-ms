@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Candidates
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				@include('alert.success')
				@if(Auth::user()->role->role_permission('create_candidates'))
				<a href="{{ asset('/candidates/create') }}" type="button" class="btn btn-success btn-flat margin">New Candidate</a>
				@endif
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">Candidate List</h3>
						<div class="box-tools">
							{!! Form::open(['url' => '/candidates/search', 'method' => 'get']) !!}
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
								<th>Candidate</th>
								<th>Position</th>
								<th>Hiring Manager</th>
								<th>Date of Application</th>
								<th>Status</th>
								<th>Resume</th>
								@if(Auth::user()->role->role_permission('edit_candidates') || Auth::user()->role->role_permission('delete_candidates'))
								<th>Action</th>
								@endif
							</tr>
							@foreach($candidates as $candidate)
							<tr>
								<td>{{ $candidate->id }}</td>
								<td><a href="{{ asset('candidates/'.$candidate->id) }}">{{ $candidate->first_name }} {{ $candidate->last_name }}</a></td>
								<td>{{ $candidate->job_vacancy ? $candidate->job_vacancy->job_title : '' }}</td>
								<td><a href="{{ ($candidate->job_vacancy && $candidate->job_vacancy->user) ? asset('/users/'.$candidate->job_vacancy->user->id) : '' }}">{{ $candidate->job_vacancy && $candidate->job_vacancy->user ? $candidate->job_vacancy->user->first_name . " " . $candidate->job_vacancy->user->last_name : '' }}</a></td>
								<td>{{ $candidate->application_date }}</td>
								<td>{{ $candidate->status }}</td>
								<td>{!! $candidate->resume_link !!}</td>
								@if(Auth::user()->role->role_permission('edit_candidates') || Auth::user()->role->role_permission('delete_candidates'))
								<td>
									<div class="btn-group">
										@if(Auth::user()->role->role_permission('edit_candidates'))
										<a href="{{ asset('candidates/'.$candidate->id.'/edit') }}" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-pencil"></i></a>
										@endif
										@if(Auth::user()->role->role_permission('delete_candidates'))
										<a type="button" class="btn btn-default btn-flat btn-sm" title="Delete" data-toggle="modal" data-target="#deleteModal{{ $candidate->id }}"><i class="fa fa-trash"></i></a>
										<div id="deleteModal{{ $candidate->id }}" class="modal fade" role="dialog">
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
											{!! Form::open(['url' => ['candidates/'.$candidate->id], 'method' => 'delete']) !!}
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
								Showing {{ $candidates->firstItem() }} to {{ $candidates->lastItem() }} of {{ $candidates->total() }} entries
								<div class="pull-right">
								{!! $candidates->links() !!}
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