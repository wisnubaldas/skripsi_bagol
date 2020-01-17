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
	'title'=>'Pickup',
	'subtitle'=>'Set data untuk update status pickup',
	'bc'=>[
		[
			'class'=>'breadcrumb-item active',
			'link'=>'#',
			'name'=>'Pickup'
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
			<fieldset>
				<div class="row">
					<div class="col-4 col-xs-12">
						<div class="form-group">
						<label for="">Customer Order</label>
							<select id="cust"  name="id" class="form-control">
								<option value="" selected>::: Find Customer Name :::</option>
								@foreach ($customer as $i)
									<option value="{{$i['id']}}">{{$i['text']}}</option>
								@endforeach
							</select>
						</div>
					</div>
					<div class="col-8">
						<div id="customer-detail"></div>
					</div>
				</div>
			</fieldset>	
		</div>
		<div class="panel-footer">
			<div class="col-12">
				<div id="order-detail"></div>
			</div>
		</div>
	</div>
	<!-- end panel -->
	<div class="alert"></div>
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
<script>
function updateStatusOrder(id) {
	axios.put("{{base_url('transaction/pickup/')}}"+id)
			.then(function(r) {
				console.log(r)
			})
			.catch(function(e){
				console.log(e)
			})
}
		jQuery(function(){

			$('#cust').select2()
			$('#cust').on('select2:select', function (e) {
				let data = e.params.data;
				axios.get("{{route('get_data_customer')}}"+'?id='+data.id)
						.then(function (response) {
							// handle success
							const order = response.data.order;
							// console.log(response.data.order);
							$('#customer-detail').html(templates.customer(response.data));
							if(order.length == 0)
							{
								$('#order-detail').html(templates.alertError(
									{title:"Noting order to pickup,...!!!",
									 message:"No Order Data in customer "+response.data.company+" please try again...!!!!"}))
							}else{
								const head = ['Invoice','Name','Method','Address','Phone']
								let body = function (order) {
									let x = []
									order.forEach(el => {
										x.push([
											el.invoice_number,
											el.delivery_name,
											el.payment_method,
											el.delivery_street_address+' '+el.delivery_city+' '+el.delivery_postcode+' '+el.delivery_state,
											el.delivery_phone
										])
									});
									return x;
								};

								$('#order-detail').html(templates.table(head))
								$('#table-grid').DataTable({
									data:body(order),
									dom: 'Bfrtip',
									buttons: [
												{
													extend: 'copy',
													text: 'Copy Order List',
													className: 'btn btn-sm btn-purple'
												},
												{
													extend: 'print',
													text: 'Print Order List',
													className: 'btn btn-sm btn-success'
												},
												{
													text: 'Pickup Order',
													className: 'btn btn-sm btn-primary',
													action: function ( e, dt, node, config ) {
														// dt.ajax.reload();
														updateStatusOrder(response.data.id)
													}
												}
											]
								});
							}
						})
						.catch(function (error) {
							// handle error
							console.log(error);
						})
						.finally(function () {
							// always executed
				});
			});
		})
	</script>
@endpush