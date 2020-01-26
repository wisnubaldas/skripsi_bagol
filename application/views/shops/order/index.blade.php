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
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
		<li class="breadcrumb-item"><a href="javascript:;">shops</a></li>
		<li class="breadcrumb-item active">Order</li>
	</ol>
	<!-- end breadcrumb -->
	
	<!-- begin page-header -->
	<h1 class="page-header">Order <small>header small text goes here...</small></h1>
	<!-- end page-header -->
	
	<!-- begin panel -->
	<div class="panel panel-primary">
		@if ($alert)
        <div class="note note-warning note-with-right-icon m-b-15" id="alert-update">
            <div class="note-icon"><i class="fa fa-lightbulb"></i></div>
            <div class="note-content text-right">
                <h4>
                    <b>200</b>
				</h4>
				<dl>
					@foreach ($alert as $item)
						{{$item}},
					@endforeach
				</dl>
            </div>
        </div>
    	@endif
		<div class="panel-body">
			<table id="data-table-combine" class="table table-striped table-bordered">
				<thead>
				  <tr>
					<th scope="col">#</th>
					<th scope="col">Invoice Number</th>
					<th scope="col">Delivery Name</th>
					<th scope="col">Delivery Company</th>
					<th scope="col">Delivery Address</th>
					<th scope="col">Delivery City</th>
					<th scope="col">Delivery Post Code</th>
					<th scope="col">Delivery State</th>
					<th scope="col">Delivery Phone</th>
					<th scope="col">Billing Name</th>
					<th scope="col">Billing Company</th>
					<th scope="col">Billing Adress</th>
					<th scope="col">Payment Method</th>
					<th scope="col">Latitude</th>
					<th scope="col">Longtidue</th>
					<th scope="col">Status</th>
					<th scope="col">Action</th>
				  </tr>
				</thead>
				<tbody>
					
				</tbody>
		</table>
		</div>
	</div>
	<!-- end panel -->

@endsection

@push('css')
	<link href="{{base_url('/assets/plugins/datatables/css/dataTables.bootstrap4.css')}}" rel="stylesheet" />
	<link href="{{base_url('/assets/plugins/datatables/css/autoFill/autoFill.bootstrap4.css')}}" rel="stylesheet" />
	<link href="{{base_url('/assets/plugins/datatables/css/colReorder/colReorder.bootstrap4.css')}}" rel="stylesheet" />
	<link href="{{base_url('/assets/plugins/datatables/css/keyTable/keyTable.bootstrap4.css')}}" rel="stylesheet" />
	<link href="{{base_url('/assets/plugins/datatables/css/rowReorder/rowReorder.bootstrap4.css')}}" rel="stylesheet" />
	<link href="{{base_url('/assets/plugins/datatables/css/responsive/responsive.bootstrap4.css')}}" rel="stylesheet" />
	<link href="{{base_url('/assets/plugins/datatables/css/select/select.bootstrap4.css')}}" rel="stylesheet" />
	<link href="{{base_url('/assets/plugins/datatables/css/buttons/buttons.bootstrap4.min.css')}}" rel="stylesheet" />

@endpush

@push('scripts')
	<script src="{{base_url('/assets/plugins/datatables/js/jquery.dataTables.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/dataTables.bootstrap4.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/autoFill/dataTables.autoFill.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/autoFill/autoFill.bootstrap4.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/keyTable/dataTables.keyTable.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/rowReorder/dataTables.rowReorder.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/colReorder/dataTables.colReorder.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/responsive/dataTables.responsive.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/responsive/responsive.bootstrap4.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/buttons/dataTables.buttons.min.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/buttons/buttons.bootstrap4.min.js')}}"></script>
	<script>
		const g = "{{route('order.grid')}}"
		$(document).ready(function() {
			$('#data-table-combine').DataTable({
				processing: true,
				serverSide: true,
				ajax: g,
				responsive: true,
				dom: 'Bfrtip',
				buttons: [
					{
						text: 'Create Order',
						className:'btn btn-sm btn-success',
						action: function ( e, dt, node, config ) {
							window.location.replace("{{route('order.create')}}");
						}
					}
				]
			});

			$('.note-warning').fadeOut(9000)
		});
	</script>
@endpush