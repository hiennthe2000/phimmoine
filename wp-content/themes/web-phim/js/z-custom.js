$(document).ready(function () {
    $(".header .menu-mobile .close .bt-close").click(function () {
        $(".header .menu-mobile").removeClass("active-mobile");
        $(".header .overlays").removeClass("active-over");
        $("body").removeClass("disable-sroll");
    });
    $(".header .menu-open-btn").click(function () {
        $(".header .overlays").addClass("active-over");
        $(".header .menu-mobile").addClass("active-mobile");
        $("body").addClass("disable-sroll");
    });
    $(".header .overlays").click(function () {
        $(".header .overlays").removeClass("active-over");
        $(".header .menu-mobile").removeClass("active-mobile");
        $("body").removeClass("disable-sroll");
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

    $('.movies-list-home').slick({
        infinite: true,
        slidesToShow: 5,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 4000,
        margin: 0,
        arrows: true,
        dots: false,
        prevArrow: "<div class='arrow-back'><img class='a-right control-c next slick-next' src='/wp-content/themes/web-phim/images/back-button.svg'></div>",
        nextArrow: "<div class='arrow-next'><img class='a-left control-c prev slick-prev' src='/wp-content/themes/web-phim/images/next-button.svg'></div>",
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

    if (content.length && toggleButton.length) {
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
    }

    //ẩn hiện nội dung trang chi tiết
    var contentSingle = $(".story-content .storyline");
    var heightContent = contentSingle.height();
    console.log(heightContent);
    var SingleButton = $("#single-button span");

    if (heightContent < 200) {
        $('.story-content #single-button').hide();
    }

    if (contentSingle.length && SingleButton.length) {
        if (contentSingle[0].scrollHeight > 200) {
            SingleButton.show();
        }

        SingleButton.click(function () {
            if (contentSingle.hasClass("expanded")) {
                contentSingle.removeClass("expanded");
                contentSingle.animate({ maxHeight: 200 }, 400);
                $(this).text("Xem thêm");
            } else {
                contentSingle.addClass("expanded");
                contentSingle.animate({ maxHeight: contentSingle[0].scrollHeight }, 400);
                $(this).text("Thu gọn");
            }
        });
    }
});