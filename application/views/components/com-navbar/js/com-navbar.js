$( document ).ready(function() {
    const com_navbar = new Honey('com-navbar');

    if(!com_navbar.com.hasClass('not-fading')){
        $(window).scroll(function() {
            com_navbar.manage_fading_by_scroll(400);
        });
    }

    $(".dropdown-trigger").dropdown();

});