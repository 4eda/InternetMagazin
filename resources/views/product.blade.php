@extends('master')
@section ('title' , 'Товар')
@section('content')
    <div class="starter-template">
                            <h1>iPhone X 64GB</h1>
    <h2>Мобильные телефоны</h2>
    <p>Цена: <b>71990 ₽</b></p>
    <img src="http://internet-shop.tmweb.ru/storage/products/iphone_x.jpg">
    <p>Отличный продвинутый телефон с памятью на 64 gb</p>

            <form action="https://internet-shop.tmweb.ru/basket/add/1" method="POST">
            <button type="submit" class="btn btn-success" role="button">Добавить в корзину</button>

            <input type="hidden" name="_token" value="0FEIUVKMrZ5ORLC5bs98u2bL9oXVRK8nlbF6yT3L">        </form>
        </div>
 @endsection