{{include file="components/com-card/com-card.tpl"}}

{{function name="com_cart"}}
<div class="com-cart">
    <div class="total-container">
        <div class="container">
            <div class="row">
                <div class="total-price col-lg-12">
                    <div class="text-price">Total:</div>
                    <div class="number-price"><span id="totalPrice" class="number">0</span><i class="material-icons right">euro</i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section section-2">
        <div class="container">
            <div class="row">
                {{call name="com_card" data=$PRODUCTS col=1 type="horizontal" empty="No hay productos en el carrito" counter=true}}
            </div>
        </div>
    </div>
    <div class="container section-3">
        <div class="row">
            <div class="col-lg-12">
                <form id="products-form" class="product-form" method="post">
                    {{foreach $PRODUCTS as $item}}
                        <input class="item-{{$item['ml_product_id']}}" type="hidden" name="{{$item['ml_product_id']}}" value="0">
                    {{/foreach}}
                    <input type="image" class="btn btn-primary yellow darken-2 right" src="{{base_url()}}assets/img/components/com-cart/paypal.png" onclick="document.getElementById('products-form').submit();" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                </form>
            </div>
        </div>
    </div>
</div>
{{/function}}