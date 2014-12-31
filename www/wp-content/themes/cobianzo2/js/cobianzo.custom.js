jQuery(document).ready(function() {
 
  /* The slideshow, we use owl slider  */
  if (jQuery("#owl-demo").length) {
  jQuery("#owl-demo").owlCarousel({
 
      navigation : true, // Show next and prev buttons
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem:true
 
      // "singleItem:true" is a shortcut for:
      // items : 1, 
      // itemsDesktop : false,
      // itemsDesktopSmall : false,
      // itemsTablet: false,
      // itemsMobile : false
 
  });
  }
 
 /* efecto para q el menu se quede arriba */
	var starting_position = jQuery('#primary-menu').outerHeight( true );
	//alert(starting_position);
	jQuery(window).scroll(function() {
		var yPos = ( jQuery(window).scrollTop() );
		if( yPos > starting_position && window.innerWidth > 270 ) { // show sticky menu after these many (starting_position) pixels have been scrolled down from the top and only when viewport width is greater than 500px.
			jQuery("#header").addClass('navbar-fixed-top');
		} else {
			jQuery("#header").removeClass('navbar-fixed-top');
		}
	});
 
 /* the effect on previw work when hovering. Note that "live" is deprecated, but if i use "on", it doesnt work after using ajax */
  jQuery("ul#works-preview li").live({
    mouseenter: function () {        jthis = jQuery(this); jthis.find('h5').css('width', jthis.width()+'px').fadeTo('slow', 0.8);     },
    mouseleave: function () {        jQuery(this).find('h5').fadeOut('slow');      }
	});
  
  
  
  
  
  /* efecto para centrar las imágenes */
  center_img_height();
});


function center_img_height(){

	jQuery(".center-img-height").each(function(index){
		jthis = jQuery(this);
		if (!jthis.find("img").length) return;
		else jimg	= 	jthis.find("img");
		var height	=	jthis.height();
		var img_height	=	jimg.height();
		
		if (img_height > height) {
			diff	= img_height - height;
			jimg.css("margin-top", diff/2*(-1));
		}
	});
}



/* Generic funciotons: */

/* loading wheel when ajax. Si se especifica contenedor, se centra en el container, si no, en la window */
function addLoadingWheel(contenedor, extra_css) { 	
		if (typeof extra_css === "undefined") extra_css = '';
		var contenedor 	=	(contenedor || 'body');		 	var jContenedor = 	jQuery(contenedor);
		var height		= 	(contenedor == 'body')? 	jQuery(window).height() : (jContenedor.height()); 
		var position	=	(contenedor == 'body')? 	'fixed' : 'absolute';
		jContenedor.prepend("<div class='loading-wheel' style='width:"+jContenedor.width()+"px; height:"+height+"px; position:"+position+"; "+extra_css+"'></div>");
		return true; 
}	
function removeLoadingWheel() 	{  jQuery('.loading-wheel').remove(); 			}
		
function moveLoadingWheelTo(contendor){
	jcontenedor = jQuery(contendor).eq(0);
	jLoadingWheel = jQuery('.loading-wheel').eq(0);
	jLoadingWheel.css('left', jcontenedor.offset().left).css('top', jcontenedor.offset().top);
}