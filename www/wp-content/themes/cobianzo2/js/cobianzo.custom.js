jQuery(document).ready(function() {
 
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
 
 
 
  jQuery("ul#works-preview li").hover(
  	function(){	jthis = jQuery(this); jthis.find('h5').css('width', jthis.width()+'px').fadeTo('slow', 0.5); },
  	function(){ jQuery(this).find('h5').fadeOut('slow');  }  
  );
 
});