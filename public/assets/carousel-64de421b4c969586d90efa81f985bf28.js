$(document).ready(function(){$("#carousel").carouFredSel({items:1,direction:"left",prev:"#prevbtn",next:"#nextbtn",scroll:{items:1,duration:1e3,pauseOnHover:!0,width:960,height:395,infinite:!0,fx:"crossfade"}})}),$("#carousel_fx").change(function(){$("#foo2").trigger("configuration",["scroll.fx",$(this).val()])}),$("#carousel_direction").change(function(){$("#foo2").trigger("configuration",["direction",$(this).val()])});