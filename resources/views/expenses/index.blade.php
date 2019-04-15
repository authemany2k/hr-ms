@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Expenses
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				@include('alert.success')
				@if(Auth::user()->role->role_permission('create_expenses'))
				<a href="{{ asset('/expenses/create') }}" type="button" class="btn btn-success btn-flat margin">New Expense</a>
				@endif
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">Expense List</h3>
						<div class="box-tools">
							{!! Form::open(['url' => '/expenses/search', 'method' => 'get']) !!}
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
								<th>Item Name</th>
								<th>Purchase From</th>
								<th>Purchase Date</th>
								<th>Purchased By</th>
								<th>Amount</th>
								@if(Auth::user()->role->role_permission('edit_expenses') || Auth::user()->role->role_permission('delete_expenses'))
								<th>Action</th>
								@endif
							</tr>
							@foreach($expenses as $expense)
							<tr>
								<td>{{ $expense->id }}</td>
								<td>{{ $expense->item_name }}</td>
								<td>{{ $expense->purchase_from }}</td>
								<td>{{ $expense->purchase_date }}</td>
								<td><a href="{{ $expense->user ? asset('/users/'.$expense->user->id) : '' }}">{{ $expense->user ? $expense->user->first_name.' '.$expense->user->last_name : '' }}</a></td>
								<td>{{ $expense->amount }}</td>
								@if(Auth::user()->role->role_permission('edit_expenses') || Auth::user()->role->role_permission('delete_expenses'))
								<td>
									<div class="btn-group">
										@if(Auth::user()->role->role_permission('edit_expenses'))
										<a href="{{ asset('expenses/'.$expense->id.'/edit') }}" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-pencil"></i></a>
										@endif
										@if(Auth::user()->role->role_permission('delete_expenses'))
										<a type="button" class="btn btn-default btn-flat btn-sm" title="Delete" data-toggle="modal" data-target="#deleteModal{{ $expense->id }}"><i class="fa fa-trash"></i></a>
										<div id="deleteModal{{ $expense->id }}" class="modal fade" role="dialog">
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
											{!! Form::open(['url' => ['expenses/'.$expense->id], 'method' => 'delete']) !!}
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
								Showing {{ $expenses->firstItem() }} to {{ $expenses->lastItem() }} of {{ $expenses->total() }} entries
								<div class="pull-right">
								{!! $expenses->links() !!}
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