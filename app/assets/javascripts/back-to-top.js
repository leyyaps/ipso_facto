$(document).ready(function () {

    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            $('.arrow').addClass('scrollup');
        } else {
            $('.arrow').removeClass('scrollup');
        }
    });

    $('.arrow').click(function () {
        $("html, body").animate({
            scrollTop: 0
        }, 600);
        return false;
    });

});