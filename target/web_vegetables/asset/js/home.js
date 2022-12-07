$(function () {
    // Handler for .ready() called. Put the Slick Slider etc. init code here.
    $(".header-carousel").slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        dots: true,
        autoplay: true,
        autoplaySpeed: 3000,
    });
})

$(function () {
    // Handler for .ready() called. Put the Slick Slider etc. init code here.
    $(".blog-carousel").not("slick-initialized").slick({
        arrows: false,
        infinite: true,
        autoplay: true,
        autoplaySpeed: 3000,
        speed: 300,
        slidesToShow: 4,
        slidesToScroll: 4,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                },
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2,
                },
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                },
            },
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ],
    });

})
var myModal = document.getElementById("exampleModal");
var myInput = document.getElementById("exampleModal");

if (myModal ) {
    myModal.addEventListener("shown.bs.modal", function () {
        myInput.focus();
    });
}