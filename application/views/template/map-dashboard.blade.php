@extends('template.layouts.default')

@section('title', 'MAP')

@section('content')
	{!! $map['html'] !!}
@endsection

@push('css')

@endpush

@push('scripts')
	{!! $map['js'] !!}
	<script>
		function ShowPickupBaloon(id) {
			console.log(id)

			return `
			<div class="card card-inverse bg-black text-right">
				<div class="card-block">
					<blockquote class="card-blockquote">
						<p class="f-s-14">Fusce finibus sed augue quis volutpat. Duis non cursus felis. Nunc tristique lacinia orci, vel iaculis ipsum pretium at. Nullam ac mattis eros. Quisque a mauris in ex vulputate accumsan.</p>
						<footer class="f-s-12">
							Someone famous in <cite title="Source Title">Source Title</cite>
						</footer>
					</blockquote>
				</div>
			</div>
			`
		}
	</script>
@endpush