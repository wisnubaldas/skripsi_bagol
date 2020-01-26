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
	'title'=>'Report',
	'subtitle'=>'Report Chart',
	'bc'=>[
		[
			'class'=>'breadcrumb-item active',
			'link'=>'#',
			'name'=>'Report'
		],
		[
			'class'=>'breadcrumb-item',
			'link'=>'#',
			'name'=>'Home'
		],
	]
])

<div class="row">
	<!-- begin col-3 -->
	<div class="col-lg-3 col-md-6">
		<div class="widget widget-stats bg-gradient-green">
			<div class="stats-icon stats-icon-lg"><i class="fa fa-globe fa-fw"></i></div>
			<div class="stats-content">
				<div class="stats-title">NEW ORDER</div>
				<div class="stats-number">{{$order['new_order']}}</div>
				<div class="stats-progress progress">
					<div class="progress-bar" style="width: {{$order['new_order']}}%;"></div>
				</div>
				<div class="stats-desc">Better than last day ({{$order['new_order']}}%)</div>
			</div>
		</div>
	</div>
	<!-- end col-3 -->
	<!-- begin col-3 -->
	<div class="col-lg-3 col-md-6">
		<div class="widget widget-stats bg-gradient-blue">
			<div class="stats-icon stats-icon-lg"><i class="fa fa-dollar-sign fa-fw"></i></div>
			<div class="stats-content">
				<div class="stats-title">ORDER TO PICKUP</div>
				<div class="stats-number">{{$order['pickup']}}</div>
				<div class="stats-progress progress">
					<div class="progress-bar" style="width: {{$order['pickup']}}%;"></div>
				</div>
				<div class="stats-desc">Better than last week ({{$order['pickup']}}%)</div>
			</div>
		</div>
	</div>
	<!-- end col-3 -->
	<!-- begin col-3 -->
	<div class="col-lg-3 col-md-6">
		<div class="widget widget-stats bg-gradient-purple">
			<div class="stats-icon stats-icon-lg"><i class="fa fa-archive fa-fw"></i></div>
			<div class="stats-content">
				<div class="stats-title">ORDER TO DELIVER</div>
				<div class="stats-number">{{$order['deliver']}}</div>
				<div class="stats-progress progress">
					<div class="progress-bar" style="width: {{$order['deliver']}}%;"></div>
				</div>
				<div class="stats-desc">Better than last week ({{$order['deliver']}}%)</div>
			</div>
		</div>
	</div>
	<!-- end col-3 -->
	<!-- begin col-3 -->
	<div class="col-lg-3 col-md-6">
		<div class="widget widget-stats bg-gradient-black">
			<div class="stats-icon stats-icon-lg"><i class="fa fa-comment-alt fa-fw"></i></div>
			<div class="stats-content">
				<div class="stats-title">COMPLETE ORDER</div>
				<div class="stats-number">{{$order['complete']}}</div>
				<div class="stats-progress progress">
					<div class="progress-bar" style="width: {{$order['complete']}}%;"></div>
				</div>
				<div class="stats-desc">Better than last week ({{$order['complete']}}%)</div>
			</div>
		</div>
	</div>
	<!-- end col-3 -->
</div>

<div class="row">
	<div class="col-lg-12 ">
		<div class="widget-chart with-sidebar bg-aqua-transparent-2 ">
			<div class="widget-chart-content">
				<h4 class="chart-title text-purple-darker">
					Visitors Analytics
					<small class="text-purple-darker">Where do our visitors come from</small>
				</h4>
				<div>
					<canvas id="line-chart" data-render="chart-js"></canvas>
				</div>
			</div>
			<div class="widget-chart-sidebar bg-aqua-transparent-6">
				
			</div>
		</div>
	</div>
</div>
@endsection

@push('css')
<link href="{{base_url('assets/plugins/datatables/css/dataTables.bootstrap4.css')}}" rel="stylesheet" />
<link href="{{base_url('assets/plugins/datatables/css/buttons/buttons.bootstrap4.css')}}" rel="stylesheet" />
<link href="{{base_url('assets/plugins/datatables/css/responsive/responsive.bootstrap4.css')}}" rel="stylesheet" />
<link href="{{base_url('assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css')}}" rel="stylesheet" />
<link href="{{base_url('assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css')}}" rel="stylesheet" />
@endpush

@push('scripts')
<script src="{{base_url('assets/plugins/datatables/js/jquery.dataTables.js')}}"></script>
<script src="{{base_url('assets/plugins/datatables/js/dataTables.bootstrap4.js')}}"></script>
<script src="{{base_url('assets/plugins/datatables/js/buttons/dataTables.buttons.js')}}"></script>
<script src="{{base_url('assets/plugins/datatables/js/buttons/buttons.bootstrap4.js')}}"></script>
<script src="{{base_url('assets/plugins/datatables/js/buttons/buttons.flash.js')}}"></script>
<script src="{{base_url('assets/plugins/datatables/js/buttons/buttons.html5.js')}}"></script>
<script src="{{base_url('assets/plugins/datatables/js/buttons/buttons.print.js')}}"></script>
<script src="{{base_url('assets/plugins/datatables/js/responsive/dataTables.responsive.js')}}"></script>
<script src="{{base_url('assets/plugins/datatables/js/responsive/responsive.bootstrap4.js')}}"></script>
<script src="{{base_url('assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js')}}"></script>
<script src="{{base_url('assets/plugins/chartjs/Chart.min.js')}}"></script>
<script src="{{base_url('assets/js/demo/chart-js.demo.js')}}"></script>
<script>
	jQuery(function(a) {
		var lineChartData = {
				labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
				datasets: [{
					label: 'New Order',
					borderColor: COLOR_BLUE,
					pointBackgroundColor: COLOR_BLUE,
					pointRadius: 2,
					borderWidth: 2,
					backgroundColor: COLOR_BLUE_TRANSPARENT_3,
					data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
				}, {
					label: 'Order Pickup',
					borderColor: COLOR_WHITE,
					pointBackgroundColor: COLOR_WHITE,
					pointRadius: 2,
					borderWidth: 2,
					backgroundColor: COLOR_WHITE_TRANSPARENT_3,
					data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
				},
				{
					label: 'Order Deliver',
					borderColor: COLOR_ORANGE,
					pointBackgroundColor: COLOR_ORANGE,
					pointRadius: 2,
					borderWidth: 2,
					backgroundColor: COLOR_ORANGE_TRANSPARENT_3,
					data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
				},
				{
					label: 'Order Complete',
					borderColor: COLOR_RED,
					pointBackgroundColor: COLOR_RED,
					pointRadius: 2,
					borderWidth: 2,
					backgroundColor: COLOR_RED_TRANSPARENT_3,
					data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
				}
			]
			};
			const XX = lineChartData.datasets.forEach(el => {
				console.log(el.data)
			});

		var ctx = document.getElementById('line-chart').getContext('2d');
    	var lineChart = new Chart(ctx, {
        			type: 'line',
        			data: lineChartData
		});
	
	})
</script>
@endpush