$(document).ready(function() {
    $("#carousel").carouFredSel({

        items               : 1,
        direction           : "left",
        prev: "#prevbtn",
        next: "#nextbtn",
        scroll : {
            items           : 1,
            duration        : 1000,                        
            pauseOnHover    : true,
            width           : 960,
            height          : 395,
            infinite        : true,
            fx: "crossfade"
        }                  
    });
});
$("#carousel_fx").change(function() {
    $("#foo2").trigger("configuration", [ "scroll.fx", $(this).val() ]);
});
$("#carousel_direction").change(function() {
    $("#foo2").trigger("configuration", [ "direction", $(this).val() ]);
});
