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
	'subtitle'=>'Set data mencari order untuk pengiriman',
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
			<form action="#" id="frm">
				<fieldset>
                    <div class="row">
						<div class="col-4">
							<div class="form-group">
							<label for="">Invoice Number</label>
								<input id="inv" type="text" name="invoice_number" class="form-control" />
							</div>
						</div>
						<div class="col-4">
							<div class="form-group">
							<label for="">Billing Name</label>
								<input id="billing" type="text" name="billing_name" class="form-control" />
							</div>
						</div>
						<div class="col-4">
							<div class="form-group">
							<label for="">Invoice Date</label>
								<input type="text" name="date" class="form-control datepicker" id="datepicker-autoClose"/>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="form-group btn-group">
							<button type="submit" class="btn btn-sm btn-primary">Search</button>
							<input type="reset" id="configreset" value="Reset" class="btn btn-sm btn-warning">
						</div>
					</div>
					
                   
                </fieldset>	
			</form>	
		
		</div>
		<div class="panel-footer">

		</div>
	</div>
	<!-- end panel -->
	<div class="alert"></div>
@endsection

@push('css')
<link href="{{base_url('assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css')}}" rel="stylesheet" />
<link href="{{base_url('assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css')}}" rel="stylesheet" />
@endpush

@push('scripts')
<script src="{{base_url('assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js')}}"></script>
<script>
	const invoice = @json($invoice);
	const billing = @json($billing);
		jQuery(function(){
			$("#inv").autocomplete({ source: invoice })

			$("#billing").autocomplete({ source: billing })

			$('.datepicker').datepicker({ autoclose:true });
					

			$('#frm').on('submit',function(a){
				axios.get("{{route('grid_order')}}"+'?'+$(this).serialize())
						.then(function (response) {
							// handle success
							$('.panel-footer').html(templates.takeOrderTable(response.data))

							$('.add-order').click(function(a){
								$('.tr-'+$(this).val())
										// .remove()
										.addClass('bg-red-darker text-white f-w-500')
										.find('a, button')
										.addClass('disabled')
							})	
						})
						.catch(function (error) {
							// handle error
							console.log(error);
						})
						.finally(function () {
							// always executed
					});

				// $('.alert').html(templates.alertError({title:'awas anjing gila',message:'dasadasdasdasdasdasd'}))
				
				a.preventDefault()
			})
		})
	</script>
@endpush