
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

    set_cookie(cname, cvalue, exdays) {
        if  (this.get_cookie(cname)) {
            document.cookie = cname + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
        }
        var d = new Date();
        d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
        var expires = "expires=" + d.toGMTString();
        document.cookie = cname + "=" + cvalue + "; " + expires + "; path=/";
    }

    get_cookie(cname) {
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ')
                c = c.substring(1);
            if (c.indexOf(name) == 0) {
                return c.substring(name.length, c.length);
            }
        }
        return '';
    }

}