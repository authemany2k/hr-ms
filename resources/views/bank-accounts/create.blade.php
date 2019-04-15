@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('head')
	<link rel="stylesheet" href="{{ asset('plugins/jQuery/themes/smoothness/jquery-ui.min.css') }}">
@endsection

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
						<h3 class="box-title">New Bank Account</h3>
					</div>
					<div class="box-body">
						{!! Form::open(['url' => isset($user->id) ? 'users/'.$user->id.'/bank-account' : 'bank-accounts']) !!}
						@include('bank-accounts.form')
						{!! Form::close() !!}
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection

@section('foot')
	<script src="{{ asset('plugins/jQueryUI/jquery-ui.min.js') }}"></script>
	<script type="text/javascript">
		$(function () {
			$( "#employee" ).autocomplete({
				source: "{{ asset('autocomplete/users')}}",
				minLength: 1,
				select: function(event, ui) {
					$('#employee').val(ui.item.value);
					$('#user_id').val(ui.item.id);
				}
			});
		});
    </script>
@endsection