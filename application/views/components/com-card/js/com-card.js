$( document ).ready(function() {
    const com_card = new Honey('com-card');

    var card_count = com_card.com.find('.card-count');
    var arrow_count_up = card_count.find('.arrow-count.up');
    var arrow_count_down = card_count.find('.arrow-count.down');
    var inpunt_count = card_count.find('input');

    arrow_count_down.on('click', function() {
        var spinner = $(this).parent().parent().find('input');
        spinner.val(parseInt(spinner.val(), 10) - 1);
        if(spinner.val() <= 0) { spinner.val(0) }
    });

    arrow_count_up.on('click', function() {
        var spinner = $(this).parent().parent().find('input');
        spinner.val(parseInt(spinner.val(), 10) + 1);
        if(spinner.val() >= 99) { spinner.val(99) }
    });

    inpunt_count.focusout(function() {
        if(inpunt_count.val() <= 0) { inpunt_count.val(0) }
    });


});