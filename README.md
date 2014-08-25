audi-goodwood-booking-web
=========================

This is the Wordpress project for Cobianzo portfolio website.
=================================================================================================================================


Structure of the project for development:
------------------------------------------------------------------------------------------------------------------------------------------
- Database must be called "wp_cobianzo2" 

- /db-dumps/
	- contains a bunch of the development databases used along time. Most of them will include dummy data.
	- IMPORTANT: any database in this folder MUST replace any reference to the absolute path of the proejct as "SITEURL" (without quotas)
		- For instance, if your working url is http://localhost/cobianzo2/www, then when you dump any database, make sure to replace any occurrence with that string into SITEURL.
	- Any database here MUST keep the name file format:  YYYY-MM-DD-description-of-database.
- load-latest-db-dump.php
	It's independent from the git project (every developer might have different settings on it). load-latest-db-dump-sample.php is a template to be used and renamed by any developer in this project.
	By loading this script in the browser, the latest database in /db-dump/ will be loaded in wp_cobianzo2.



------------------------------------------------------------------------------------------------------------------------------------
PARAMS in wp-config.php
------------------------------------------------------------------------------------------------------------------------------------------
- In wp-config.php we have the params to connect to our local database.
- There are some other params that be set up:

 





