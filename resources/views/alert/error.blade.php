@if (Session::has('error'))
<div class="row">
	<div class="col-md-12">
		<div class="alert alert-danger alert-dismissible">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<h4><i class="icon fa fa-exclamation"></i> Alert!</h4>
			{{ Session::get('error') }}
		</div>
	</div>
</div>
@endif