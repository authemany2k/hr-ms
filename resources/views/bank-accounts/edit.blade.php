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
			<div class="col-md-8 col-md-offset-2">
				<div class="box box-success">
					<div class="box-header">	
						<h3 class="box-title">Edit Bank Account</h3>
					</div>
					<div class="box-body">
						{!! Form::model($bank_account, ['method' => 'PATCH', 'url' => isset($user->id) ? 'users/'.$user->id.'/bank-account/'.$bank_account->id : 'bank-accounts/'.$bank_account->id]) !!}
						{!! Form::hidden('id', $bank_account->id) !!}
						@include('bank-accounts.form')
						{!! Form::close() !!}
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection