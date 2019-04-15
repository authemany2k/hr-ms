@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('head')
	<link href="{{ asset('/plugins/iCheck/square/green.css') }}" rel="stylesheet">
	<link rel="stylesheet" href="{{ asset('plugins/jQuery/themes/smoothness/jquery-ui.min.css') }}">
	<link href="{{ asset('/plugins/select2/select2.min.css') }}" rel="stylesheet" />
	<link rel="stylesheet" href="{{ asset('/plugins/datepicker/datepicker3.css') }}">
@endsection

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Accounts
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="box box-success">
					<div class="box-header">	
						<h3 class="box-title">New Account</h3>
					</div>
					<div class="box-body">
						{!! Form::open(['url' => 'users', 'files' => 'true']) !!}
						@include('users.form', ['new' => true])
						{!! Form::close() !!}
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection

@section('foot')
<script src="{{ asset('/plugins/select2/select2.min.js') }}"></script>
<script src="{{ asset('plugins/jQueryUI/jquery-ui.min.js') }}"></script>
<script src="{{ asset('/plugins/input-mask/jquery.inputmask.js') }}"></script>
<script src="{{ asset('/plugins/input-mask/jquery.inputmask.date.extensions.js') }}"></script>
<script src="{{ asset('/plugins/input-mask/jquery.inputmask.extensions.js') }}"></script>
<script src="{{ asset('/plugins/iCheck/icheck.js') }}"></script>
<script src="{{ asset('/plugins/datepicker/bootstrap-datepicker.js') }}"></script>
<script type="text/javascript">
	$(function () {
		$('.datepicker').datepicker({
			autoclose: true
		});
		$("#datemask").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
		$("[data-mask]").inputmask();
		
		$("select").select2({
			placeholder: "Select",
			allowClear: true
		});
		
		$( "#department" ).autocomplete({
			source: "{{ asset('autocomplete/departments')}}",
			minLength: 1,
			select: function(event, ui) {
				$('#department').val(ui.item.value);
				$('#department_id').val(ui.item.id);
			}
		});
		
		$( "#designation_item" ).autocomplete({
			source: "{{ asset('autocomplete/designation_items')}}",
			minLength: 1,
			select: function(event, ui) {
				$('#designation_item').val(ui.item.value);
				$('#designation_item_id').val(ui.item.id);
			}
		});
		
		$( "#role" ).autocomplete({
			source: "{{ asset('autocomplete/roles')}}",
			minLength: 1,
			select: function(event, ui) {
				$('#role').val(ui.item.value);
				$('#role_id').val(ui.item.id);
			}
		});
	});
	
	$(document).ready(function(){
		$('input').iCheck({
		checkboxClass: 'icheckbox_square-green',
		radioClass: 'iradio_square-green'
		});
	});
</script>
@endsection