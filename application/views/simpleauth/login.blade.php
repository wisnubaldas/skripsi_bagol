@extends('template.layouts.empty', ['paceTop' => true])

@section('title', 'Login Page')
@php
	$num = "assets/img/login-bg/login-bg-".rand(1,17).".jpg";
@endphp
@section('content')

	<div class="login-cover">
	    <div class="login-cover-image" style="background-image: url({{base_url($num)}})" data-id="login-cover-image"></div>
	    <div class="login-cover-bg"></div>
	</div>
	<!-- begin login -->
	<div class="login login-v2" data-pageload-addclass="animated fadeIn">
		<!-- begin brand -->
		<div class="login-header">
			<div class="brand">
			<span><a href="{{route('map')}}">Dasboard Map</a> </span>
			<br />
			<span class="logo"></span> <b>{{env('APP_NAME')}}</b>
			<small class="f-w-700">{{env('APP_COMPANY')}}</small>
			</div>
			<div class="icon">
				<i class="fa fa-lock"></i>
			</div>
		</div>
		<!-- end brand -->
		<!-- begin login-content -->
		@isset($messages['danger'])
			@component('template.includes.component.alert')
			    {{$messages['danger']}}
			@endcomponent
		@endisset

		<div class="login-content">
			<form method="POST" class="margin-bottom-0">
				@php
					if( config_item('csrf_protection') === TRUE) {
						$csrf = array(
                                    'name' => ci()->security->get_csrf_token_name(),
                                    'hash' => ci()->security->get_csrf_hash()
                                );
						echo '<input type="hidden" name="'.$csrf['name'].'" value="'.$csrf['hash'].'" />';
					}
				@endphp

				<div class="form-group m-b-20">
					<input type="text" class="form-control form-control-lg" placeholder="Email Address" name="{{config_item('auth_form_username_field')}}" required />
				</div>
				<div class="form-group m-b-20">
					<input type="password" class="form-control form-control-lg" placeholder="Password" name="{{config_item('auth_form_password_field')}}" required />
				</div>
				
				<div class="login-buttons">
					<button type="submit" class="btn btn-success btn-block btn-lg">Login,</button>
				</div>
				
			</form>
		</div>
		<!-- end login-content -->
	</div>
	<!-- end login -->
	
	<ul class="login-bg-list clearfix">
		<li><a href="javascript:;" data-click="change-bg" data-img="{{base_url('assets/img/login-bg/login-bg-17.jpg')}}" style="background-image: url({{base_url('assets/img/login-bg/login-bg-17.jpg')}})"></a></li>
		<li><a href="javascript:;" data-click="change-bg" data-img="{{base_url('assets/img/login-bg/login-bg-16.jpg')}}" style="background-image: url({{base_url('assets/img/login-bg/login-bg-16.jpg')}})"></a></li>
		<li><a href="javascript:;" data-click="change-bg" data-img="{{base_url('assets/img/login-bg/login-bg-15.jpg')}}" style="background-image: url({{base_url('assets/img/login-bg/login-bg-15.jpg')}})"></a></li>
		<li class="active"><a href="javascript:;" data-click="change-bg" data-img="{{base_url('assets/img/login-bg/login-bg-14.jpg')}}" style="background-image: url({{base_url('assets/img/login-bg/login-bg-14.jpg')}})"></a></li>
		<li><a href="javascript:;" data-click="change-bg" data-img="{{base_url('assets/img/login-bg/login-bg-13.jpg')}}" style="background-image: url({{base_url('assets/img/login-bg/login-bg-13.jpg')}})"></a></li>
		<li><a href="javascript:;" data-click="change-bg" data-img="{{base_url('assets/img/login-bg/login-bg-12.jpg')}}" style="background-image: url({{base_url('assets/img/login-bg/login-bg-12.jpg')}})"></a></li>
	</ul>
@endsection

@push('scripts')
	<script src="{{base_url('assets/js/demo/login-v2.demo.js')}}"></script>
	<script>
		$(document).ready(function() {
			LoginV2.init();
			
		});
	</script>

@endpush
