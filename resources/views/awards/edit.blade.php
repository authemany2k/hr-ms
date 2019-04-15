@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Awards
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="box box-success">
					<div class="box-header">	
						<h3 class="box-title">Edit Award</h3>
					</div>
					<div class="box-body">
						{!! Form::model($award, ['method' => 'PATCH', 'url' => 'awards/'.$award->id]) !!}
						{!! Form::hidden('id', $award->id) !!}
						@include('awards.form')
						{!! Form::close() !!}
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection