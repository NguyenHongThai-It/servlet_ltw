document.getElementById('--hide').onclick = function(e){
    var hideShow = document.getElementById('hideShow');
    var zoom = document.getElementById('zoom');
    var content =  document.getElementById('general-policy__content');
    var temp = zoom.offsetHeight;

    if (this.checked){
        hideShow.innerHTML = "Show";

        content.style.margin = "1rem";

        zoom.style.width = "17rem";

        zoom.style.height = "5rem";
    }
    else{
        hideShow.innerHTML = "Hide";

        content.style.margin = "1rem";

        zoom.style.width = "100%";

        if(temp > 200)
            zoom.style.height = "26.3rem" ;
        else 
            zoom.style.height = "19.1rem" ;
    }
};
