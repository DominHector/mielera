
class Honey {
    constructor (com_class) {
        this.com = $('.' + com_class);
    }

    adjust_height_like_window () {
        this.com.height($(window).innerHeight());
    }

    manage_fading_by_scroll (position = 0) {
        if($(window).scrollTop() <= position) {
            this.com.addClass('fading');
        }else{
            this.com.removeClass('fading');
        }
    }



}