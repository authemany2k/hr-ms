@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('head')
	<link rel="stylesheet" href="{{ asset('/plugins/iCheck/square/green.css') }}">
@endsection

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Roles
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-success">
					<div class="box-header">	
						<h3 class="box-title">Edit Role</h3>
					</div>
					<div class="box-body">
						{!! Form::model($role, ['method' => 'PATCH', 'url' => 'roles/'.$role->id]) !!}
						{!! Form::hidden('id', $role->id) !!}
						@include('roles.form')
						{!! Form::close() !!}
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection

@section('foot')
<script src="{{ asset('/plugins/iCheck/icheck.min.js') }}"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-green',
      radioClass: 'iradio_square-green',
      increaseArea: '20%' // optional
    });
  });
</script>
@endsection