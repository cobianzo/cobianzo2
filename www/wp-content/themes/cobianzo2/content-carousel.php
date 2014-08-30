<?php
/**
 * @package cobianzo
 */
?>

	<?php 
	
	$attach = wpba_get_attachments();
	

 	?>
	<div class='col-xs-12 text-center'>
		 <img src='<?php echo is_array($featured_image)? $featured_image[0] : ''; ?>' class='img-responsive' >
	</div>


	<div id="owl-demo" class="owl-carousel owl-theme container">
	<?php
		foreach ($attach as $att) :
			$image 			= wp_get_attachment_image_src( $att->ID, 'large' );		
			$title			= $att->post_title;
			$description 	= $att->post_excerpt;
	?> 
	  <div class="item">
	  	<?php if ($title || $description) : ?>
	  	<div class='panel panel-left panel-carousel col-sm-5 col-md-4 '>
	  		<?php if ($title) echo "<h2>$title</h2>"; ?>
	  		<?php if ($description) echo "<p>$description</p>"; ?>	  		
	  	</div>
	  	<?php endif; ?>
	  	<div class='owl-img-container center-img-height'>
		  	<img src="<?php echo $image[0]; ?>" alt="The Last of us">
		</div>
	  </div>
	 <?php endforeach; ?>
	</div>