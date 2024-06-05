$(document).ready(function () {
    $(".header .menu-open-btn").click(function () {
        $(".header .menu-mobile").addClass("active-mobile");
    });
    $(".header .menu-mobile .close .bt-close").click(function () {
        $(".header .menu-mobile").removeClass("active-mobile");
        $(".header .overlays").removeClass("active-over");
    });
    $(".header .menu-open-btn").click(function () {
        $(".header .overlays").addClass("active-over");
    });
    $(".header .overlays").click(function () {
        $(".header .overlays").removeClass("active-over");
        $(".header .menu-mobile").removeClass("active-mobile");
    });

    $(window).scroll(function () {
        if ($(this).scrollTop() > 40) {
            $('.header').addClass('active');
        } else {
            $('.active').removeClass('active');
        }
    });

    $('.slide-banner').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 4000,
        arrows: false,
        dots: false
    });
    var list_item = $('.movies-list-home li').length;
    console.log(list_item);

    $('.movies-list-home').slick({
        infinite: true,
        slidesToShow: 5,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 4000,
        arrows: true,
        dots: false,
        prevArrow: "<img class='a-right control-c next slick-next' src='/wp-content/themes/web-phim/images/angle-circle-prev.svg'>",
        nextArrow: "<img class='a-left control-c prev slick-prev' src='/wp-content/themes/web-phim/images/angle-circle-next.svg'>",
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 4,
                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 3,
                }
            },
            {
                breakpoint: 576,
                settings: {
                    slidesToShow: 2,
                }
            }
        ]
    });

    var iframe = $('.movie-detail-banner iframe')[0];
    if (iframe) {
        iframe.onload = function () {
            $('.movie-detail-banner .loading-video').addClass('d-none');
        };
    }

    //ẩn hiện nội dung trang chủ
    var content = $(".content-page .container");
    var toggleButton = $("#toggle-button span");

    if (content[0].scrollHeight > 310) {
        toggleButton.show();
    }

    toggleButton.click(function () {
        if (content.hasClass("expanded")) {
            content.removeClass("expanded");
            content.animate({ maxHeight: 310 }, 510);
            $(this).text("Xem thêm");
        } else {
            content.addClass("expanded");
            content.animate({ maxHeight: content[0].scrollHeight }, 510);
            $(this).text("Thu gọn");
        }
    });
});