@extends('layouts.guest')

@section('head')
	<style>
		html, body {
			height: 100%;
		}

		body {
			margin: 0;
			padding: 0;
			width: 100%;
			display: table;
			font-family: 'Lato';
		}

		.container {
			text-align: center;
			display: table-cell;
			vertical-align: middle;
		}

		.content {
			text-align: left;
			display: inline-block;
		}
	</style>
@endsection

@section('content')
	<div class="container">
	<div class="content">
	<div class="error-page">
		<h2 class="headline text-green"> 403</h2>
		<div class="error-content">
			<h3><i class="fa fa-warning text-green"></i> Oops! Access denied.</h3>
			<p>You have no permission to access this page or perform this action.
			Meanwhile, you may <a href="{{ asset('/') }}">return to dashboard</a>.</p>
		</div>
	</div>
	</div>
	</div>
@endsection