@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('head')
	<link rel="stylesheet" href="{{ asset('/plugins/datepicker/datepicker3.css') }}">
@endsection

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Holidays
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="box box-success">
					<div class="box-header">	
						<h3 class="box-title">New Holiday</h3>
					</div>
					<div class="box-body">
						{!! Form::open(['url' => 'holidays']) !!}
						@include('holidays.form')
						{!! Form::close() !!}
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection

@section('foot')
	<script src="{{ asset('/plugins/input-mask/jquery.inputmask.js') }}"></script>
	<script src="{{ asset('/plugins/input-mask/jquery.inputmask.date.extensions.js') }}"></script>
	<script src="{{ asset('/plugins/input-mask/jquery.inputmask.extensions.js') }}"></script>
	<script src="{{ asset('/plugins/datepicker/bootstrap-datepicker.js') }}"></script>
	<script type="text/javascript">
		$(function () {
			$('.datepicker').datepicker({
				autoclose: true
			});
			$("#datemask").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
			$("[data-mask]").inputmask();
		});
    </script>
@endsection