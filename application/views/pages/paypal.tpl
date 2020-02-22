<body onload="document.getElementById('products-paypal-form').submit();">
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" id="products-paypal-form" class="products-paypal-form" method="post">
    <input type="hidden" name="cmd" value="_cart">
    <input type="hidden" name="business" value="hectorda85@gmail.com">
    <input type="hidden" name="lc" value="AL">
    <input type="hidden" class="item_number" name="item_number" value="{{"-"|implode:$purchase_ids}}">
    <input type="hidden" class="item_name" name="item_name" value="{{$purchases_name}}">
    <input type="hidden" class="amount" name="amount" value="{{$purchase_total_prices}}">
    <input type="hidden" name="currency_code" value="EUR">
    <input type="hidden" name="button_subtype" value="products">
    <input type="hidden" name="no_note" value="0">
    <input type="hidden" name="shipping" value="0">
    <input type="hidden" name="add" value="1">
    <input type="hidden" name="bn" value="PP-ShopCartBF:btn_cart_LG.gif:NonHostedGuest">
</form>
<script type="text/javascript">
    setTimeout(function () {
        window.location.replace('{{base_url()}}purchases');
    }, 600);
</script>
</body>
</html>
