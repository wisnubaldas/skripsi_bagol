<?php
function sha_url(string $path) {
	$x = null;
	for ($i=0; $i < 5; $i++) { 
		$x .= hash('ripemd160', $path.date( "Y-m-d", strtotime("now")));
	}
	return $x;
}

Route::get('/', function(){
    redirect('/login');
});

	// authentication manual
	Route::match(['get', 'post'], 'login', 'SimpleAuthController@login',['middleware' => ['MyAuthMiddlewareMiddleware']])->name('login');
	Route::get('logout', 'SimpleAuthController@logout')->name('logout');
	Route::match(['get', 'post'], 'signup', 'SimpleAuthController@signup')->name('signup');

// Route::middleware('MyAuthMiddlewareMiddleware','post_controller');
// $this->encrypt->encode($msg);
// Route::auth(FALSE);
Route::get('/homepage', 'DashboardController@index',['middleware' => ['UserMiddleware']])->name('homepage');
Route::group('master',['namespace' => 'master','middleware' => ['UserMiddleware']], function(){
	Route::get('customer','CustomerController@index')->name('master.customer');
	Route::get('customer/{id}/'.hash("gost", 'delete'),'CustomerController@delete')->name('master.customer.delete');
	Route::match(['GET', 'POST'],'customer/'.hash("gost", 'create'),'CustomerController@create')->name('master.customer.create');
	Route::match(['GET', 'POST'],'customer/{id}/'.hash("gost", 'edit'),'CustomerController@edit')->name('master.customer.edit');
	Route::get(hash("sha256", 'customers'),'CustomerController@customersGrid')->name('master.grid.customer');
	Route::group('courier', function(){
		Route::get('/','CourierController@index')->name('master.courier');
		Route::get('{id}/'.hash("gost", 'delete'),'CourierController@delete')->name('master.courier.delete');
		Route::match(['GET', 'POST'],'/'.hash("gost", 'create'),'CourierController@create')->name('master.courier.create');
		Route::match(['GET', 'POST'],'/{id}/'.hash("gost", 'edit'),'CourierController@edit')->name('master.courier.edit');
		Route::get(hash("sha256", 'couriercourier'),'CourierController@grid')->name('courier.grid');
	});
	Route::group('product', function(){
		Route::get('/','ProductController@index')->name('product');
		Route::get('{id}/'.hash("gost", 'delete'),'ProductController@delete')->name('product.delete');
		Route::match(['GET', 'POST'],'/'.hash("gost", 'create'),'ProductController@create')->name('product.create');
		Route::match(['GET', 'POST'],'/{id}/'.hash("gost", 'edit'),'ProductController@edit')->name('product.edit');
		Route::get(hash("sha256", 'product'),'ProductController@grid')->name('product.grid');
	});
	Route::group(sha_url('user'), function(){
		Route::resource('user','UserController');
		Route::get('grid','UserController@grid')->name('user.grid');
	});
	Route::group('order', function()
	{
		Route::get('/','OrderController@index')->name('order');
		Route::match(['GET', 'POST'],'create','OrderController@create')->name('order.create');
		// Route::match(['GET', 'POST'],'/{id}/'.hash("gost", 'edit'),'OrderController@edit')->name('order.take');
		Route::get(hash("sha256", 'datatables'),'OrderController@grid')->name('order.grid');
		Route::get('order/edit/{id}','OrderController@edit')->name('order.edit');
		Route::post('order/update/{id}','OrderController@update')->name('order.update');
		Route::get('order/show/{id}','OrderController@show')->name('order.show');

	});
});

Route::group('transaction',['namespace' => 'transaction','middleware' => ['MyAuthMiddlewareMiddleware']],function(){
		Route::resource('take_order','TakeOrderController');
		Route::get('order_list','TakeOrderController@grid_order')->name('grid_order');
		Route::get('order.delivery','TakeOrderController@create_delivery')->name('order.delivery');	

		Route::resource('pickup','PickupController');
		Route::get('get_data_customer','PickupController@get_data_customer')->name('get_data_customer');

		Route::get('deliver_complete','DeliverCompleteController@index')->name('complete.index');
		Route::get('complete/grid','DeliverCompleteController@grid')->name('complete.grid');
		Route::get('complete/done/{id}','DeliverCompleteController@done')->name('complete.done');
		
		Route::get('report','ReportController@index')->name('report.index');

		
});

Route::set('404_override', function(){
    show_404();
});
Route::set('translate_uri_dashes',FALSE);
