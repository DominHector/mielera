$( document ).ready(function() {
    const navbar = new Honey('com-navbar');

    $(window).scroll(function() {
        navbar.manage_opacity_by_scroll(400);
    });

});