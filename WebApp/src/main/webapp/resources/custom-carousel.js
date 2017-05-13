/**
 * 
 */
$(function() {
	
	var carouselTotle = $(".custom-carousel").length;
//	var carouselObj = $(".custom-carousel");
	
	function append_li(customCarousel) {
		var li = "";
		var get_ac = customCarousel.find(".active");
		var ac = customCarousel.find(".carousel-inner div").index(get_ac);
		var carouselWarpId = customCarousel.attr("id");
		var total =customCarousel.find('.carousel-inner div.item').length;
		console.log(total);
		
		for (var i = 0; i < total; i++) {
			if (i == (ac) / 2)
				li = "<li data-target='" + carouselWarpId + "' data-slide-to='"
						+ i + "' class='active'></li>";
			else
				li = "<li data-target='" + carouselWarpId + "' data-slide-to='"
						+ i + "' class=''></li>";
			customCarousel.find(".carousel-indicators").append(li);
		}
	}
	
	
	
});
