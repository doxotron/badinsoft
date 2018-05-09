$(document).ready(function () {
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
        var header = $('.site-header');
        if (windowobj.scrollTop() > header.outerHeight()) {
            header.addClass('sticky-header');
        } else {
            header.removeClass('sticky-header');
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
});