@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Bank Accounts
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				@include('alert.success')
				@if(Auth::user()->role->role_permission('create_bank_accounts'))
				<a href="{{ asset('/bank-accounts/create') }}" type="button" class="btn btn-success btn-flat margin">New Bank Account</a>
				@endif
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">Bank Account List</h3>
						<div class="box-tools">
							{!! Form::open(['url' => '/bank-accounts/search', 'method' => 'get']) !!}
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
								<th>Account Name</th>
								<th>Account Number</th>
								<th>Bank Name</th>
								@if(Auth::user()->role->role_permission('edit_bank_accounts') || Auth::user()->role->role_permission('delete_bank_accounts'))
								<th>Action</th>
								@endif
							</tr>
							@foreach($bank_accounts as $bank_account)
							<tr>
								<td>{{ $bank_account->id }}</td>
								<td><a href="{{ $bank_account->user ? asset('/users/'.$bank_account->user->id) : '' }}">{{ $bank_account->user ? $bank_account->user->first_name.' '.$bank_account->user->last_name : '' }}</a></td>
								<td>{{ $bank_account->account_name }}</td>
								<td>{{ $bank_account->account_number }}</td>
								<td>{{ $bank_account->bank_name }}</td>
								@if(Auth::user()->role->role_permission('edit_bank_accounts') || Auth::user()->role->role_permission('delete_bank_accounts'))
								<td>
									<div class="btn-group">
										@if(Auth::user()->role->role_permission('edit_bank_accounts'))
										<a href="{{ asset('bank-accounts/'.$bank_account->id.'/edit') }}" title="Edit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-pencil"></i></a>
										@endif
										@if(Auth::user()->role->role_permission('delete_bank_accounts'))
										<a type="button" class="btn btn-default btn-flat btn-sm" title="Delete" data-toggle="modal" data-target="#deleteModal{{ $bank_account->id }}"><i class="fa fa-trash"></i></a>
										<div id="deleteModal{{ $bank_account->id }}" class="modal fade" role="dialog">
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
											{!! Form::open(['url' => ['bank-accounts/'.$bank_account->id], 'method' => 'delete']) !!}
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
								Showing {{ $bank_accounts->firstItem() }} to {{ $bank_accounts->lastItem() }} of {{ $bank_accounts->total() }} entries
								<div class="pull-right">
								{!! $bank_accounts->links() !!}
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