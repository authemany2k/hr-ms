@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('head')
	<link href="{{ asset('/plugins/select2/select2.min.css') }}" rel="stylesheet" />
	<link rel="stylesheet" href="{{ asset('plugins/jQuery/themes/smoothness/jquery-ui.min.css') }}">
	<link rel="stylesheet" href="{{ asset('/plugins/timepicker/bootstrap-timepicker.min.css') }}">
@endsection

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Attendances
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="box box-success">
					<div class="box-header">	
						<h3 class="box-title">New Attendance</h3>
					</div>
					<div class="box-body">
						{!! Form::open(['url' => isset($user->id) ? 'users/'.$user->id.'/attendances' : 'attendances']) !!}
						@include('attendances.form-bulk')
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
	<script src="{{ asset('/plugins/select2/select2.min.js') }}"></script>
	<script src="{{ asset('/plugins/input-mask/jquery.inputmask.js') }}"></script>
	<script src="{{ asset('/plugins/input-mask/jquery.inputmask.date.extensions.js') }}"></script>
	<script src="{{ asset('/plugins/input-mask/jquery.inputmask.extensions.js') }}"></script>
	<script src="{{ asset('/plugins/timepicker/bootstrap-timepicker.min.js') }}"></script>
	<script type="text/javascript">
		$.ajaxSetup({ headers: { 'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content') } });
		$(document).ajaxStart(function() { Pace.restart(); $('#attendance-wrapper').empty(); });
		$(document).ready(function(){
			
			$('#cut_off').on('change', function(){
				$.ajax({
					url: 'http://localhost/larahrm/public/users/{{$user->id}}/attendances/cut-off',
					data: {'cut_off_id' : $("#cut_off").val()},
					type: "get",
					success: function(data){
						var alldata = '<div class="row">';
						alldata += '<div class="col-sm-4">';
						alldata += '<strong class="text-">Date</strong>';
						alldata += '</div>';
						alldata += '<div class="col-sm-4">';
						alldata += '<strong>Time In</strong>';
						alldata += '</div>';
						alldata += '<div class="col-sm-4">';
						alldata += '<strong>Time Out</strong>';
						alldata += '</div>';
						alldata += '</div>';
						
						data.dates.forEach(function showResults(date) {
							alldata += '<div class="row">';
							
							alldata += '<div class="col-sm-4">';
							alldata += '<div class="input-group"><input type="text" value="'+date+'" class="form-control" disabled=""><div class="input-group-addon"><i class="fa fa-calendar"></i></div></div>';
							alldata += '</div>';
							
							alldata += '<div class="col-sm-4">';
							alldata += '<div class="form-group bootstrap-timepicker">';
							alldata += '<div class="input-group">';
							if(data.attendances->where('date', $date)->first()){
							alldata += '<input type="text" name="time_in_'+date+'" value="'+attendances->where('date', $date)->first()->time_in+'" class="form-control timepicker">';
							}else{
							alldata += '<input type="text" name="time_in_'+date+'" value="" class="form-control timepicker">';	
							}
							alldata += '<div class="input-group-addon"><i class="fa fa-clock-o"></i></div>';
							alldata += '</div>';
							alldata += '</div>';
							alldata += '</div>';
							
							alldata += '<div class="col-sm-4">';
							alldata += '<div class="form-group bootstrap-timepicker">';
							alldata += '<div class="input-group">';
							alldata += '<input type="text" name="time_out_'+date+'" value="" class="form-control timepicker">';
							alldata += '<div class="input-group-addon"><i class="fa fa-clock-o"></i></div>';
							alldata += '</div>';
							alldata += '</div>';
							alldata += '</div>';
							
							alldata += '</div>';
						});
						
						$('#attendance-wrapper').append(alldata);
						$(".timepicker").timepicker({
							showInputs: false,
							defaultTime: false,
						});
					}
				});
			});
		});
			
		$(function () {
			$("#datemask").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
			$("[data-mask]").inputmask();
			$("select").select2({
				placeholder: "Select",
				allowClear: false
			});
			$( "#employee" ).autocomplete({
				source: "{{ asset('autocomplete/users')}}",
				minLength: 1,
				select: function(event, ui) {
					$('#employee').val(ui.item.value);
					$('#user_id').val(ui.item.id);
				}
			});
			$(".timepicker").timepicker({
				showInputs: false,
				defaultTime: false,
			});
		});
    </script>
@endsection