$( document ).ready(function() {
    const com_card = new Honey('com-card');

    var card_count = com_card.com.find('.card-count');
    var btn_price = com_card.com.find('.btn-price');
    var arrow_count_up = card_count.find('.arrow-count.up');
    var arrow_count_down = card_count.find('.arrow-count.down');
    var inpunt_count = card_count.find('input');

    arrow_count_down.on('click', function() {
        var spinner = $(this).parent().parent().find('input');
        spinner.val(parseInt(spinner.val(), 10) - 1);
        if(spinner.val() < 0) { spinner.val(0) }
        add_product();
    });

    arrow_count_up.on('click', function() {
        var spinner = $(this).parent().parent().find('input');
        spinner.val(parseInt(spinner.val(), 10) + 1);
        if(spinner.val() >= 99) { spinner.val(99) }
        add_product();
    });

    inpunt_count.focusout(function() {
        if(inpunt_count.val() <= 0) { inpunt_count.val(0) }
    });

    btn_price.on('click', function () {
        var product_id = $(this).parents('.com-card').data('productId');
        com_card.set_cookie('cart_product', product_id, 2);
    });

    if(com_card.get_cookie('cart_product') && card_count.length){
        com_card.com.each(function (index, value) {
            if(com_card.get_cookie('cart_product') == $(value).data('productId')) {
                $(value).find('input').val(1);
                $(value).addClass('order-first');
            }
        });
    }

    if(inpunt_count.length) {
        add_product();
    }

    function add_product () {
        inpunt_count.each(function (index, value) {
            if($(value).val() > 0) {
                $(value).parents('.com-card').addClass('highlight');
            }else{
                $(value).parents('.com-card').removeClass('highlight');
            }
        });
    }

});