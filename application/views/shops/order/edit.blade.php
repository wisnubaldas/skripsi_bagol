@extends('template.layouts.default')

@section('title', 'Blank Page')
@php
$alert = false;
if(ci()->session->flashdata('msg')){
    $alert = ci()->session->flashdata('msg');
}
@endphp
@section('content')
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
		<li class="breadcrumb-item"><a href="javascript:;">Master</a></li>
		<li class="breadcrumb-item active">Create Order</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Create Order <small></small></h1>
	<!-- end page-header -->
	
	<!-- begin panel -->
	<div class="panel panel-inverse">
            @if ($alert)
            <div class="note note-warning note-with-right-icon m-b-15" id="alert-update">
                <div class="note-icon"><i class="fa fa-lightbulb"></i></div>
                <div class="note-content text-right">
                    <h4>
                        <b>{{$alert}}</b>
                    </h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                        Maecenas id gravida libero. Etiam semper id sem a ultricies.
                    </p>
                </div>
            </div>
        @endif
        
		<div class="panel-body">
            <form action="{{route('order.update',$order->id)}}" method="POST">
                <fieldset class="note note-secondary note-warning">
                    <div class="row">
                        <div class="col-3">
                            <div class="form-group">
                            <label for="">Invoice Number</label>
                                <input type="text" name="invoice_number" 
                                        class="form-control f-s-17 f-w-400 text-black-darker" 
                                        value="{{$order->invoice_number}}" readonly/>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                            <label for="">Customer Company</label>
                            <select class="form-control text-black-darker" name="customers_id" data-size="10" data-live-search="true" data-style="btn-success text-white">
                                    @foreach ($customer as $i)
                                        @if ($i['id'] == $order->customers_id)
                                            <option value="{{$i['id']}}" selected>{{$i['company']}}</option>
                                        @endif
                                        <option value="{{$i['id']}}">{{$i['company']}}</option>
                                    @endforeach
                            </select>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                            <label for="">Name</label>
                                <input type="text" name="delivery_name" class="form-control"
                                    value="{{$order->delivery_name}}" />
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                            <label for="">Company</label>
                                <input type="text" name="delivery_company" class="form-control" 
                                    value="{{$order->delivery_company}}"/>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                            <label for="">Alamat</label>
                                <input type="text" name="delivery_street_address" 
                                value="{{$order->delivery_street_address}}" class="form-control" />
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                            <label for="">Kota</label>
                            <input type="text" name="delivery_city" value="{{$order->delivery_city}}" class="form-control" />
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                            <label for="">Kode POS</label>
                            <input type="text" name="delivery_postcode" value="{{$order->delivery_postcode}}" class="form-control" />
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                            <label for="">Phone</label>
                            <input type="text" name="delivery_phone" value="{{$order->delivery_phone}}" class="form-control" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                    
                <fieldset class="note note-purple">
                    <div class="row">
                        <div class="col-3">
                            <div class="form-group">
                            <label for="">Billing Name</label>
                            <input type="text" name="billing_name" value="{{$order->billing_name}}" class="form-control " />
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                            <label for="">Billing Company</label>
                            <input type="text" name="billing_company" value="{{$order->billing_company}}" class="form-control " />
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                            <label for="">Billing Address</label>
                            <input type="text" name="billing_street_address" value="{{$order->billing_street_address}}" class="form-control " />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group row m-b-10">
                                <label class="col-form-label">Payment Type</label>
                                <div class="col-md-9">
                                    <div class="radio radio-css radio-inline">
                                        <input type="radio" name="payment_method" id="inlineCssRadio1" value="cash" checked />
                                        <label for="inlineCssRadio1">Cash</label>
                                    </div>
                                    <div class="radio radio-css radio-inline">
                                        <input type="radio" name="payment_method" id="inlineCssRadio2" value="debit" />
                                        <label for="inlineCssRadio2">Debit</label>
                                    </div>
                                    <div class="radio radio-css radio-inline">
                                        <input type="radio" name="payment_method" id="inlineCssRadio3" value="credit" />
                                        <label for="inlineCssRadio3">Credit</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
                {{-- <a href="{{route('master.courier')}}" class="btn btn-sm btn-default">Cancel</a> --}}
                <button type="submit" class="btn btn-sm btn-primary m-r-5">Save</button>
            </form>
		</div>
	</div>
	<!-- end panel -->
@endsection

@push('css')
<link href="{{base_url('assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css')}}" rel="stylesheet" />
<link href="{{base_url('assets/plugins/select2/dist/css/select2.min.css')}}" rel="stylesheet" />

@endpush

@push('scripts')
<script src="{{base_url('assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js')}}"></script>
<script src="{{base_url('assets/plugins/select2/dist/js/select2.min.js')}}"></script>
<script>
jQuery(function(){
    $('select').select2()
    // $(".selectpicker").selectpicker("render")
})
</script>
    
@endpush