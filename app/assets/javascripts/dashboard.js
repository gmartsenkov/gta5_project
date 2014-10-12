$(document).ready(function(){
	$('.dashboard_slide_menu').hide();
	$('#dashboard').click(function(){
		$(this).toggleClass('dashboard_hover');
		$('.dashboard_slide_menu').toggle('slide');
	});
	$('.content').click(function(){
		$('.dashboard_slide_menu').hide('slide',{direction: "left"},"fast");
		$('#dashboard').removeClass('dashboard_hover');
	});
});