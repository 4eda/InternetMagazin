<div class="col-sm-6 col-md-4">
    <div class="thumbnail">
        <img src="http://internet-shop.tmweb.ru/storage/products/iphone_x.jpg" alt="iPhone X 64GB">
        <div class="caption">
            <h3>iPhone X 64GB</h3>
            <p>71990 ₽</p>
            <p>
                <a href="{{route('basket')}}" class="btn btn-primary" role="button">В корзину</a>
                @isset($category)
                {{$category->name}}
                @endisset
                <a href="https://internet-shop.tmweb.ru/mobiles/iphone_x_64" class="btn btn-default" role="button">Подробнее</a>
                <input type="hidden" name="_token" value="0FEIUVKMrZ5ORLC5bs98u2bL9oXVRK8nlbF6yT3L"> 
            </p>
        </div>
    </div>
</div>