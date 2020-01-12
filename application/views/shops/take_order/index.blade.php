@extends('template.layouts.default')

@section('title', 'Courier Data')
@php
	$alert = false;
	if(ci()->session->flashdata('msg')){
		$alert = ci()->session->flashdata('msg');
	}
	function rpucStr(string $s){ return str_replace('_',' ',strtoupper($s)); }
@endphp
	
@section('content')
@include('template.includes.component.breadcrumb',[
	'title'=>'Take Order',
	'subtitle'=>'Get order delivery',
	'bc'=>[
		[
			'class'=>'breadcrumb-item active',
			'link'=>'#',
			'name'=>'Take Order'
		],
		[
			'class'=>'breadcrumb-item',
			'link'=>'#',
			'name'=>'Home'
		],
	]
])

	<!-- begin panel -->
	<div class="panel panel-primary">

		<div class="panel-body">
			
		
		</div>
	</div>
	<!-- end panel -->

@endsection

@push('css')
	
@endpush

@push('scripts')
	
@endpush