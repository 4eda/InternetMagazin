@extends('master')

@section ('title' , 'Корзина')

@section('content')
<div class="starter-template">
    <p class="alert alert-success">Добавлен товар iPhone X 64GB</p>
            <h1>Корзина</h1>
<p>Оформление заказа</p>
<div class="panel">
<table class="table table-striped">
<thead>
<tr>
<th>Название</th>
<th>Кол-во</th>
<th>Цена</th>
<th>Стоимость</th>
</tr>
</thead>
<tbody>
            <tr>
    <td>
        <a href="https://internet-shop.tmweb.ru/mobiles/iphone_5se">
            <img height="56px" src="http://internet-shop.tmweb.ru/storage/products/iphone_5.jpg">
            iPhone 5SE
        </a>
    </td>
    <td><span class="badge">1</span>
        <div class="btn-group form-inline">
            <form action="https://internet-shop.tmweb.ru/basket/remove/4" method="POST">
                <button type="submit" class="btn btn-danger" href=""><span
                        class="glyphicon glyphicon-minus" aria-hidden="true"></span></button>
                <input type="hidden" name="_token" value="0FEIUVKMrZ5ORLC5bs98u2bL9oXVRK8nlbF6yT3L">                            </form>
            <form action="https://internet-shop.tmweb.ru/basket/add/4" method="POST">
                <button type="submit" class="btn btn-success"
                        href=""><span
                        class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
                <input type="hidden" name="_token" value="0FEIUVKMrZ5ORLC5bs98u2bL9oXVRK8nlbF6yT3L">                            </form>
        </div>
    </td>
    <td>17221 ₽</td>
    <td>17221 ₽</td>
</tr>
            <tr>
    <td>
        <a href="https://internet-shop.tmweb.ru/mobiles/iphone_x_64">
            <img height="56px" src="http://internet-shop.tmweb.ru/storage/products/iphone_x.jpg">
            iPhone X 64GB
        </a>
    </td>
    <td><span class="badge">2</span>
        <div class="btn-group form-inline">
            <form action="https://internet-shop.tmweb.ru/basket/remove/1" method="POST">
                <button type="submit" class="btn btn-danger" href=""><span
                        class="glyphicon glyphicon-minus" aria-hidden="true"></span></button>
                <input type="hidden" name="_token" value="0FEIUVKMrZ5ORLC5bs98u2bL9oXVRK8nlbF6yT3L">                            </form>
            <form action="https://internet-shop.tmweb.ru/basket/add/1" method="POST">
                <button type="submit" class="btn btn-success"
                        href=""><span
                        class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
                <input type="hidden" name="_token" value="0FEIUVKMrZ5ORLC5bs98u2bL9oXVRK8nlbF6yT3L">                            </form>
        </div>
    </td>
    <td>71990 ₽</td>
    <td>143980 ₽</td>
</tr>
        <tr>
<td colspan="3">Общая стоимость:</td>
<td>161201 ₽</td>
</tr>
</tbody>
</table>
<br>
<div class="btn-group pull-right" role="group">
<a type="button" class="btn btn-success" href="https://internet-shop.tmweb.ru/basket/place">Оформить заказ</a>
</div>
</div>
</div>
@endsection
    