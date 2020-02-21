$( document ).ready(function() {
    const com_cart = new Honey('com-cart');

    var total_price = com_cart.com.find('.total-price .number');
    var com_card = com_cart.com.find('.com-card');
    var count_input = com_card.find('.input-count');
    var arrow_count = com_card.find('.arrow-count');

    count_input.on('click keydown mousedown', function() {
        total_price.html(sum_total(count_input));
    });

    arrow_count.on('click keydown mousedown', function() {
        total_price.html(sum_total(count_input));
    });

    function sum_total (count_input) {
        var total = 0;
        count_input.each( function(index, value) {
            total += parseInt(value.value);
        });
        return total;
    }

});