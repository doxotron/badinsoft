$(document).ready(function () {
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
});