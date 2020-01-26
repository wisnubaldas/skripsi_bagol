@extends('template.layouts.default')

@section('title', 'MAP')

@section('content')
	{!! $map['html'] !!}
	<br />
	<div class="row">
		<div class="col-md-6">
			<div class="note note-secondary note-purple m-b-15">
				<h4><b><img src="http://maps.google.com/mapfiles/kml/pal4/icon7.png" alt="delivery"></b> Green car icon indicate to Pickup</h4>
			</div>
		</div>
		<div class="col-md-6">
			<div class="note note-secondary note-purple m-b-15">
				<h4><b><img src="http://maps.google.com/mapfiles/kml/pal4/icon54.png" alt="pickup"></b> Green car icon indicate to Pickup</h4>
			</div>
		</div>
	</div>
	<div class="modal" tabindex="-1" role="dialog" id="map-modal">
		<div class="modal-dialog" role="document">
		<div class="modal-content">
			
		</div>
		</div>
	</div>
@endsection

@push('css')

@endpush

@push('scripts')
	{!! $map['js'] !!}
	<script>
		function ShowPickupBaloon(id) {
			// console.log(id)
				axios.get('master/order/order/show/'+id)
							.then(function(a) {
								const o = a.data;
								// console.log(o)
								let x = `<div class="modal-header">
											<h5 class="modal-title">${o.delivery_company} / ${o.invoice_number}</h5>
											<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											</div>
											<div class="modal-body">
												<dl>
													<dt class="text-inverse">Billing</dt>
													<dd>${o.billing_name}</dd>
													<dt class="text-inverse m-t-10">Address</dt>
													<dd>${o.billing_street_address}</dd>
													<dt class="text-inverse m-t-10">Payment</dt>
													<dd>${o.payment_method}</dd>
												</dl>
											</div>
											<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
										</div>`
								$('.modal-content').html(x)
							})
							.catch(function (a) {
								console.log(a)
							})
				
			}
		jQuery(function () {
			
			
		})
		
	</script>

@endpush