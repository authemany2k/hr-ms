@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Leave Types
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="box box-success">
					<div class="box-header">	
						<h3 class="box-title">Edit Leave Type</h3>
					</div>
					<div class="box-body">
						{!! Form::model($leave_type, ['method' => 'PATCH', 'url' => 'leave-types/'.$leave_type->id]) !!}
						{!! Form::hidden('id', $leave_type->id) !!}
						@include('leave-types.form')
						{!! Form::close() !!}
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection