@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Job Vacancy
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-success">
					<div class="box-header">
						<div class="user-block">
							<span class="username no-margin">{{ $job_vacancy->job_title }}</span>
							<span class="description no-margin">Status: {{ $job_vacancy->status }}</span>
						</div>
					</div>
					<div class="box-body">
						
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection