@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Notice
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">{{ $notice->title }}</h3>
					</div>
					<div class="box-body">
						{{ $notice->description }}
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection