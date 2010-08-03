$(document).ready(function(){
	
	$(".toggle_container").hide();
	$("a#hide-all").hide();

	$("a#show-all").click(function(e){
		$(".toggle_container").fadeIn();
		$("a#show-all").hide();
		$("a#hide-all").show();
		$(document).find(".h2min").removeClass("h2min").addClass("h2max");
		e.preventDefault()
	});
	$("a#hide-all").click(function(e){
		$(".toggle_container").fadeOut();
		$("a#hide-all").hide();
		$("a#show-all").show();
		$(document).find(".h2max").removeClass("h2max").addClass("h2min");
		e.preventDefault()
	});
	
	$("h2.trigger").toggle(function(){
		$(this).addClass("active"); 
		}, function () {
		$(this).removeClass("active");
	});
	
	$("h2.trigger").click(function(){
		if ($(this).next(".toggle_container").css("display") == "none") {
			$(this).next(".toggle_container").fadeIn();
			$(this).find(".h2min").removeClass("h2min").addClass("h2max");
		} else {
			$(this).next(".toggle_container").fadeOut();
			$(this).find(".h2max").removeClass("h2max").addClass("h2min");
		}
	});

});
