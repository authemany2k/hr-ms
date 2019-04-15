@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Candidate
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-success">
					<div class="box-header">
						<div class="user-block">
							<span class="username no-margin">{{ $candidate->candidate_name }}</span>
							<span class="description no-margin">Date From: {{ $candidate->date_start }}<br />Date To: {{ $candidate->date_end }}</span>
						</div>
					</div>
					<div class="box-body">
						{{ $candidate->description }}
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection