
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="{{base_url('assets/plugins/jquery/jquery-3.2.1.min.js')}}"></script>
	<script src="{{base_url('assets/plugins/jquery/jquery-migrate-1.1.0.min.js')}}"></script>
	<script src="{{base_url('assets/plugins/jquery-ui/jquery-ui.min.js')}}"></script>
	<script src="{{base_url('assets/plugins/bootstrap/4.0.0/js/bootstrap.bundle.min.js')}}"></script>
	<!--[if lt IE 9]>
		<script src="../assets/crossbrowserjs/html5shiv.js"></script>
		<script src="../assets/crossbrowserjs/respond.min.js"></script>
		<script src="../assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="{{base_url('assets/plugins/slimscroll/jquery.slimscroll.min.js')}}"></script>
	<script src="{{base_url('assets/plugins/js-cookie/js.cookie.js')}}"></script>
<script src="{{base_url('assets/js/axios/axios.min.js')}}"></script>
{{-- <script src="{{base_url('assets/js/bundle.js')}}"></script> --}}
<script src="{{base_url('assets/js/theme/default.js')}}"></script>
<script src="{{base_url('assets/js/apps.min.js')}}"></script>
<script src="{{base_url('/assets/plugins/datatables/js/jquery.dataTables.js')}}"></script>
<script src="{{base_url('/assets/plugins/datatables/js/dataTables.bootstrap4.js')}}"></script>
<script src="{{base_url('/assets/plugins/datatables/js/buttons/dataTables.buttons.min.js')}}"></script>
<script src="{{base_url('/assets/plugins/datatables/js/buttons/buttons.bootstrap4.min.js')}}"></script>
<script src="{{base_url('/assets/plugins/select2/dist/js/select2.min.js')}}"></script>
<script>
	$(document).ready(function() {
		App.init();
	});
</script>

@stack('scripts')