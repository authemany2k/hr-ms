@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Cut Off
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-success">
					<div class="box-header">
						<div class="user-block">
							<span class="username no-margin">{{ $cut_off->cut-off_name }}</span>
							<span class="description no-margin">Date From: {{ $cut_off->date_start }}<br />Date To: {{ $cut_off->date_end }}</span>
						</div>
					</div>
					<div class="box-body">
						{{ $cut_off->description }}
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection