$(document).ready(function(){

	$(window).on('scroll', function(){

	if($(window).scrollTop() < 10){

		$('.magic-border').removeClass("magic-border-magnificent");
	}
	else
	{ 
		$('.magic-border').addClass('magic-border-magnificent');
	}

	});
   
});