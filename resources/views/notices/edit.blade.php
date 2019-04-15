@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('head')
<link href="{{ asset('/plugins/iCheck/square/green.css') }}" rel="stylesheet">
@endsection

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Notices
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="box box-success">
					<div class="box-header">	
						<h3 class="box-title">Edit Notice</h3>
					</div>
					<div class="box-body">
						{!! Form::model($notice, ['method' => 'PATCH', 'url' => 'notices/'.$notice->id, 'files' => 'true']) !!}
						{!! Form::hidden('id', $notice->id) !!}
						@include('notices.form', ['new' => false])
						{!! Form::close() !!}
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection

@section('foot')
	<script src="{{ asset('/plugins/iCheck/icheck.js') }}"></script>
	<script type="text/javascript">
		$(document).ready(function(){
		  $('input').iCheck({
			checkboxClass: 'icheckbox_square-green'
		  });
		});
    </script>
@endsection