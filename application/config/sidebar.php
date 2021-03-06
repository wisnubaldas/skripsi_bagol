<?php
$config['sidebar'] = [
    'menu' => [
		[
			'icon' => 'fa fa-home',
			'title' => 'Home',
			'url' => route('homepage'),
		],
	    [
			'icon' => 'fa fa-th-large',
			'title' => 'Master',
			'url' => 'javascript:;',
			'caret' => true,
			'sub_menu' => [[
				'url' => route('master.customer'),
				'title' => 'Customer'
			],[
				'url' => route('master.courier'),
				'title' => 'Courier'
			],
			
			[
				'url' => route('user.index'),
				'title' => 'User'
			]]
		],
		[
			'icon' => 'fa fa-gift',
			'title' => 'Logistic',
			'url' => 'javascript:;',
			'caret' => true,
			'sub_menu' => [
								[
									'url' => route('order'),
									'title' => 'Order'
								],
								[
									'url' => route('pickup.index'),
									'title' => 'Pickup'
								],
								[
									'url' => route('take_order.index'),
									'title' => 'Take Order'
								],
								[
									'url' => route('complete.index'),
									'title' => 'Delivery Complete'
								],
			]
		],
		[
			'icon' => 'fa fa-gift',
			'title' => 'Report',
			'url' => route('report.index'),
			'caret' => false,
		],
	]
];
