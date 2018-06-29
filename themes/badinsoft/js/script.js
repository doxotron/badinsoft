$(document).ready(function () {
    if ($('body').hasClass('single-post') || $('body').hasClass('single-studies')) {
        readingProgress();
    }

    //store window var
    var windowobj = $(window);
    var docobj = $(document);

    //parallax background
    $("section[data-type='background']").each(function () {
        var bgobj = $(this);
        var bgspeed = $(this).attr("data-speed");
        //console.log(bgspeed);

        $(window).scroll(function () {
            //console.log('lskjdflk');
            var yPos = -($(window).scrollTop() / bgspeed);
            if ($(window).outerWidth() < 1024) {
                yPos = 0;
            }
            var coords = '50%' + yPos + 'px';

            bgobj.css("backgroundPosition", coords);


        });
    });

    windowobj.scroll(function () {
        var pageTop = $("html").scrollTop();
        var header = $('.site-header');
        if (windowobj.scrollTop() > header.outerHeight()) {
            header.addClass('sticky-header');
        } else {
            header.removeClass('sticky-header');
        }

        $('.svg-animation').each(function () {
            var topOfElement = $(this).offset().top;
            var bottomOfElement = $(this).offset().top + $(this).outerHeight();
            var bottomOfScreen = $(window).scrollTop() + window.innerHeight;
            var topOfScreen = $(window).scrollTop();
            var elem = $(this);
            if ((bottomOfScreen > topOfElement) && (topOfScreen < bottomOfElement) && !$(this).hasClass('svg-icons-animated')) {

                $(this).addClass('svg-icons-animated');

                var drawLine = anime({
                    targets: '.svg-icon path, .svg-icon line, .svg-icon polyline',
                    strokeDashoffset: [anime.setDashoffset, 0],
                    easing: 'easeInOutSine',
                    duration: 1500,
                    delay: function (el, i) {
                        return i * 250
                    }
                });
                var backgroundAppear = anime({
                    targets: '.svg-icon .svg-background',
                    opacity: 0.15,
                    easing: 'easeInOutSine',
                    duration: 1200,
                    delay: function (el, i) {
                        return i * 800
                    }
                });
                var dotsAppear = anime({
                    targets: '.svg-icon .svg-dark-filled',
                    opacity: 1,
                    easing: 'easeInOutSine',
                    duration: 1500,
                    delay: function (el, i) {
                        return i * 1000
                    }
                });
            }

        });

        if ($('body').hasClass('single-post') || $('body').hasClass('single-studies')) {
            readingProgress();
        }

        if (pageTop > 300 && ($('html').outerHeight()-$(window).outerHeight()-$("footer").outerHeight()) > pageTop) {
            $(".back-top-fixed").removeClass("back-top-hidden");
        } else {
            $(".back-top-fixed").addClass("back-top-hidden");
        }
    });

    var swiper = new Swiper('.swiper-container', {
        loop: true,
        slidesPerView: 1,
        pagination: {
            el: '.swiper-pagination',
            dynamicBullets: true,
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });

    $("a[href='#top']").click(function (e) {
        e.preventDefault();
        $("html, body").animate({scrollTop:0},500);
    });

});

function readingProgress() {
    var pageHeight = $('.post.type-post').outerHeight();
    var viewHeight = $(window).height();
    var scroll = $('html').scrollTop();
    var pageOutside = pageHeight - viewHeight;

    var progress = scroll * 100 / pageOutside;

    if (pageHeight < viewHeight) {
        $('.reading-progress-fill').css('width', "100%");
    } else {
        $('.reading-progress-fill').css('width', progress.toFixed(2) + "%");
    }
}