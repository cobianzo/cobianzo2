jQuery(document).ready(function( $ ) {

	$('#backtoblog a').prop('title','Back to Home Page');
	$('#login').prepend('<h2><a href="'+$('#login h1:first a:first').attr("href")+'" class="button button-primary button-large">Back to Cobianzo co.com</a></h2><br class="clear">');
	$('form#loginform').prepend('<h2>Credentials?.</h2><br class="clear">');
	$('form#lostpasswordform').prepend('<h2>Write down the info, the wait for your email.</h2><br class="clear">');
	$('form#resetpassform').prepend('<h2>Introduce tu nuevo password.</h2><br class="clear">');

	$('form#registerform').prepend('<h2>Create your account. <br\>Check email.</h2><br class="clear">');
	$('form').prepend('<p class="ver"><a href="'+$('#login h1:first a:first').attr("href")+'">Cobianzo Communication Ltd</a></p>');

	//TODO: make the alert boxes look prettier. :)

	$("p.reset-pass:contains('Enter your new password below')").hide();

	$("p.reset-pass:contains('Your password has been reset')").show().addClass('backtologin').removeClass('message').removeClass('reset-pass');
});