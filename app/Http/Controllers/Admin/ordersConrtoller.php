<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Order;
use Illuminate\Http\Request;

class ordersConrtoller extends Controller
{
    public function index(){
    $orders = Order::where('status', 1)->get();
     return view('auth.orders.index', compact ('orders'));
    }
}
