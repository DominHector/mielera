
class Honey {
    constructor (com_class) {
        this.com = $('.' + com_class);
    }

    adjust_height_like_window () {
        this.com.height(window.innerHeight);
    }

    manage_opacity_by_scroll (position = 0) {
        if($(window).scrollTop() <= position) {
            this.com.removeClass('opaced');
        }else{
            this.com.addClass('opaced');
        }
    }

}