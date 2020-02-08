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
		<li class="breadcrumb-item"><a href="javascript:;">Page Options</a></li>
		<li class="breadcrumb-item active">Blank Page</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Blank Page <small>header small text goes here...</small></h1>
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
            <form action="{{route('master.courier.create')}}" method="POST">
                <fieldset>
                    <div class="row">
                    @foreach ($formInput as $v)
                        @if ($v == 'users_id')
                            <div class="col-4">
                                    <div class="form-group">
                                    <label for="">Login User</label>
                                        <select class="form-control text-black-darker" name="user_id" data-size="10" data-live-search="true" data-style="btn-success text-white">
                                                <option value="" selected >:: Select User ::</option>
                                                @foreach ($user as $i)
                                                    <option value="{{$i['id']}}">{{$i['username']}}</option>
                                                @endforeach
                                        </select>
                                    </div>
                            </div>
                        @elseif($v == 'id')
                        
                        @else
                            <div class="col-4">
                                        <div class="form-group">
                                        <label for="{{$v}}">{{ucfirst($v)}}</label>
                                            <input type="text" name="{{$v}}" class="form-control" />
                                        </div>
                                    </div>
                        @endif
                    @endforeach
                        
                    </div>
                    <button type="submit" class="btn btn-sm btn-primary m-r-5">Save</button>
                    <a href="{{route('master.courier')}}" class="btn btn-sm btn-default">Cancel</a>
                </fieldset>
            </form>
		</div>
	</div>
	<!-- end panel -->
@endsection

@push('css')

@endpush

@push('scripts')
	
@endpush