$(document).ready(function () {
	
	$("#burger").click(function() {
		var $self = $(this);
	  $(this).toggleClass("active");
	  $("nav").toggleClass("show");
	  if ($(this).hasClass("active")) {  	
		  $('.hero').click(function () {
		  	$self.removeClass("active");
		  	$('nav').removeClass("show");
		  })
	  }
	});
})