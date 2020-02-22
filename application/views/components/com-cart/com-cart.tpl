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
                </form>
                <form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" id="products-paypal-form" class="products-paypal-form" method="post">
                    <input type="hidden" name="cmd" value="_cart">
                    <input type="hidden" name="business" value="hectorda85@gmail.com">
                    <input type="hidden" name="lc" value="AL">
                    <input type="hidden" class="item_name" name="item_name" value="Miel">
                    <input type="hidden" class="item_number" name="item_number" value="1">
                    <input type="hidden" class="amount" name="amount" value="0">
                    <input type="hidden" name="currency_code" value="EUR">
                    <input type="hidden" name="button_subtype" value="products">
                    <input type="hidden" name="no_note" value="0">
                    <input type="hidden" name="shipping" value="0">
                    <input type="hidden" name="add" value="1">
                    <input type="hidden" name="bn" value="PP-ShopCartBF:btn_cart_LG.gif:NonHostedGuest">
                    <input type="image" class="btn btn-primary yellow darken-2 right" src="{{base_url()}}assets/img/components/com-cart/paypal.png" onclick="document.getElementById('products-form').submit();" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                    <img alt="" border="0" src="https://www.paypalobjects.com/es_XC/i/scr/pixel.gif" width="1" height="1">
                </form>
            </div>
        </div>
    </div>
</div>
{{/function}}