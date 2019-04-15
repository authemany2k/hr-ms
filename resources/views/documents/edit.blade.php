@extends(Auth::check() && Auth::user()->role->layout == 1 ? 'layouts.admin' : 'layouts.employee')

@section('head')
	<link href="{{ asset('/plugins/select2/select2.min.css') }}" rel="stylesheet" />
@endsection

@section('content')
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		Documents
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="box box-success">
					<div class="box-header">	
						<h3 class="box-title">Edit Document</h3>
					</div>
					<div class="box-body">
						{!! Form::model($document, ['method' => 'PATCH', 'url' => 'documents/'.$document->id, 'files' => 'true']) !!}
						{!! Form::hidden('id', $document->id) !!}
						@include('documents.form')
						{!! Form::close() !!}
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection

@section('foot')
	<script src="{{ asset('/plugins/select2/select2.min.js') }}"></script>
	<script type="text/javascript">
		$(function () {
			$("select").select2({
				placeholder: "Select",
				allowClear: true
			});
		});
    </script>
@endsection