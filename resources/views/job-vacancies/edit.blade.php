@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('head')
	<link href="{{ asset('/plugins/iCheck/square/green.css') }}" rel="stylesheet">
	<link rel="stylesheet" href="{{ asset('plugins/jQuery/themes/smoothness/jquery-ui.min.css') }}">
@endsection

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Job Vacancies
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="box box-success">
					<div class="box-header">	
						<h3 class="box-title">Edit Job Vacancy</h3>
					</div>
					<div class="box-body">
						{!! Form::model($job_vacancy, ['method' => 'PATCH', 'url' => 'job-vacancies/'.$job_vacancy->id, 'files' => 'true']) !!}
						{!! Form::hidden('id', $job_vacancy->id) !!}
						@include('job-vacancies.form')
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
	<script src="{{ asset('/plugins/iCheck/icheck.js') }}"></script>
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
		
		$(document).ready(function(){
			$('input').iCheck({
			checkboxClass: 'icheckbox_square-green',
			radioClass: 'iradio_square-green'
			});
		});
    </script>
@endsection