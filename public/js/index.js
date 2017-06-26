$(document).ready(function () {
	
	$("#burger").click(function() {
	  $(this).toggleClass("active");
	  $("nav").toggleClass("show");
	  console.log("you clicked")
	});

	console.log("I'm here")
	
})