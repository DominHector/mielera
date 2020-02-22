$( document ).ready(function() {
    const com_cart = new Honey('com-cart');

    var total_price = com_cart.com.find('.total-price .number');
    var com_card = com_cart.com.find('.com-card');
    var product_form = com_cart.com.find('.product-form');
    var arrow_count = com_card.find('.arrow-count');
    var paypal_form_amount = com_cart.com.find('#products-paypal-form .amount');

    arrow_count.on('click', function() {
        var this_card = $(this).parents('.com-card');
        var this_input_value = this_card.find('input').val();
        total_price.html(sum_total());
        paypal_form_amount.val(sum_total());
        add_product_in_form(this_input_value, this_card.data('productId'));
    });

    function sum_total () {
        var total = 0;
        com_card.each( function(index, value) {
            var self = $(value);
            var this_input = self.find('.input-count');
            total += parseFloat(self.data('productPrice') * this_input.val());
        });

        return total.toFixed(2);
    }

    function add_product_in_form (quantity, card_product_id) {
        product_form.find('.item-' + card_product_id).val(quantity);
    }

    if(com_cart.get_cookie('cart_product')){
        total_price.html(sum_total());
        paypal_form_amount.val(sum_total());
        add_product_in_form(1, com_cart.get_cookie('cart_product'));
    }

});