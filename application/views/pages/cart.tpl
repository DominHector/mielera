{{include file="components/com-headboard/com-headboard.tpl" title="Main Page"}}
{{include file="components/com-card/com-card.tpl" title="Main Page"}}
<body>
<div class="section section-1">
    <div class="container">
        <div class="row">
            {{call name="com_card" data=$PRODUCTS col=1 type="horizontal" empty="No hay productos en el carrito"}}
        </div>
    </div>

    <form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">

        <!-- Identify your business so that you can collect the payments. -->
        <input type="hidden" name="business" value="kin@kinskards.com">

        <!-- Specify a PayPal Shopping Cart Add to Cart button. -->
        <input type="hidden" name="cmd" value="_cart">
        <input type="hidden" name="add" value="1">

        <!-- Specify details about the item that buyers will purchase. -->
        <input type="hidden" name="item_name" value="Birthday - Cake and Candle">
        <input type="hidden" name="amount" value="0.01">
        <input type="hidden" name="currency_code" value="USD">

        <!-- Display the payment button. -->
        <input type="image" name="submit"
               src="https://www.paypalobjects.com/en_US/i/btn/btn_cart_LG.gif"
               alt="Add to Cart">
        <img alt="" width="1" height="1"
             src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif">
    </form>

</div>
</body>
</html>