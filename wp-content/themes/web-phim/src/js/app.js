$(document).ready(function () {
    /**
     *
     * menu fixed
     */

    /**
     * menu mobile
     */
    if ($(window).width() < 992) {
        $('.menu-item-has-children').click(function () {
            var th = $(this);
            th.children('ul').slideToggle()
        })
        $('.btn-open').click(function () {
            $('#showRightPush').toggleClass('active');
            $('.menu-active').toggleClass('show-menu-mb');
        });
    }
    document.addEventListener("click", function (event) {
        if (event.target.closest("#menu-main")) return;
        $('#showRightPush').removeClass('active');
        $('.menu-active').removeClass('show-menu-mb');
    });

});
