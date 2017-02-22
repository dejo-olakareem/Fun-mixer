$(document).on('turbolinks:load', function(){
	color_change()
});



var color_change = function(){
	var what = $("body")
	var backend = $("body").attr("class")
	if(backend.includes("homepage")){
		$(".vevatne").css("color","black")
	}else 
		{
		$(".vevatne").css("color","white")


}
}