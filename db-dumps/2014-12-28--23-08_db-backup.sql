DROP TABLE coco_commentmeta;

CREATE TABLE `coco_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE coco_comments;

CREATE TABLE `coco_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO coco_comments VALUES("1","1","Mr WordPress","","https://wordpress.org/","","2014-08-25 16:18:56","2014-08-25 16:18:56","Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.","0","1","","","0","0");



DROP TABLE coco_links;

CREATE TABLE `coco_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE coco_options;

CREATE TABLE `coco_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=557 DEFAULT CHARSET=utf8;

INSERT INTO coco_options VALUES("1","siteurl","SITEURL","yes");
INSERT INTO coco_options VALUES("2","blogname","Cobianzo Communication","yes");
INSERT INTO coco_options VALUES("3","blogdescription","Designers, developers, artists, partners","yes");
INSERT INTO coco_options VALUES("4","users_can_register","0","yes");
INSERT INTO coco_options VALUES("5","admin_email","cobianzo@cobianzo.com","yes");
INSERT INTO coco_options VALUES("6","start_of_week","1","yes");
INSERT INTO coco_options VALUES("7","use_balanceTags","0","yes");
INSERT INTO coco_options VALUES("8","use_smilies","1","yes");
INSERT INTO coco_options VALUES("9","require_name_email","1","yes");
INSERT INTO coco_options VALUES("10","comments_notify","1","yes");
INSERT INTO coco_options VALUES("11","posts_per_rss","10","yes");
INSERT INTO coco_options VALUES("12","rss_use_excerpt","0","yes");
INSERT INTO coco_options VALUES("13","mailserver_url","mail.example.com","yes");
INSERT INTO coco_options VALUES("14","mailserver_login","login@example.com","yes");
INSERT INTO coco_options VALUES("15","mailserver_pass","password","yes");
INSERT INTO coco_options VALUES("16","mailserver_port","110","yes");
INSERT INTO coco_options VALUES("17","default_category","1","yes");
INSERT INTO coco_options VALUES("18","default_comment_status","open","yes");
INSERT INTO coco_options VALUES("19","default_ping_status","open","yes");
INSERT INTO coco_options VALUES("20","default_pingback_flag","1","yes");
INSERT INTO coco_options VALUES("21","posts_per_page","10","yes");
INSERT INTO coco_options VALUES("22","date_format","F j, Y","yes");
INSERT INTO coco_options VALUES("23","time_format","g:i a","yes");
INSERT INTO coco_options VALUES("24","links_updated_date_format","F j, Y g:i a","yes");
INSERT INTO coco_options VALUES("25","comment_moderation","0","yes");
INSERT INTO coco_options VALUES("26","moderation_notify","1","yes");
INSERT INTO coco_options VALUES("27","permalink_structure","/%postname%/","yes");
INSERT INTO coco_options VALUES("28","gzipcompression","0","yes");
INSERT INTO coco_options VALUES("29","hack_file","0","yes");
INSERT INTO coco_options VALUES("30","blog_charset","UTF-8","yes");
INSERT INTO coco_options VALUES("31","moderation_keys","","no");
INSERT INTO coco_options VALUES("32","active_plugins","a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:33:\"duplicate-post/duplicate-post.php\";i:4;s:47:\"really-simple-captcha/really-simple-captcha.php\";i:5;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:6;s:47:\"wp-better-attachments/wp-better-attachments.php\";}","yes");
INSERT INTO coco_options VALUES("33","home","SITEURL","yes");
INSERT INTO coco_options VALUES("34","category_base","","yes");
INSERT INTO coco_options VALUES("35","ping_sites","http://rpc.pingomatic.com/","yes");
INSERT INTO coco_options VALUES("36","advanced_edit","0","yes");
INSERT INTO coco_options VALUES("37","comment_max_links","2","yes");
INSERT INTO coco_options VALUES("38","gmt_offset","0","yes");
INSERT INTO coco_options VALUES("39","default_email_category","1","yes");
INSERT INTO coco_options VALUES("40","recently_edited","","no");
INSERT INTO coco_options VALUES("41","template","cobianzo2","yes");
INSERT INTO coco_options VALUES("42","stylesheet","cobianzo2","yes");
INSERT INTO coco_options VALUES("43","comment_whitelist","1","yes");
INSERT INTO coco_options VALUES("44","blacklist_keys","","no");
INSERT INTO coco_options VALUES("45","comment_registration","0","yes");
INSERT INTO coco_options VALUES("46","html_type","text/html","yes");
INSERT INTO coco_options VALUES("47","use_trackback","0","yes");
INSERT INTO coco_options VALUES("48","default_role","subscriber","yes");
INSERT INTO coco_options VALUES("49","db_version","30133","yes");
INSERT INTO coco_options VALUES("50","uploads_use_yearmonth_folders","","yes");
INSERT INTO coco_options VALUES("51","upload_path","","yes");
INSERT INTO coco_options VALUES("52","blog_public","1","yes");
INSERT INTO coco_options VALUES("53","default_link_category","2","yes");
INSERT INTO coco_options VALUES("54","show_on_front","page","yes");
INSERT INTO coco_options VALUES("55","tag_base","","yes");
INSERT INTO coco_options VALUES("56","show_avatars","1","yes");
INSERT INTO coco_options VALUES("57","avatar_rating","G","yes");
INSERT INTO coco_options VALUES("58","upload_url_path","","yes");
INSERT INTO coco_options VALUES("59","thumbnail_size_w","290","yes");
INSERT INTO coco_options VALUES("60","thumbnail_size_h","200","yes");
INSERT INTO coco_options VALUES("61","thumbnail_crop","1","yes");
INSERT INTO coco_options VALUES("62","medium_size_w","400","yes");
INSERT INTO coco_options VALUES("63","medium_size_h","400","yes");
INSERT INTO coco_options VALUES("64","avatar_default","mystery","yes");
INSERT INTO coco_options VALUES("65","large_size_w","1170","yes");
INSERT INTO coco_options VALUES("66","large_size_h","2000","yes");
INSERT INTO coco_options VALUES("67","image_default_link_type","","yes");
INSERT INTO coco_options VALUES("68","image_default_size","","yes");
INSERT INTO coco_options VALUES("69","image_default_align","","yes");
INSERT INTO coco_options VALUES("70","close_comments_for_old_posts","0","yes");
INSERT INTO coco_options VALUES("71","close_comments_days_old","14","yes");
INSERT INTO coco_options VALUES("72","thread_comments","1","yes");
INSERT INTO coco_options VALUES("73","thread_comments_depth","5","yes");
INSERT INTO coco_options VALUES("74","page_comments","0","yes");
INSERT INTO coco_options VALUES("75","comments_per_page","50","yes");
INSERT INTO coco_options VALUES("76","default_comments_page","newest","yes");
INSERT INTO coco_options VALUES("77","comment_order","asc","yes");
INSERT INTO coco_options VALUES("78","sticky_posts","a:0:{}","yes");
INSERT INTO coco_options VALUES("79","widget_categories","a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO coco_options VALUES("80","widget_text","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO coco_options VALUES("81","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO coco_options VALUES("82","uninstall_plugins","a:0:{}","no");
INSERT INTO coco_options VALUES("83","timezone_string","","yes");
INSERT INTO coco_options VALUES("84","page_for_posts","0","yes");
INSERT INTO coco_options VALUES("85","page_on_front","102","yes");
INSERT INTO coco_options VALUES("86","default_post_format","0","yes");
INSERT INTO coco_options VALUES("87","link_manager_enabled","0","yes");
INSERT INTO coco_options VALUES("88","initial_db_version","27916","yes");
INSERT INTO coco_options VALUES("89","coco_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes");
INSERT INTO coco_options VALUES("90","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO coco_options VALUES("91","widget_recent-posts","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO coco_options VALUES("92","widget_recent-comments","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO coco_options VALUES("93","widget_archives","a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO coco_options VALUES("94","widget_meta","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO coco_options VALUES("95","sidebars_widgets","a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}","yes");
INSERT INTO coco_options VALUES("96","cron","a:5:{i:1419826738;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1419839760;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1419871968;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1419890846;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes");
INSERT INTO coco_options VALUES("535","_transient_timeout_plugin_slugs","1419873496","no");
INSERT INTO coco_options VALUES("536","_transient_plugin_slugs","a:14:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:45:\"branded-login-screen/branded-login-screen.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:33:\"duplicate-post/duplicate-post.php\";i:5;s:21:\"flamingo/flamingo.php\";i:6;s:41:\"better-wp-security/better-wp-security.php\";i:7;s:21:\"polylang/polylang.php\";i:8;s:47:\"really-simple-captcha/really-simple-captcha.php\";i:9;s:27:\"redirection/redirection.php\";i:10;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:11;s:33:\"w3-total-cache/w3-total-cache.php\";i:12;s:24:\"wordpress-seo/wp-seo.php\";i:13;s:47:\"wp-better-attachments/wp-better-attachments.php\";}","no");
INSERT INTO coco_options VALUES("126","theme_mods_twentyfourteen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1408985571;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes");
INSERT INTO coco_options VALUES("127","current_theme","cobianzo","yes");
INSERT INTO coco_options VALUES("128","theme_mods_cobianzo2","a:7:{i:0;b:0;s:16:\"background_color\";s:6:\"ffffff\";s:16:\"background_image\";s:0:\"\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_attachment\";s:5:\"fixed\";s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:7;}}","yes");
INSERT INTO coco_options VALUES("129","theme_switched","","yes");
INSERT INTO coco_options VALUES("137","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:7;}}","yes");
INSERT INTO coco_options VALUES("132","widget_pages","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO coco_options VALUES("133","widget_calendar","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO coco_options VALUES("134","widget_tag_cloud","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO coco_options VALUES("135","widget_nav_menu","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO coco_options VALUES("152","recently_activated","a:2:{s:21:\"flamingo/flamingo.php\";i:1419042317;s:13:\"bogo/bogo.php\";i:1419042286;}","yes");
INSERT INTO coco_options VALUES("153","acf_version","4.3.9","yes");
INSERT INTO coco_options VALUES("157","work_category_children","a:0:{}","yes");
INSERT INTO coco_options VALUES("179","duplicate_post_copyexcerpt","1","yes");
INSERT INTO coco_options VALUES("180","duplicate_post_copyattachments","0","yes");
INSERT INTO coco_options VALUES("181","duplicate_post_copychildren","0","yes");
INSERT INTO coco_options VALUES("182","duplicate_post_copystatus","0","yes");
INSERT INTO coco_options VALUES("183","duplicate_post_taxonomies_blacklist","a:0:{}","yes");
INSERT INTO coco_options VALUES("184","duplicate_post_show_row","1","yes");
INSERT INTO coco_options VALUES("185","duplicate_post_show_adminbar","1","yes");
INSERT INTO coco_options VALUES("186","duplicate_post_show_submitbox","1","yes");
INSERT INTO coco_options VALUES("187","duplicate_post_version","2.4.1","yes");
INSERT INTO coco_options VALUES("203","wpcf7","a:1:{s:7:\"version\";s:5:\"3.9.1\";}","yes");
INSERT INTO coco_options VALUES("204","bogo","a:1:{s:18:\"lang_rewrite_regex\";s:4:\"(en)\";}","yes");
INSERT INTO coco_options VALUES("205","wpba_settings","a:18:{s:23:\"wpba-disable-post-types\";a:6:{s:4:\"post\";s:4:\"post\";s:3:\"acf\";s:3:\"acf\";s:18:\"wpcf7_contact_form\";s:18:\"wpcf7_contact_form\";s:16:\"flamingo_contact\";s:16:\"flamingo_contact\";s:16:\"flamingo_inbound\";s:16:\"flamingo_inbound\";s:17:\"flamingo_outbound\";s:17:\"flamingo_outbound\";}s:23:\"wpba-crop-editor-mesage\";s:238:\"Below are all the available attachment sizes that will be cropped from the original image the other sizes will be scaled to fit.  Drag the dashed box to select the portion of the image that you would like to be used for the cropped image.\";s:24:\"wpba-post-meta-box-title\";s:21:\"WP Better Attachments\";s:23:\"wpba-post-enabled-pages\";s:0:\"\";s:24:\"wpba-page-meta-box-title\";s:24:\"Images for the slideshow\";s:23:\"wpba-page-enabled-pages\";s:0:\"\";s:24:\"wpba-work-meta-box-title\";s:60:\"Other images of the work (will appear below the description)\";s:23:\"wpba-work-enabled-pages\";s:0:\"\";s:23:\"wpba-acf-meta-box-title\";s:21:\"WP Better Attachments\";s:22:\"wpba-acf-enabled-pages\";s:0:\"\";s:38:\"wpba-wpcf7_contact_form-meta-box-title\";s:21:\"WP Better Attachments\";s:37:\"wpba-wpcf7_contact_form-enabled-pages\";s:0:\"\";s:36:\"wpba-flamingo_contact-meta-box-title\";s:21:\"WP Better Attachments\";s:35:\"wpba-flamingo_contact-enabled-pages\";s:0:\"\";s:36:\"wpba-flamingo_inbound-meta-box-title\";s:21:\"WP Better Attachments\";s:35:\"wpba-flamingo_inbound-enabled-pages\";s:0:\"\";s:37:\"wpba-flamingo_outbound-meta-box-title\";s:21:\"WP Better Attachments\";s:36:\"wpba-flamingo_outbound-enabled-pages\";s:0:\"\";}","yes");
INSERT INTO coco_options VALUES("506","WPLANG","","yes");
INSERT INTO coco_options VALUES("507","db_upgraded","","yes");
INSERT INTO coco_options VALUES("324","flamingo_inbound_channel_children","a:1:{i:11;a:1:{i:0;i:12;}}","yes");
INSERT INTO coco_options VALUES("340","_transient_random_seed","f383d6caec8d4a20898e78c60b619593","yes");
INSERT INTO coco_options VALUES("410","auth_key","3&?_80?i3i~pF7i:Z&8lk_.c965iZvzv<m7@bt7i,L?G[rHmnT[8^Q{#+rom66!p","yes");
INSERT INTO coco_options VALUES("411","auth_salt","3)7?C#qK:^]LJg)xT}yR7>i4]l8Qpam,DaLgNFmd)IapPeU*/_EEoYJH{mI2FJ7L","yes");
INSERT INTO coco_options VALUES("412","logged_in_key","$$kW`cMjDd5Xyku.mH<1`o?Gbq]AXtS(~K;Q3VG.kC2GT!q0&,z<60LJJ7}f#~-m","yes");
INSERT INTO coco_options VALUES("555","_site_transient_timeout_theme_roots","1419809892","yes");
INSERT INTO coco_options VALUES("556","_site_transient_theme_roots","a:2:{s:9:\"cobianzo2\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";}","yes");
INSERT INTO coco_options VALUES("511","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-4.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.1\";s:7:\"version\";s:3:\"4.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1419805742;s:15:\"version_checked\";s:3:\"4.1\";s:12:\"translations\";a:0:{}}","yes");
INSERT INTO coco_options VALUES("512","can_compress_scripts","1","yes");
INSERT INTO coco_options VALUES("398","auto_core_update_notified","a:4:{s:4:\"type\";s:6:\"manual\";s:5:\"email\";s:21:\"cobianzo@cobianzo.com\";s:7:\"version\";s:5:\"4.0.1\";s:9:\"timestamp\";i:1418700493;}","yes");
INSERT INTO coco_options VALUES("413","logged_in_salt","gU3k$ :gw<bM6:y(=.w?M^QrUOwr)XJZ- L%yA<=w:6,ZIdJPrYtfV=)$$FdlU|J","yes");
INSERT INTO coco_options VALUES("414","nonce_key","8m]WBy96uHf+H4N[}t/VEOON`k*.@IiShtACHmU5T=u&UA(_A@Fo$|zVGS]VrGxs","yes");
INSERT INTO coco_options VALUES("415","nonce_salt","sq[Wn_4Kst,hk(3Z.X~yo7^((#Nk0@T-]QUE6ol!^LHgd}^]{of<__K(80a#&8pa","yes");
INSERT INTO coco_options VALUES("537","_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51","1419830296","no");
INSERT INTO coco_options VALUES("538","_transient_dash_4077549d03da2e451c8b5f002294ff51","<div class=\"rss-widget\"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class=\"rss-widget\"><ul></ul></div>","no");
INSERT INTO coco_options VALUES("553","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1419805743;s:7:\"checked\";a:2:{s:9:\"cobianzo2\";s:0:\"\";s:14:\"twentyfourteen\";s:3:\"1.1\";}s:8:\"response\";a:1:{s:14:\"twentyfourteen\";a:4:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfourteen\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentyfourteen.1.3.zip\";}}s:12:\"translations\";a:0:{}}","yes");
INSERT INTO coco_options VALUES("508","rewrite_rules","a:87:{s:7:\"work/?$\";s:24:\"index.php?post_type=work\";s:37:\"work/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=work&feed=$matches[1]\";s:32:\"work/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=work&feed=$matches[1]\";s:24:\"work/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=work&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:54:\"work_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?work_category=$matches[1]&feed=$matches[2]\";s:49:\"work_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?work_category=$matches[1]&feed=$matches[2]\";s:42:\"work_category/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?work_category=$matches[1]&paged=$matches[2]\";s:24:\"work_category/([^/]+)/?$\";s:35:\"index.php?work_category=$matches[1]\";s:30:\"work/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"work/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"work/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"work/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"work/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:23:\"work/(.+?)/trackback/?$\";s:31:\"index.php?work=$matches[1]&tb=1\";s:43:\"work/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?work=$matches[1]&feed=$matches[2]\";s:38:\"work/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?work=$matches[1]&feed=$matches[2]\";s:31:\"work/(.+?)/page/?([0-9]{1,})/?$\";s:44:\"index.php?work=$matches[1]&paged=$matches[2]\";s:38:\"work/(.+?)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?work=$matches[1]&cpage=$matches[2]\";s:23:\"work/(.+?)(/[0-9]+)?/?$\";s:43:\"index.php?work=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=102&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}","yes");
INSERT INTO coco_options VALUES("549","_transient_is_multi_author","0","yes");
INSERT INTO coco_options VALUES("554","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1419806508;s:7:\"checked\";a:14:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"4.3.9\";s:19:\"akismet/akismet.php\";s:5:\"3.0.1\";s:45:\"branded-login-screen/branded-login-screen.php\";s:3:\"3.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"3.9.1\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"2.4.1\";s:21:\"flamingo/flamingo.php\";s:5:\"1.1.1\";s:41:\"better-wp-security/better-wp-security.php\";s:5:\"4.5.2\";s:21:\"polylang/polylang.php\";s:5:\"1.6.2\";s:47:\"really-simple-captcha/really-simple-captcha.php\";s:3:\"1.8\";s:27:\"redirection/redirection.php\";s:6:\"2.3.11\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"2.2.4\";s:33:\"w3-total-cache/w3-total-cache.php\";s:5:\"0.9.4\";s:24:\"wordpress-seo/wp-seo.php\";s:5:\"1.6.1\";s:47:\"wp-better-attachments/wp-better-attachments.php\";s:5:\"1.3.7\";}s:8:\"response\";a:8:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.0.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.0.4.zip\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"790\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.4.0.3.zip\";}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:4:\"1295\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:3:\"2.6\";s:14:\"upgrade_notice\";s:90:\"PHP 5.4 (Strict Standards) compatible + Fixed possible XSS and SQL injections + other bugs\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicate-post.2.6.zip\";}s:21:\"flamingo/flamingo.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"30380\";s:4:\"slug\";s:8:\"flamingo\";s:6:\"plugin\";s:21:\"flamingo/flamingo.php\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/flamingo/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/flamingo.1.2.zip\";}s:41:\"better-wp-security/better-wp-security.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:5:\"18308\";s:4:\"slug\";s:18:\"better-wp-security\";s:6:\"plugin\";s:41:\"better-wp-security/better-wp-security.php\";s:11:\"new_version\";s:5:\"4.5.6\";s:14:\"upgrade_notice\";s:71:\"Version 4.5.6 contains a minor bugfix and is recommended for all users.\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/better-wp-security/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/better-wp-security.4.5.6.zip\";}s:47:\"really-simple-captcha/really-simple-captcha.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"7028\";s:4:\"slug\";s:21:\"really-simple-captcha\";s:6:\"plugin\";s:47:\"really-simple-captcha/really-simple-captcha.php\";s:11:\"new_version\";s:7:\"1.8.0.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/really-simple-captcha/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/really-simple-captcha.1.8.0.1.zip\";}s:33:\"w3-total-cache/w3-total-cache.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:4:\"9376\";s:4:\"slug\";s:14:\"w3-total-cache\";s:6:\"plugin\";s:33:\"w3-total-cache/w3-total-cache.php\";s:11:\"new_version\";s:7:\"0.9.4.1\";s:14:\"upgrade_notice\";s:140:\"Thanks for using W3 Total Cache! This release includes important security updates designed to contribute to a secure WordPress installation.\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/w3-total-cache/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/w3-total-cache.0.9.4.1.zip\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"5899\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"1.7.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.1.7.1.zip\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"21367\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"4.3.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.zip\";}s:45:\"branded-login-screen/branded-login-screen.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:5:\"12558\";s:4:\"slug\";s:20:\"branded-login-screen\";s:6:\"plugin\";s:45:\"branded-login-screen/branded-login-screen.php\";s:11:\"new_version\";s:3:\"3.2\";s:14:\"upgrade_notice\";s:96:\"updated .css for newer versions of WordPress\nupdated screenshots for WordPress plugin repository\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/branded-login-screen/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/branded-login-screen.3.2.zip\";}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"25780\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.1.6.2.zip\";}s:27:\"redirection/redirection.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"935\";s:4:\"slug\";s:11:\"redirection\";s:6:\"plugin\";s:27:\"redirection/redirection.php\";s:11:\"new_version\";s:6:\"2.3.11\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/redirection/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/redirection.2.3.11.zip\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:4:\"4437\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"2.2.4\";s:14:\"upgrade_notice\";s:124:\"Better AJAX response error handling in the JavaScript. This should fix a long-standing bug in this plugin. Props Hew Sutton.\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip\";}s:47:\"wp-better-attachments/wp-better-attachments.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"39919\";s:4:\"slug\";s:21:\"wp-better-attachments\";s:6:\"plugin\";s:47:\"wp-better-attachments/wp-better-attachments.php\";s:11:\"new_version\";s:5:\"1.3.7\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/wp-better-attachments/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/wp-better-attachments.1.3.7.zip\";}}}","yes");



DROP TABLE coco_postmeta;

CREATE TABLE `coco_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=675 DEFAULT CHARSET=utf8;

INSERT INTO coco_postmeta VALUES("499","116","_wp_attached_file","altair3devices.jpg");
INSERT INTO coco_postmeta VALUES("4","6","_edit_last","1");
INSERT INTO coco_postmeta VALUES("5","6","_edit_lock","1419788612:1");
INSERT INTO coco_postmeta VALUES("6","8","_edit_last","1");
INSERT INTO coco_postmeta VALUES("7","8","_edit_lock","1419789183:1");
INSERT INTO coco_postmeta VALUES("8","10","_edit_last","1");
INSERT INTO coco_postmeta VALUES("9","10","_edit_lock","1409352911:1");
INSERT INTO coco_postmeta VALUES("668","142","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("19","13","_menu_item_type","post_type");
INSERT INTO coco_postmeta VALUES("20","13","_menu_item_menu_item_parent","0");
INSERT INTO coco_postmeta VALUES("21","13","_menu_item_object_id","6");
INSERT INTO coco_postmeta VALUES("22","13","_menu_item_object","page");
INSERT INTO coco_postmeta VALUES("23","13","_menu_item_target","");
INSERT INTO coco_postmeta VALUES("24","13","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO coco_postmeta VALUES("25","13","_menu_item_xfn","");
INSERT INTO coco_postmeta VALUES("26","13","_menu_item_url","");
INSERT INTO coco_postmeta VALUES("66","1","_edit_lock","1409082793:1");
INSERT INTO coco_postmeta VALUES("28","14","_menu_item_type","post_type");
INSERT INTO coco_postmeta VALUES("29","14","_menu_item_menu_item_parent","0");
INSERT INTO coco_postmeta VALUES("30","14","_menu_item_object_id","10");
INSERT INTO coco_postmeta VALUES("31","14","_menu_item_object","page");
INSERT INTO coco_postmeta VALUES("32","14","_menu_item_target","");
INSERT INTO coco_postmeta VALUES("33","14","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO coco_postmeta VALUES("34","14","_menu_item_xfn","");
INSERT INTO coco_postmeta VALUES("35","14","_menu_item_url","");
INSERT INTO coco_postmeta VALUES("64","18","_edit_last","1");
INSERT INTO coco_postmeta VALUES("498","108","_wp_trash_meta_time","1418872127");
INSERT INTO coco_postmeta VALUES("497","108","_wp_trash_meta_status","publish");
INSERT INTO coco_postmeta VALUES("501","117","_wp_attached_file","altair-hero-monitor-apaisado.jpg");
INSERT INTO coco_postmeta VALUES("46","16","_menu_item_type","post_type");
INSERT INTO coco_postmeta VALUES("47","16","_menu_item_menu_item_parent","0");
INSERT INTO coco_postmeta VALUES("48","16","_menu_item_object_id","8");
INSERT INTO coco_postmeta VALUES("49","16","_menu_item_object","page");
INSERT INTO coco_postmeta VALUES("50","16","_menu_item_target","");
INSERT INTO coco_postmeta VALUES("51","16","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO coco_postmeta VALUES("52","16","_menu_item_xfn","");
INSERT INTO coco_postmeta VALUES("53","16","_menu_item_url","");
INSERT INTO coco_postmeta VALUES("65","18","_edit_lock","1409083451:1");
INSERT INTO coco_postmeta VALUES("67","19","_wp_attached_file","2014/08/abusir.jpg");
INSERT INTO coco_postmeta VALUES("68","19","_wp_attachment_metadata","a:5:{s:5:\"width\";i:298;s:6:\"height\";i:181;s:4:\"file\";s:18:\"2014/08/abusir.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"abusir-290x181.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("69","18","_thumbnail_id","19");
INSERT INTO coco_postmeta VALUES("70","20","_edit_last","1");
INSERT INTO coco_postmeta VALUES("71","20","_edit_lock","1409083589:1");
INSERT INTO coco_postmeta VALUES("72","20","_thumbnail_id","19");
INSERT INTO coco_postmeta VALUES("73","20","_dp_original","18");
INSERT INTO coco_postmeta VALUES("74","21","_edit_last","1");
INSERT INTO coco_postmeta VALUES("75","21","_edit_lock","1409083744:1");
INSERT INTO coco_postmeta VALUES("76","21","_thumbnail_id","19");
INSERT INTO coco_postmeta VALUES("77","21","_dp_original","18");
INSERT INTO coco_postmeta VALUES("78","22","_edit_last","1");
INSERT INTO coco_postmeta VALUES("79","22","_edit_lock","1409083752:1");
INSERT INTO coco_postmeta VALUES("80","22","_thumbnail_id","19");
INSERT INTO coco_postmeta VALUES("81","22","_dp_original","18");
INSERT INTO coco_postmeta VALUES("82","23","_edit_last","1");
INSERT INTO coco_postmeta VALUES("83","23","_edit_lock","1409083759:1");
INSERT INTO coco_postmeta VALUES("84","23","_thumbnail_id","19");
INSERT INTO coco_postmeta VALUES("85","23","_dp_original","18");
INSERT INTO coco_postmeta VALUES("86","24","_edit_last","1");
INSERT INTO coco_postmeta VALUES("87","24","_wp_page_template","default");
INSERT INTO coco_postmeta VALUES("214","49","_menu_item_type","custom");
INSERT INTO coco_postmeta VALUES("96","24","_edit_lock","1419788773:1");
INSERT INTO coco_postmeta VALUES("500","116","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:476;s:4:\"file\";s:18:\"altair3devices.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"altair3devices-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"altair3devices-400x148.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"altair3devices-1170x435.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:435;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("99","6","_wp_page_template","page-3cols.php");
INSERT INTO coco_postmeta VALUES("471","50","_thumbnail_id","110");
INSERT INTO coco_postmeta VALUES("470","110","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:300;s:4:\"file\";s:19:\"netgig-hero-img.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"netgig-hero-img-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"netgig-hero-img-400x102.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("102","8","_wp_page_template","default");
INSERT INTO coco_postmeta VALUES("103","33","_form","<div class=\"row-flow form-group\"><p class=\'col-xs-12\'>Your Name (required)<br />\n    [text* your-name class:form-control] </p>\n\n<p class=\'col-xs-12\'>Your Email (required)<br />\n    [email* your-email  class:form-control] </p>\n\n<p class=\'col-xs-12\'>Subject<br />\n    [text your-subject  class:form-control] </p>\n\n<p class=\'col-xs-12\'>Your Message<br />\n    [textarea your-message  class:form-control] </p>\n\n<p class=\'col-xs-12\'>[submit \"Send\" class:btn class:btn-default]</p>\n</div>");
INSERT INTO coco_postmeta VALUES("104","33","_mail","a:8:{s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:190:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Cobianzo Communication (SITEURL)\";s:9:\"recipient\";s:21:\"cobianzo@cobianzo.com\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}");
INSERT INTO coco_postmeta VALUES("105","33","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:132:\"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Cobianzo Communication (SITEURL)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}");
INSERT INTO coco_postmeta VALUES("106","33","_messages","a:21:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}");
INSERT INTO coco_postmeta VALUES("107","33","_additional_settings","");
INSERT INTO coco_postmeta VALUES("108","34","_email","cobianzo@cobianzo.com");
INSERT INTO coco_postmeta VALUES("109","34","_name","cobianzo");
INSERT INTO coco_postmeta VALUES("110","34","_props","a:2:{s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";}");
INSERT INTO coco_postmeta VALUES("111","34","_last_contacted","2014-08-27 10:22:38");
INSERT INTO coco_postmeta VALUES("354","90","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("353","90","featured_image","");
INSERT INTO coco_postmeta VALUES("352","90","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("351","90","subtitle_on_top","");
INSERT INTO coco_postmeta VALUES("350","90","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("349","90","title_on_top","");
INSERT INTO coco_postmeta VALUES("335","13","_locale","en_US");
INSERT INTO coco_postmeta VALUES("336","16","_locale","en_US");
INSERT INTO coco_postmeta VALUES("337","14","_locale","en_US");
INSERT INTO coco_postmeta VALUES("348","89","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("347","89","featured_image","");
INSERT INTO coco_postmeta VALUES("346","89","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("345","89","subtitle_on_top","");
INSERT INTO coco_postmeta VALUES("344","89","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("343","89","title_on_top","");
INSERT INTO coco_postmeta VALUES("667","142","featured_image","");
INSERT INTO coco_postmeta VALUES("666","142","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("665","142","subtitle_on_top","Our disciplines");
INSERT INTO coco_postmeta VALUES("664","142","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("663","142","title_on_top","WE ARE MASTERS OF COMPLETE BRAND SOLUTIONS");
INSERT INTO coco_postmeta VALUES("158","40","_menu_item_type","post_type");
INSERT INTO coco_postmeta VALUES("159","40","_menu_item_menu_item_parent","0");
INSERT INTO coco_postmeta VALUES("160","40","_menu_item_object_id","10");
INSERT INTO coco_postmeta VALUES("161","40","_menu_item_object","page");
INSERT INTO coco_postmeta VALUES("162","40","_menu_item_target","");
INSERT INTO coco_postmeta VALUES("163","40","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO coco_postmeta VALUES("164","40","_menu_item_xfn","");
INSERT INTO coco_postmeta VALUES("165","40","_menu_item_url","");
INSERT INTO coco_postmeta VALUES("342","40","_locale","en_US");
INSERT INTO coco_postmeta VALUES("168","41","_menu_item_type","post_type");
INSERT INTO coco_postmeta VALUES("169","41","_menu_item_menu_item_parent","0");
INSERT INTO coco_postmeta VALUES("170","41","_menu_item_object_id","8");
INSERT INTO coco_postmeta VALUES("171","41","_menu_item_object","page");
INSERT INTO coco_postmeta VALUES("172","41","_menu_item_target","");
INSERT INTO coco_postmeta VALUES("173","41","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO coco_postmeta VALUES("174","41","_menu_item_xfn","");
INSERT INTO coco_postmeta VALUES("175","41","_menu_item_url","");
INSERT INTO coco_postmeta VALUES("339","41","_locale","en_US");
INSERT INTO coco_postmeta VALUES("178","42","_menu_item_type","post_type");
INSERT INTO coco_postmeta VALUES("179","42","_menu_item_menu_item_parent","0");
INSERT INTO coco_postmeta VALUES("180","42","_menu_item_object_id","6");
INSERT INTO coco_postmeta VALUES("181","42","_menu_item_object","page");
INSERT INTO coco_postmeta VALUES("182","42","_menu_item_target","");
INSERT INTO coco_postmeta VALUES("183","42","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO coco_postmeta VALUES("184","42","_menu_item_xfn","");
INSERT INTO coco_postmeta VALUES("185","42","_menu_item_url","");
INSERT INTO coco_postmeta VALUES("340","42","_locale","en_US");
INSERT INTO coco_postmeta VALUES("215","49","_menu_item_menu_item_parent","0");
INSERT INTO coco_postmeta VALUES("216","49","_menu_item_object_id","49");
INSERT INTO coco_postmeta VALUES("217","49","_menu_item_object","custom");
INSERT INTO coco_postmeta VALUES("218","49","_menu_item_target","");
INSERT INTO coco_postmeta VALUES("219","49","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO coco_postmeta VALUES("220","49","_menu_item_xfn","");
INSERT INTO coco_postmeta VALUES("221","49","_menu_item_url","SITEURL/");
INSERT INTO coco_postmeta VALUES("334","49","_locale","en_US");
INSERT INTO coco_postmeta VALUES("234","50","_edit_last","1");
INSERT INTO coco_postmeta VALUES("235","50","_edit_lock","1409421908:1");
INSERT INTO coco_postmeta VALUES("236","51","_wp_attached_file","netgig-cobianzoco.jpg");
INSERT INTO coco_postmeta VALUES("237","51","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:914;s:4:\"file\";s:21:\"netgig-cobianzoco.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"netgig-cobianzoco-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"netgig-cobianzoco-400x285.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"netgig-cobianzoco-1170x835.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:835;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("469","110","_wp_attached_file","netgig-hero-img.jpg");
INSERT INTO coco_postmeta VALUES("239","53","_wp_attached_file","based-in-london.gif");
INSERT INTO coco_postmeta VALUES("240","53","_wp_attachment_metadata","a:5:{s:5:\"width\";i:399;s:6:\"height\";i:260;s:4:\"file\";s:19:\"based-in-london.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"based-in-london-290x200.gif\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("241","54","_wp_attached_file","univ-leon.gif");
INSERT INTO coco_postmeta VALUES("242","54","_wp_attachment_metadata","a:5:{s:5:\"width\";i:399;s:6:\"height\";i:148;s:4:\"file\";s:13:\"univ-leon.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"univ-leon-290x148.gif\";s:5:\"width\";i:290;s:6:\"height\";i:148;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("243","55","_wp_attached_file","altair4-m.gif");
INSERT INTO coco_postmeta VALUES("244","55","_wp_attachment_metadata","a:5:{s:5:\"width\";i:399;s:6:\"height\";i:140;s:4:\"file\";s:13:\"altair4-m.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"altair4-m-290x140.gif\";s:5:\"width\";i:290;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("245","6","_locale","en_US");
INSERT INTO coco_postmeta VALUES("246","6","_original_post","6");
INSERT INTO coco_postmeta VALUES("247","61","_wp_attached_file","based-in-london1.gif");
INSERT INTO coco_postmeta VALUES("248","61","_wp_attachment_metadata","a:5:{s:5:\"width\";i:369;s:6:\"height\";i:278;s:4:\"file\";s:20:\"based-in-london1.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"based-in-london1-290x200.gif\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("249","62","_wp_attached_file","univ-leon1.gif");
INSERT INTO coco_postmeta VALUES("250","62","_wp_attachment_metadata","a:5:{s:5:\"width\";i:369;s:6:\"height\";i:152;s:4:\"file\";s:14:\"univ-leon1.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"univ-leon1-290x152.gif\";s:5:\"width\";i:290;s:6:\"height\";i:152;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("251","63","_wp_attached_file","altair4-m1.gif");
INSERT INTO coco_postmeta VALUES("252","63","_wp_attachment_metadata","a:5:{s:5:\"width\";i:369;s:6:\"height\";i:123;s:4:\"file\";s:14:\"altair4-m1.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"altair4-m1-290x123.gif\";s:5:\"width\";i:290;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("253","65","_wp_attached_file","digital.gif");
INSERT INTO coco_postmeta VALUES("254","65","_wp_attachment_metadata","a:5:{s:5:\"width\";i:138;s:6:\"height\";i:138;s:4:\"file\";s:11:\"digital.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("255","66","_wp_attached_file","print.gif");
INSERT INTO coco_postmeta VALUES("256","66","_wp_attachment_metadata","a:5:{s:5:\"width\";i:138;s:6:\"height\";i:138;s:4:\"file\";s:9:\"print.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("257","67","_wp_attached_file","video.gif");
INSERT INTO coco_postmeta VALUES("258","67","_wp_attachment_metadata","a:5:{s:5:\"width\";i:138;s:6:\"height\";i:138;s:4:\"file\";s:9:\"video.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("259","8","_locale","en_US");
INSERT INTO coco_postmeta VALUES("260","8","_original_post","8");
INSERT INTO coco_postmeta VALUES("494","115","_wp_attached_file","altair-hero-monitor.jpg");
INSERT INTO coco_postmeta VALUES("495","115","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:914;s:4:\"file\";s:23:\"altair-hero-monitor.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"altair-hero-monitor-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"altair-hero-monitor-400x285.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"altair-hero-monitor-1170x835.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:835;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("274","8","featured_image","");
INSERT INTO coco_postmeta VALUES("275","8","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("488","112","no_index","0");
INSERT INTO coco_postmeta VALUES("489","112","_no_index","field_5401e9c0d7386");
INSERT INTO coco_postmeta VALUES("490","112","hide_date","0");
INSERT INTO coco_postmeta VALUES("491","112","_hide_date","field_5401e9c0d7ccc");
INSERT INTO coco_postmeta VALUES("492","114","_wp_attached_file","altair-wen-in-2010.jpg");
INSERT INTO coco_postmeta VALUES("493","114","_wp_attachment_metadata","a:5:{s:5:\"width\";i:856;s:6:\"height\";i:309;s:4:\"file\";s:22:\"altair-wen-in-2010.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"altair-wen-in-2010-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"altair-wen-in-2010-400x144.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("478","112","_edit_last","1");
INSERT INTO coco_postmeta VALUES("479","112","_edit_lock","1418945828:1");
INSERT INTO coco_postmeta VALUES("480","112","subtitle","Developing Altair4.com site during more than 10 years");
INSERT INTO coco_postmeta VALUES("481","112","_subtitle","field_5401b78ba6dc8");
INSERT INTO coco_postmeta VALUES("482","112","client","Altair 4 Multimedia Srl");
INSERT INTO coco_postmeta VALUES("483","112","_client","field_54020e077c978");
INSERT INTO coco_postmeta VALUES("484","112","website","http://www.altair4.com");
INSERT INTO coco_postmeta VALUES("485","112","_website","field_5401e5597171c");
INSERT INTO coco_postmeta VALUES("486","112","text_sidebar","We developed Altair4.com website 3 times already, adapting the technology and design to the new ages. ");
INSERT INTO coco_postmeta VALUES("487","112","_text_sidebar","field_5401e8de4a0d6");
INSERT INTO coco_postmeta VALUES("674","143","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("307","8","title_on_top","WE ARE MASTERS OF COMPLETE BRAND SOLUTIONS");
INSERT INTO coco_postmeta VALUES("308","8","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("309","8","subtitle_on_top","Our disciplines");
INSERT INTO coco_postmeta VALUES("310","8","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("673","143","featured_image","");
INSERT INTO coco_postmeta VALUES("672","143","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("671","143","subtitle_on_top","Our disciplines");
INSERT INTO coco_postmeta VALUES("670","143","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("669","143","title_on_top","WE ARE MASTERS OF COMPLETE BRAND SOLUTIONS");
INSERT INTO coco_postmeta VALUES("319","10","_wp_page_template","page-2cols.php");
INSERT INTO coco_postmeta VALUES("320","87","title_on_top","");
INSERT INTO coco_postmeta VALUES("321","87","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("322","87","subtitle_on_top","");
INSERT INTO coco_postmeta VALUES("323","87","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("324","87","featured_image","");
INSERT INTO coco_postmeta VALUES("325","87","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("326","10","title_on_top","");
INSERT INTO coco_postmeta VALUES("327","10","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("328","10","subtitle_on_top","");
INSERT INTO coco_postmeta VALUES("329","10","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("330","10","featured_image","");
INSERT INTO coco_postmeta VALUES("331","10","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("332","10","_locale","en_US");
INSERT INTO coco_postmeta VALUES("333","10","_original_post","10");
INSERT INTO coco_postmeta VALUES("355","91","title_on_top","");
INSERT INTO coco_postmeta VALUES("356","91","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("357","91","subtitle_on_top","");
INSERT INTO coco_postmeta VALUES("358","91","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("359","91","featured_image","");
INSERT INTO coco_postmeta VALUES("360","91","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("361","92","title_on_top","");
INSERT INTO coco_postmeta VALUES("362","92","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("363","92","subtitle_on_top","");
INSERT INTO coco_postmeta VALUES("364","92","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("365","92","featured_image","");
INSERT INTO coco_postmeta VALUES("366","92","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("367","93","title_on_top","");
INSERT INTO coco_postmeta VALUES("368","93","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("369","93","subtitle_on_top","");
INSERT INTO coco_postmeta VALUES("370","93","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("371","93","featured_image","");
INSERT INTO coco_postmeta VALUES("372","93","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("373","94","_email","ads@fdsa.es");
INSERT INTO coco_postmeta VALUES("374","94","_name","Mi nombre");
INSERT INTO coco_postmeta VALUES("375","94","_props","a:0:{}");
INSERT INTO coco_postmeta VALUES("376","94","_last_contacted","2014-08-29 19:21:08");
INSERT INTO coco_postmeta VALUES("377","95","_subject","Testeando");
INSERT INTO coco_postmeta VALUES("378","95","_from","Mi nombre <ads@fdsa.es>");
INSERT INTO coco_postmeta VALUES("379","95","_from_name","Mi nombre");
INSERT INTO coco_postmeta VALUES("380","95","_from_email","ads@fdsa.es");
INSERT INTO coco_postmeta VALUES("381","95","_field_your-name","Mi nombre");
INSERT INTO coco_postmeta VALUES("382","95","_field_your-email","ads@fdsa.es");
INSERT INTO coco_postmeta VALUES("383","95","_field_your-subject","Testeando");
INSERT INTO coco_postmeta VALUES("384","95","_field_your-message","Let\'s see how this goes.");
INSERT INTO coco_postmeta VALUES("385","95","_fields","a:4:{s:9:\"your-name\";N;s:10:\"your-email\";N;s:12:\"your-subject\";N;s:12:\"your-message\";N;}");
INSERT INTO coco_postmeta VALUES("386","95","_meta","a:11:{s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36\";s:3:\"url\";s:42:\"SITEURL/?page_id=10\";s:4:\"date\";s:15:\"August 29, 2014\";s:4:\"time\";s:7:\"7:21 pm\";s:7:\"post_id\";s:2:\"10\";s:9:\"post_name\";s:10:\"contact-us\";s:10:\"post_title\";s:10:\"Contact us\";s:8:\"post_url\";s:42:\"SITEURL/?page_id=10\";s:11:\"post_author\";s:8:\"cobianzo\";s:17:\"post_author_email\";s:21:\"cobianzo@cobianzo.com\";}");
INSERT INTO coco_postmeta VALUES("387","95","_akismet","");
INSERT INTO coco_postmeta VALUES("388","96","_email","fds@fds.es");
INSERT INTO coco_postmeta VALUES("389","96","_name","rrqew");
INSERT INTO coco_postmeta VALUES("390","96","_props","a:0:{}");
INSERT INTO coco_postmeta VALUES("391","96","_last_contacted","2014-08-29 19:25:50");
INSERT INTO coco_postmeta VALUES("392","97","_subject","fda");
INSERT INTO coco_postmeta VALUES("393","97","_from","rrqew <fds@fds.es>");
INSERT INTO coco_postmeta VALUES("394","97","_from_name","rrqew");
INSERT INTO coco_postmeta VALUES("395","97","_from_email","fds@fds.es");
INSERT INTO coco_postmeta VALUES("396","97","_field_your-name","rrqew");
INSERT INTO coco_postmeta VALUES("397","97","_field_your-email","fds@fds.es");
INSERT INTO coco_postmeta VALUES("398","97","_field_your-subject","fda");
INSERT INTO coco_postmeta VALUES("399","97","_field_your-message","fad");
INSERT INTO coco_postmeta VALUES("400","97","_fields","a:4:{s:9:\"your-name\";N;s:10:\"your-email\";N;s:12:\"your-subject\";N;s:12:\"your-message\";N;}");
INSERT INTO coco_postmeta VALUES("401","97","_meta","a:11:{s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36\";s:3:\"url\";s:42:\"SITEURL/?page_id=10\";s:4:\"date\";s:15:\"August 29, 2014\";s:4:\"time\";s:7:\"7:25 pm\";s:7:\"post_id\";s:2:\"10\";s:9:\"post_name\";s:10:\"contact-us\";s:10:\"post_title\";s:10:\"Contact us\";s:8:\"post_url\";s:42:\"SITEURL/?page_id=10\";s:11:\"post_author\";s:8:\"cobianzo\";s:17:\"post_author_email\";s:21:\"cobianzo@cobianzo.com\";}");
INSERT INTO coco_postmeta VALUES("402","97","_akismet","");
INSERT INTO coco_postmeta VALUES("405","98","_edit_last","1");
INSERT INTO coco_postmeta VALUES("406","98","_edit_lock","1409347635:1");
INSERT INTO coco_postmeta VALUES("452","108","_edit_lock","1418871984:1");
INSERT INTO coco_postmeta VALUES("476","108","rule","a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"work\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}");
INSERT INTO coco_postmeta VALUES("449","108","position","normal");
INSERT INTO coco_postmeta VALUES("450","108","layout","default");
INSERT INTO coco_postmeta VALUES("451","108","hide_on_screen","a:6:{i:0;s:13:\"custom_fields\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:4:\"slug\";i:4;s:6:\"author\";i:5;s:15:\"send-trackbacks\";}");
INSERT INTO coco_postmeta VALUES("411","102","_original_post","102");
INSERT INTO coco_postmeta VALUES("412","102","_edit_last","1");
INSERT INTO coco_postmeta VALUES("413","102","_locale","en_US");
INSERT INTO coco_postmeta VALUES("414","102","_edit_lock","1419787862:1");
INSERT INTO coco_postmeta VALUES("415","102","_wp_page_template","default");
INSERT INTO coco_postmeta VALUES("416","103","title_on_top","");
INSERT INTO coco_postmeta VALUES("417","103","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("418","103","subtitle_on_top","");
INSERT INTO coco_postmeta VALUES("419","103","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("420","103","featured_image","");
INSERT INTO coco_postmeta VALUES("421","103","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("422","103","_menu_item_type","post_type");
INSERT INTO coco_postmeta VALUES("423","103","_menu_item_menu_item_parent","0");
INSERT INTO coco_postmeta VALUES("424","103","_menu_item_object_id","102");
INSERT INTO coco_postmeta VALUES("425","103","_menu_item_object","page");
INSERT INTO coco_postmeta VALUES("426","103","_menu_item_target","");
INSERT INTO coco_postmeta VALUES("427","103","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO coco_postmeta VALUES("428","103","_menu_item_xfn","");
INSERT INTO coco_postmeta VALUES("429","103","_menu_item_url","");
INSERT INTO coco_postmeta VALUES("430","103","_locale","zxx");
INSERT INTO coco_postmeta VALUES("431","104","title_on_top","");
INSERT INTO coco_postmeta VALUES("432","104","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("433","104","subtitle_on_top","");
INSERT INTO coco_postmeta VALUES("434","104","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("435","104","featured_image","");
INSERT INTO coco_postmeta VALUES("436","104","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("437","102","title_on_top","");
INSERT INTO coco_postmeta VALUES("438","102","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("439","102","subtitle_on_top","");
INSERT INTO coco_postmeta VALUES("440","102","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("441","102","featured_image","");
INSERT INTO coco_postmeta VALUES("442","102","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("446","108","_edit_last","1");
INSERT INTO coco_postmeta VALUES("447","108","field_5401b78ba6dc8","a:14:{s:3:\"key\";s:19:\"field_5401b78ba6dc8\";s:5:\"label\";s:8:\"Subtitle\";s:4:\"name\";s:8:\"subtitle\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:37:\"If you want a tagline under the title\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}");
INSERT INTO coco_postmeta VALUES("444","105","_wp_attached_file","we-are-developers.jpg");
INSERT INTO coco_postmeta VALUES("445","105","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:437;s:4:\"file\";s:21:\"we-are-developers.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"we-are-developers-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"we-are-developers-400x149.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("454","108","field_5401e5597171c","a:14:{s:3:\"key\";s:19:\"field_5401e5597171c\";s:5:\"label\";s:7:\"Website\";s:4:\"name\";s:7:\"website\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:39:\"Website. Start by http:// (or https://)\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:7:\"http://\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}");
INSERT INTO coco_postmeta VALUES("456","108","field_5401e8de4a0d6","a:14:{s:3:\"key\";s:19:\"field_5401e8de4a0d6\";s:5:\"label\";s:12:\"Text Sidebar\";s:4:\"name\";s:12:\"text_sidebar\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"To add some more text in the left sidebar\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}");
INSERT INTO coco_postmeta VALUES("459","108","field_5401e9c0d7386","a:10:{s:3:\"key\";s:19:\"field_5401e9c0d7386\";s:5:\"label\";s:8:\"No Index\";s:4:\"name\";s:8:\"no_index\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:55:\"Avoid Search Enginges to follow references of this work\";s:8:\"required\";s:1:\"0\";s:7:\"message\";s:68:\"This will add the noindex nofollow to every link about this project.\";s:13:\"default_value\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}");
INSERT INTO coco_postmeta VALUES("461","50","subtitle","An amazing video streaming platform");
INSERT INTO coco_postmeta VALUES("462","50","_subtitle","field_5401b78ba6dc8");
INSERT INTO coco_postmeta VALUES("463","50","website","https://theconvent.netgig.co.uk");
INSERT INTO coco_postmeta VALUES("464","50","_website","field_5401e5597171c");
INSERT INTO coco_postmeta VALUES("465","50","text_sidebar","Check the innovative platform for live and recorded gigs in streaming");
INSERT INTO coco_postmeta VALUES("466","50","_text_sidebar","field_5401e8de4a0d6");
INSERT INTO coco_postmeta VALUES("467","50","no_index","1");
INSERT INTO coco_postmeta VALUES("468","50","_no_index","field_5401e9c0d7386");
INSERT INTO coco_postmeta VALUES("472","108","field_54020e077c978","a:14:{s:3:\"key\";s:19:\"field_54020e077c978\";s:5:\"label\";s:6:\"Client\";s:4:\"name\";s:6:\"client\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5401e9c0d7386\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}");
INSERT INTO coco_postmeta VALUES("474","50","client","Somo Global, The Convent");
INSERT INTO coco_postmeta VALUES("475","50","_client","field_54020e077c978");
INSERT INTO coco_postmeta VALUES("502","117","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:300;s:4:\"file\";s:32:\"altair-hero-monitor-apaisado.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"altair-hero-monitor-apaisado-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"altair-hero-monitor-apaisado-400x102.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("503","112","_thumbnail_id","117");
INSERT INTO coco_postmeta VALUES("504","118","_edit_last","1");
INSERT INTO coco_postmeta VALUES("505","118","_edit_lock","1418947701:1");
INSERT INTO coco_postmeta VALUES("506","118","subtitle","2013 Christmas with a nice small project for charity");
INSERT INTO coco_postmeta VALUES("507","118","_subtitle","field_5401b78ba6dc8");
INSERT INTO coco_postmeta VALUES("508","118","client","RRDonnelley");
INSERT INTO coco_postmeta VALUES("509","118","_client","field_54020e077c978");
INSERT INTO coco_postmeta VALUES("510","118","website","http://rrdican.mitreum.net/");
INSERT INTO coco_postmeta VALUES("511","118","_website","field_5401e5597171c");
INSERT INTO coco_postmeta VALUES("512","118","text_sidebar","This website was active during the Christmas time on 2013. Now, we only have a demo of the site. If you want to test it, run the site <a href=\'http://rrdican.mitreum.net/\' target=\'_blank\'>http://rrdican.mitreum.net</a> and introduce the code \"gift11\" during the interaction.");
INSERT INTO coco_postmeta VALUES("513","118","_text_sidebar","field_5401e8de4a0d6");
INSERT INTO coco_postmeta VALUES("514","118","no_index","1");
INSERT INTO coco_postmeta VALUES("515","118","_no_index","field_5401e9c0d7386");
INSERT INTO coco_postmeta VALUES("516","118","hide_date","0");
INSERT INTO coco_postmeta VALUES("517","118","_hide_date","field_5401e9c0d7ccc");
INSERT INTO coco_postmeta VALUES("518","119","_wp_attached_file","rrd-christmas-hero.jpg");
INSERT INTO coco_postmeta VALUES("519","119","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:300;s:4:\"file\";s:22:\"rrd-christmas-hero.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"rrd-christmas-hero-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"rrd-christmas-hero-400x102.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("520","118","_thumbnail_id","119");
INSERT INTO coco_postmeta VALUES("523","122","_edit_last","1");
INSERT INTO coco_postmeta VALUES("524","122","_edit_lock","1418966710:1");
INSERT INTO coco_postmeta VALUES("525","123","_wp_attached_file","jamieoliver-hero.jpg");
INSERT INTO coco_postmeta VALUES("526","123","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:300;s:4:\"file\";s:20:\"jamieoliver-hero.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"jamieoliver-hero-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"jamieoliver-hero-400x102.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("527","122","_thumbnail_id","123");
INSERT INTO coco_postmeta VALUES("528","122","subtitle","Working on the food area");
INSERT INTO coco_postmeta VALUES("529","122","_subtitle","field_5401b78ba6dc8");
INSERT INTO coco_postmeta VALUES("530","122","client","Jamie Oliver Ltd");
INSERT INTO coco_postmeta VALUES("531","122","_client","field_54020e077c978");
INSERT INTO coco_postmeta VALUES("532","122","website","http://www.jamieoliver.com");
INSERT INTO coco_postmeta VALUES("533","122","_website","field_5401e5597171c");
INSERT INTO coco_postmeta VALUES("534","122","text_sidebar","All of the sections based in Wordpress were developed by Cobianzo Co. There was another section that unfortunately did not see the light, about a social media cook community hosted on Jamie Oliver\'s website.");
INSERT INTO coco_postmeta VALUES("535","122","_text_sidebar","field_5401e8de4a0d6");
INSERT INTO coco_postmeta VALUES("536","122","no_index","1");
INSERT INTO coco_postmeta VALUES("537","122","_no_index","field_5401e9c0d7386");
INSERT INTO coco_postmeta VALUES("538","122","hide_date","0");
INSERT INTO coco_postmeta VALUES("539","122","_hide_date","field_5401e9c0d7ccc");
INSERT INTO coco_postmeta VALUES("540","124","_edit_last","1");
INSERT INTO coco_postmeta VALUES("541","124","_edit_lock","1419021583:1");
INSERT INTO coco_postmeta VALUES("542","124","subtitle","An European map exploration tool");
INSERT INTO coco_postmeta VALUES("543","124","_subtitle","field_5401b78ba6dc8");
INSERT INTO coco_postmeta VALUES("544","124","client","ESPON, European Commission");
INSERT INTO coco_postmeta VALUES("545","124","_client","field_54020e077c978");
INSERT INTO coco_postmeta VALUES("546","124","website","http://mapfinder.espon.eu");
INSERT INTO coco_postmeta VALUES("547","124","_website","field_5401e5597171c");
INSERT INTO coco_postmeta VALUES("548","124","text_sidebar","<i>We followed ESPON standards for the graphic design, as the tool had to match the corporative identity and fit into the rest of the espon site.</i>");
INSERT INTO coco_postmeta VALUES("549","124","_text_sidebar","field_5401e8de4a0d6");
INSERT INTO coco_postmeta VALUES("550","124","no_index","0");
INSERT INTO coco_postmeta VALUES("551","124","_no_index","field_5401e9c0d7386");
INSERT INTO coco_postmeta VALUES("552","124","hide_date","0");
INSERT INTO coco_postmeta VALUES("553","124","_hide_date","field_5401e9c0d7ccc");
INSERT INTO coco_postmeta VALUES("554","126","_wp_attached_file","mapfinder-hero.jpg");
INSERT INTO coco_postmeta VALUES("555","126","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:300;s:4:\"file\";s:18:\"mapfinder-hero.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"mapfinder-hero-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"mapfinder-hero-400x102.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("556","124","_thumbnail_id","126");
INSERT INTO coco_postmeta VALUES("557","127","_wp_attached_file","mapfinder-3-vistas.jpg");
INSERT INTO coco_postmeta VALUES("558","127","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:476;s:4:\"file\";s:22:\"mapfinder-3-vistas.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"mapfinder-3-vistas-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"mapfinder-3-vistas-400x148.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"mapfinder-3-vistas-1170x435.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:435;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("559","129","_wp_attached_file","blog-rrd-hero.jpg");
INSERT INTO coco_postmeta VALUES("560","129","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:300;s:4:\"file\";s:17:\"blog-rrd-hero.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"blog-rrd-hero-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"blog-rrd-hero-400x102.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("561","128","_thumbnail_id","129");
INSERT INTO coco_postmeta VALUES("562","128","_edit_last","1");
INSERT INTO coco_postmeta VALUES("563","128","_edit_lock","1419029062:1");
INSERT INTO coco_postmeta VALUES("564","128","subtitle","Getting into the blog world");
INSERT INTO coco_postmeta VALUES("565","128","_subtitle","field_5401b78ba6dc8");
INSERT INTO coco_postmeta VALUES("566","128","client","RRDonnelley");
INSERT INTO coco_postmeta VALUES("567","128","_client","field_54020e077c978");
INSERT INTO coco_postmeta VALUES("568","128","website","http://rrd.mitreum.net");
INSERT INTO coco_postmeta VALUES("569","128","_website","field_5401e5597171c");
INSERT INTO coco_postmeta VALUES("570","128","text_sidebar","This is a blog only for internal use of RRDonnelley. You can access to a replica with dummy posts to check the aspect of the job");
INSERT INTO coco_postmeta VALUES("571","128","_text_sidebar","field_5401e8de4a0d6");
INSERT INTO coco_postmeta VALUES("572","128","no_index","1");
INSERT INTO coco_postmeta VALUES("573","128","_no_index","field_5401e9c0d7386");
INSERT INTO coco_postmeta VALUES("574","128","hide_date","0");
INSERT INTO coco_postmeta VALUES("575","128","_hide_date","field_5401e9c0d7ccc");
INSERT INTO coco_postmeta VALUES("576","131","_edit_last","1");
INSERT INTO coco_postmeta VALUES("577","131","_edit_lock","1419034097:1");
INSERT INTO coco_postmeta VALUES("578","132","_wp_attached_file","willis-blog-finex.hero_.jpg");
INSERT INTO coco_postmeta VALUES("579","132","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:300;s:4:\"file\";s:27:\"willis-blog-finex.hero_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"willis-blog-finex.hero_-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"willis-blog-finex.hero_-400x102.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("580","131","_thumbnail_id","132");
INSERT INTO coco_postmeta VALUES("581","131","subtitle","When it\'s about blog, Wordpress is out favourite framework");
INSERT INTO coco_postmeta VALUES("582","131","_subtitle","field_5401b78ba6dc8");
INSERT INTO coco_postmeta VALUES("583","131","client","Willis Ltd");
INSERT INTO coco_postmeta VALUES("584","131","_client","field_54020e077c978");
INSERT INTO coco_postmeta VALUES("585","131","website","http://www.willisfinexglobal-news.com/");
INSERT INTO coco_postmeta VALUES("586","131","_website","field_5401e5597171c");
INSERT INTO coco_postmeta VALUES("587","131","text_sidebar","This website was more about a frontend work.");
INSERT INTO coco_postmeta VALUES("588","131","_text_sidebar","field_5401e8de4a0d6");
INSERT INTO coco_postmeta VALUES("589","131","no_index","0");
INSERT INTO coco_postmeta VALUES("590","131","_no_index","field_5401e9c0d7386");
INSERT INTO coco_postmeta VALUES("591","131","hide_date","0");
INSERT INTO coco_postmeta VALUES("592","131","_hide_date","field_5401e9c0d7ccc");
INSERT INTO coco_postmeta VALUES("593","133","_edit_last","1");
INSERT INTO coco_postmeta VALUES("594","133","_edit_lock","1419035611:1");
INSERT INTO coco_postmeta VALUES("595","133","subtitle","Another internal online tool for communication");
INSERT INTO coco_postmeta VALUES("596","133","_subtitle","field_5401b78ba6dc8");
INSERT INTO coco_postmeta VALUES("597","133","client","Hitachi Ltd");
INSERT INTO coco_postmeta VALUES("598","133","_client","field_54020e077c978");
INSERT INTO coco_postmeta VALUES("599","133","website","http://hace.mitreum.net");
INSERT INTO coco_postmeta VALUES("600","133","_website","field_5401e5597171c");
INSERT INTO coco_postmeta VALUES("601","133","text_sidebar","This tool was developed only for Hitachi internal use, so you can\'t see the website from here. We created a simulator that you can visit, so you can see at least the main page of this application,, enclosed under the title \"One Team, One Vision\"");
INSERT INTO coco_postmeta VALUES("602","133","_text_sidebar","field_5401e8de4a0d6");
INSERT INTO coco_postmeta VALUES("603","133","no_index","1");
INSERT INTO coco_postmeta VALUES("604","133","_no_index","field_5401e9c0d7386");
INSERT INTO coco_postmeta VALUES("605","133","hide_date","0");
INSERT INTO coco_postmeta VALUES("606","133","_hide_date","field_5401e9c0d7ccc");
INSERT INTO coco_postmeta VALUES("607","134","_wp_attached_file","hace-hero.jpg");
INSERT INTO coco_postmeta VALUES("608","134","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:300;s:4:\"file\";s:13:\"hace-hero.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"hace-hero-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"hace-hero-400x102.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("609","133","_thumbnail_id","134");
INSERT INTO coco_postmeta VALUES("610","18","_wp_trash_meta_status","publish");
INSERT INTO coco_postmeta VALUES("611","18","_wp_trash_meta_time","1419035775");
INSERT INTO coco_postmeta VALUES("612","21","_wp_trash_meta_status","publish");
INSERT INTO coco_postmeta VALUES("613","21","_wp_trash_meta_time","1419035775");
INSERT INTO coco_postmeta VALUES("614","22","_wp_trash_meta_status","publish");
INSERT INTO coco_postmeta VALUES("615","22","_wp_trash_meta_time","1419035776");
INSERT INTO coco_postmeta VALUES("616","23","_wp_trash_meta_status","publish");
INSERT INTO coco_postmeta VALUES("617","23","_wp_trash_meta_time","1419035776");
INSERT INTO coco_postmeta VALUES("618","20","_wp_trash_meta_status","publish");
INSERT INTO coco_postmeta VALUES("619","20","_wp_trash_meta_time","1419035776");
INSERT INTO coco_postmeta VALUES("620","135","_edit_last","1");
INSERT INTO coco_postmeta VALUES("621","135","_edit_lock","1419039568:1");
INSERT INTO coco_postmeta VALUES("622","136","_wp_attached_file","mdarroyo-hero.jpg");
INSERT INTO coco_postmeta VALUES("623","136","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:300;s:4:\"file\";s:17:\"mdarroyo-hero.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"mdarroyo-hero-290x200.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"mdarroyo-hero-400x102.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}");
INSERT INTO coco_postmeta VALUES("624","135","_thumbnail_id","136");
INSERT INTO coco_postmeta VALUES("625","135","subtitle","Moving to brand to the top");
INSERT INTO coco_postmeta VALUES("626","135","_subtitle","field_5401b78ba6dc8");
INSERT INTO coco_postmeta VALUES("627","135","client","M� Dolores Arroyo lawyer\'s office");
INSERT INTO coco_postmeta VALUES("628","135","_client","field_54020e077c978");
INSERT INTO coco_postmeta VALUES("629","135","website","http://www.mdarroyo.com");
INSERT INTO coco_postmeta VALUES("630","135","_website","field_5401e5597171c");
INSERT INTO coco_postmeta VALUES("631","135","text_sidebar","");
INSERT INTO coco_postmeta VALUES("632","135","_text_sidebar","field_5401e8de4a0d6");
INSERT INTO coco_postmeta VALUES("633","135","no_index","0");
INSERT INTO coco_postmeta VALUES("634","135","_no_index","field_5401e9c0d7386");
INSERT INTO coco_postmeta VALUES("635","135","hide_date","0");
INSERT INTO coco_postmeta VALUES("636","135","_hide_date","field_5401e9c0d7ccc");
INSERT INTO coco_postmeta VALUES("637","138","_wp_attached_file","we-are-based-in-london-gray.gif");
INSERT INTO coco_postmeta VALUES("638","138","_wp_attachment_metadata","a:5:{s:5:\"width\";i:307;s:6:\"height\";i:410;s:4:\"file\";s:31:\"we-are-based-in-london-gray.gif\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"we-are-based-in-london-gray-290x200.gif\";s:5:\"width\";i:290;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"we-are-based-in-london-gray-300x400.gif\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}");
INSERT INTO coco_postmeta VALUES("645","6","title_on_top","");
INSERT INTO coco_postmeta VALUES("646","6","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("647","6","subtitle_on_top","");
INSERT INTO coco_postmeta VALUES("648","6","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("649","6","featured_image","");
INSERT INTO coco_postmeta VALUES("650","6","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("651","140","title_on_top","");
INSERT INTO coco_postmeta VALUES("652","140","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("653","140","subtitle_on_top","");
INSERT INTO coco_postmeta VALUES("654","140","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("655","140","featured_image","");
INSERT INTO coco_postmeta VALUES("656","140","_featured_image","field_5400ac9e07e38");
INSERT INTO coco_postmeta VALUES("657","141","title_on_top","");
INSERT INTO coco_postmeta VALUES("658","141","_title_on_top","field_5400b49d428b4");
INSERT INTO coco_postmeta VALUES("659","141","subtitle_on_top","");
INSERT INTO coco_postmeta VALUES("660","141","_subtitle_on_top","field_5400b4c0428b5");
INSERT INTO coco_postmeta VALUES("661","141","featured_image","");
INSERT INTO coco_postmeta VALUES("662","141","_featured_image","field_5400ac9e07e38");



DROP TABLE coco_posts;

CREATE TABLE `coco_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

INSERT INTO coco_posts VALUES("1","1","2014-08-25 16:18:56","2014-08-25 16:18:56","Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!","Hello world!","","publish","open","open","","hello-world","","","2014-08-25 16:18:56","2014-08-25 16:18:56","","0","SITEURL/?p=1","0","post","","1");
INSERT INTO coco_posts VALUES("122","1","2012-12-19 05:07:19","2012-12-19 05:07:19","<h4>Description</h4>\nThe team behind Jamie Oliver\'s brand is huge, and so it is the people working on his website. Project managers, team leaders, developers, designers, social media experts... In 2013 Jamie\'s website was relaunched with a brand new style, including new sections a features for the user experience. The job of Cobianzo Co. was focused on the areas of the website where Wordpress was required. This involves mainly the <a title=\"NEws section on Jamie Oliver\'s website\" href=\"http://www.jamieoliver.com/news-and-features/news/\" target=\"_blank\">News </a>and Restaurants sections, among some other parts of the site.\n<h4>Technical Analysis</h4>\nThe task�to show and sort the news is a pretty straight forward built in feature in Wordpress. Some particularities were token into consideration to respect the previous set up of the website, and a delicated job to export all the news from the old CMS was carried on. To complete the job, a special app to create quick news from the phone was adopted by the journalist team, in order to keep the site up to date and dynamic at all time.","Jamie Oliver WP site","Once more into the food industry, we dealed with receipes, ingredients and news to bring this sections of the Jamie Oliver\'s website to live","publish","closed","closed","","jamie-oliver-wp-site","","","2014-12-19 05:27:20","2014-12-19 05:27:20","","0","SITEURL/?post_type=work&#038;p=122","0","work","","0");
INSERT INTO coco_posts VALUES("6","1","2014-08-25 22:07:55","2014-08-25 22:07:55","<h4>WHAT WE DO</h4>\n<div class=\"descTxt\" style=\"color: #222222;\">\n\nCobianzo Communication puts at your disposal expertise on web, print design�and branding. But we are more than just experienced developers�and designers. We aim for a strategic approach by�carefully evaluating and prioritising your project. We expound�with you on ideas and suggestions as well as devote suitable�resources in order to make your project a success.\n<div class=\"row-fluid clearfix\"><span class=\"col-xs-4 col-sm-2\">\n<img class=\"img-responsive size-full wp-image-65 alignleft\" src=\"SITEURL/wp-content/uploads/digital.gif\" alt=\"digital\" width=\"138\" height=\"138\" />\n</span>\n<h4>Digital</h4>\n<span class=\"\">Web development, Mobile Apps</span>\n\n</div>\n<div class=\"row-fluid  clearfix\"><span class=\"col-xs-4 col-sm-2\">\n<img class=\"img-responsive size-full wp-image-66 alignleft\" src=\"SITEURL/wp-content/uploads/print.gif\" alt=\"print\" width=\"138\" height=\"138\" />\n</span>\n<h4>Print</h4>\n<span class=\"\">Graphic design, Layout</span>\n\n</div>\n<div class=\"row-fluid clearfix\"><span class=\"col-xs-4 col-sm-2\">\n<img class=\"img-responsive size-full wp-image-67 alignleft\" src=\"SITEURL/wp-content/uploads/video.gif\" alt=\"video\" width=\"138\" height=\"138\" />\n</span>\n<h4>Video</h4>\n<span class=\"\">Motion graphics, 3D reconstructions</span>\n\n</div>\n</div>\n<!--more-->\n<div class=\"accordion\" style=\"color: #222222;\">\n<div id=\"aboutWhat\" class=\"desc inner\">\n<h4>WHO WE ARE</h4>\n</div>\n</div>\n<div class=\"accordion\" style=\"color: #222222;\">\n<div id=\"aboutWho\" class=\"desc inner\">\n<div class=\"descTxt\">\n\nLocated in London, Cobianzo was founded by Alvaro Blanco�in 2012 after spending 11 years working in web development�and design. We bring together a network of international�talent, putting together a creative team of skilled developers�and designers for your project. With a sound experience�abroad, we are passionate about working internationally.\n\n</div>\n</div>\n</div>\n<!--more-->\n<h4>GET TO KNOW US</h4>\n<img class=\"img-responsive aligncenter wp-image-138 size-full\" src=\"SITEURL/wp-content/uploads/we-are-based-in-london-gray.gif\" alt=\"we-are-based-in-london-gray\" width=\"307\" height=\"410\" />\n<h4></h4>","About","","publish","open","open","","about","","","2014-12-28 17:45:07","2014-12-28 17:45:07","","0","SITEURL/?page_id=6","0","page","","0");
INSERT INTO coco_posts VALUES("141","1","2014-12-28 17:45:07","2014-12-28 17:45:07","<h4>WHAT WE DO</h4>\n<div class=\"descTxt\" style=\"color: #222222;\">\n\nCobianzo Communication puts at your disposal expertise on web, print design�and branding. But we are more than just experienced developers�and designers. We aim for a strategic approach by�carefully evaluating and prioritising your project. We expound�with you on ideas and suggestions as well as devote suitable�resources in order to make your project a success.\n<div class=\"row-fluid clearfix\"><span class=\"col-xs-4 col-sm-2\">\n<img class=\"img-responsive size-full wp-image-65 alignleft\" src=\"SITEURL/wp-content/uploads/digital.gif\" alt=\"digital\" width=\"138\" height=\"138\" />\n</span>\n<h4>Digital</h4>\n<span class=\"\">Web development, Mobile Apps</span>\n\n</div>\n<div class=\"row-fluid  clearfix\"><span class=\"col-xs-4 col-sm-2\">\n<img class=\"img-responsive size-full wp-image-66 alignleft\" src=\"SITEURL/wp-content/uploads/print.gif\" alt=\"print\" width=\"138\" height=\"138\" />\n</span>\n<h4>Print</h4>\n<span class=\"\">Graphic design, Layout</span>\n\n</div>\n<div class=\"row-fluid clearfix\"><span class=\"col-xs-4 col-sm-2\">\n<img class=\"img-responsive size-full wp-image-67 alignleft\" src=\"SITEURL/wp-content/uploads/video.gif\" alt=\"video\" width=\"138\" height=\"138\" />\n</span>\n<h4>Video</h4>\n<span class=\"\">Motion graphics, 3D reconstructions</span>\n\n</div>\n</div>\n<!--more-->\n<div class=\"accordion\" style=\"color: #222222;\">\n<div id=\"aboutWhat\" class=\"desc inner\">\n<h4>WHO WE ARE</h4>\n</div>\n</div>\n<div class=\"accordion\" style=\"color: #222222;\">\n<div id=\"aboutWho\" class=\"desc inner\">\n<div class=\"descTxt\">\n\nLocated in London, Cobianzo was founded by Alvaro Blanco�in 2012 after spending 11 years working in web development�and design. We bring together a network of international�talent, putting together a creative team of skilled developers�and designers for your project. With a sound experience�abroad, we are passionate about working internationally.\n\n</div>\n</div>\n</div>\n<!--more-->\n<h4>GET TO KNOW US</h4>\n<img class=\"img-responsive aligncenter wp-image-138 size-full\" src=\"SITEURL/wp-content/uploads/we-are-based-in-london-gray.gif\" alt=\"we-are-based-in-london-gray\" width=\"307\" height=\"410\" />\n<h4></h4>","About","","inherit","open","open","","6-revision-v1","","","2014-12-28 17:45:07","2014-12-28 17:45:07","","6","SITEURL/6-revision-v1/","0","revision","","0");
INSERT INTO coco_posts VALUES("8","1","2014-08-25 22:08:03","2014-08-25 22:08:03","<h4>�WEB</h4>\n<div class=\"row-fluid clearfix\">\n<div class=\"col-xs-12  col-sm-6\">\n<ul class=\"two-col-ul\">\n	<li>Web Development</li>\n	<li>Content Management Solutions</li>\n	<li>SEO</li>\n	<li>Web structure</li>\n	<li>Responsive designs</li>\n	<li>Interactive graphics</li>\n	<li>Web hosting</li>\n</ul>\n</div>\n</div>\n\n<hr />\n\n<div class=\"row-fluid  clearfix\">\n<div class=\"col-xs-12 col-sm-6\">\n<h4>PRINT DESIGN</h4>\n<ul class=\"two-col-ul\">\n	<li>Publications</li>\n	<li>Posters</li>\n	<li>Infographics</li>\n	<li>Business cards</li>\n</ul>\n</div>\n</div>\n\n<hr />\n\n<div class=\"row-fluid  clearfix\">\n<div class=\"col-xs-12 col-sm-6\">\n<h4>BRANDING</h4>\n<ul class=\"two-col-ul\">\n	<li>Logo design</li>\n	<li>Visual Identity</li>\n	<li>Icons and favicons</li>\n</ul>\n</div>\n</div>","Services","","publish","open","open","","services","","","2014-12-28 17:53:01","2014-12-28 17:53:01","","0","SITEURL/?page_id=8","0","page","","0");
INSERT INTO coco_posts VALUES("142","1","2014-12-28 17:52:02","2014-12-28 17:52:02","<h2></h2>\n<div class=\"row-fluid clearfix\">\n<div class=\"col-xs-12  col-sm-6\">\n<h4>INTERACTIVE</h4>\n<ul class=\"two-col-ul\">\n	<li>Web Development</li>\n	<li>Content Management Solutions</li>\n	<li>SEO</li>\n	<li>Web structure</li>\n	<li>Responsive designs</li>\n	<li>Interactive graphics</li>\n	<li>Web hosting</li>\n</ul>\n</div>\n</div>\n\n<hr />\n\n<div class=\"row-fluid  clearfix\">\n<div class=\"col-xs-12 col-sm-6\">\n<h4>PRINT DESIGN</h4>\n<ul class=\"two-col-ul\">\n	<li>Publications</li>\n	<li>Posters</li>\n	<li>Infographics</li>\n	<li>Business cards</li>\n</ul>\n</div>\n</div>\n\n<hr />\n\n<div class=\"row-fluid  clearfix\">\n<div class=\"col-xs-12 col-sm-6\">\n<h4>BRANDING</h4>\n<ul class=\"two-col-ul\">\n	<li>Logo design</li>\n	<li>Visual Identity</li>\n	<li>Icons and favicons</li>\n</ul>\n</div>\n</div>","Services","","inherit","open","open","","8-revision-v1","","","2014-12-28 17:52:02","2014-12-28 17:52:02","","8","SITEURL/8-revision-v1/","0","revision","","0");
INSERT INTO coco_posts VALUES("10","1","2014-08-25 22:08:10","2014-08-25 22:08:10","<h3>We\'d Love to Hear From You!</h3>\n<div class=\"sixteen columns\" style=\"color: #3e3830;\">\n\nSend us an email or pick up the phone. Either way, we\'d love to hear from you. Nothing get\'s us fired up more than discussing our client\'s goals and dreams, and how we can help check them off the bucket list.\n\n<span style=\"color: #626053;\">Unit 7 Cumberland Gate</span><br style=\"color: #626053;\" /><span style=\"color: #626053;\">Cumberland Road</span><br style=\"color: #626053;\" /><span style=\"color: #626053;\">Southsea</span><br style=\"color: #626053;\" /><span style=\"color: #626053;\">Hampshire</span><br style=\"color: #626053;\" /><span style=\"color: #626053;\">PO5 1AG</span>\n\n</div>\n<div class=\"eight columns\" style=\"color: #3e3830;\"></div>\n<!--more-->\n[contact-form-7 id=\"33\" title=\"Contact form 1\"]","Contact us","","publish","open","open","","contact-us","","","2014-08-29 19:19:26","2014-08-29 19:19:26","","0","SITEURL/?page_id=10","0","page","","0");
INSERT INTO coco_posts VALUES("11","1","2014-08-25 22:08:10","2014-08-25 22:08:10","","News","","inherit","open","open","","10-revision-v1","","","2014-08-25 22:08:10","2014-08-25 22:08:10","","10","SITEURL/?p=11","0","revision","","0");
INSERT INTO coco_posts VALUES("13","1","2014-08-25 22:08:54","2014-08-25 22:08:54"," ","","","publish","open","open","","13","","","2014-12-28 17:46:59","2014-12-28 17:46:59","","0","SITEURL/?p=13","3","nav_menu_item","","0");
INSERT INTO coco_posts VALUES("14","1","2014-08-25 22:08:54","2014-08-25 22:08:54","","Contact","","publish","open","open","","14","","","2014-12-28 17:46:59","2014-12-28 17:46:59","","0","SITEURL/?p=14","4","nav_menu_item","","0");
INSERT INTO coco_posts VALUES("16","1","2014-08-25 22:08:54","2014-08-25 22:08:54"," ","","","publish","open","open","","16","","","2014-12-28 17:46:59","2014-12-28 17:46:59","","0","SITEURL/?p=16","2","nav_menu_item","","0");
INSERT INTO coco_posts VALUES("18","1","2014-08-26 19:54:37","2014-08-26 19:54:37","<p style=\"color: #222222;\">t sounded like the side-plot from a Thomas Pynchon novel or, at least, a cheap paperback Pan-Pacific spy thriller: A scrambled piece of first-century BC Latin text run through Google Translate seemed to be cryptically carrying messages about “China’s Internet,” “NATO,” and “the Company,” the latter being a common code word for the CIA.</p>\n<p style=\"color: #222222;\">Was it a secret code intelligence agencies were using to send messages in plain sight? A glitch? A hoax? Or worse, another viral marketing campaign? The computer security researchers who happened across the Lorem Ipsum Google Translate mystery, weren’t sure. And before they figured it out, the hidden messages suddenly stopped.</p>\n&nbsp;","Netgig ","t sounded like the side-plot from a Thomas Pynchon novel or, at least, a cheap paperback Pan-Pacific spy thriller: A scrambled piece of first-century BC Latin text run through Google Translate seemed to be cryptically carrying messages about “China’s Internet,” “NATO,” and “the Company,” the latter being a common code word for the CIA.  ","trash","closed","closed","","netgig","","","2014-12-20 00:36:15","2014-12-20 00:36:15","","0","SITEURL/?post_type=work&#038;p=18","5","work","","0");
INSERT INTO coco_posts VALUES("19","1","2014-08-26 19:56:59","2014-08-26 19:56:59","","abusir","","inherit","open","open","","abusir","","","2014-08-26 19:56:59","2014-08-26 19:56:59","","18","SITEURL/wp-content/uploads/2014/08/abusir.jpg","0","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("20","1","2014-08-26 20:08:37","2014-08-26 20:08:37","<p style=\"color: #222222;\">t sounded like the side-plot from a Thomas Pynchon novel or, at least, a cheap paperback Pan-Pacific spy thriller: A scrambled piece of first-century BC Latin text run through Google Translate seemed to be cryptically carrying messages about “China’s Internet,” “NATO,” and “the Company,” the latter being a common code word for the CIA.</p>\n<p style=\"color: #222222;\">Was it a secret code intelligence agencies were using to send messages in plain sight? A glitch? A hoax? Or worse, another viral marketing campaign? The computer security researchers who happened across the Lorem Ipsum Google Translate mystery, weren’t sure. And before they figured it out, the hidden messages suddenly stopped.</p>\n&nbsp;","Volunteer in Cape Verde ","t sounded like the side-plot from a Thomas Pynchon novel or, at least, a cheap paperback Pan-Pacific spy thriller: A scrambled piece of first-century BC Latin text run through Google Translate seemed to be cryptically carrying messages about “China’s Internet,” “NATO,” and “the Company,” the latter being a common code word for the CIA.  ","trash","closed","closed","","netgig-2","","","2014-12-20 00:36:16","2014-12-20 00:36:16","","0","SITEURL/?post_type=work&#038;p=20","5","work","","0");
INSERT INTO coco_posts VALUES("21","1","2014-08-26 20:08:11","2014-08-26 20:08:11","<p style=\"color: #222222;\">t sounded like the side-plot from a Thomas Pynchon novel or, at least, a cheap paperback Pan-Pacific spy thriller: A scrambled piece of first-century BC Latin text run through Google Translate seemed to be cryptically carrying messages about “China’s Internet,” “NATO,” and “the Company,” the latter being a common code word for the CIA.</p>\n<p style=\"color: #222222;\">Was it a secret code intelligence agencies were using to send messages in plain sight? A glitch? A hoax? Or worse, another viral marketing campaign? The computer security researchers who happened across the Lorem Ipsum Google Translate mystery, weren’t sure. And before they figured it out, the hidden messages suddenly stopped.</p>\n&nbsp;","Netgig","t sounded like the side-plot from a Thomas Pynchon novel or, at least, a cheap paperback Pan-Pacific spy thriller: A scrambled piece of first-century BC Latin text run through Google Translate seemed to be cryptically carrying messages about “China’s Internet,” “NATO,” and “the Company,” the latter being a common code word for the CIA.  ","trash","closed","closed","","netgig-3","","","2014-12-20 00:36:15","2014-12-20 00:36:15","","0","SITEURL/?post_type=work&#038;p=21","5","work","","0");
INSERT INTO coco_posts VALUES("22","1","2014-08-26 20:08:14","2014-08-26 20:08:14","<p style=\"color: #222222;\">t sounded like the side-plot from a Thomas Pynchon novel or, at least, a cheap paperback Pan-Pacific spy thriller: A scrambled piece of first-century BC Latin text run through Google Translate seemed to be cryptically carrying messages about “China’s Internet,” “NATO,” and “the Company,” the latter being a common code word for the CIA.</p>\n<p style=\"color: #222222;\">Was it a secret code intelligence agencies were using to send messages in plain sight? A glitch? A hoax? Or worse, another viral marketing campaign? The computer security researchers who happened across the Lorem Ipsum Google Translate mystery, weren’t sure. And before they figured it out, the hidden messages suddenly stopped.</p>\n&nbsp;","Netgig","t sounded like the side-plot from a Thomas Pynchon novel or, at least, a cheap paperback Pan-Pacific spy thriller: A scrambled piece of first-century BC Latin text run through Google Translate seemed to be cryptically carrying messages about “China’s Internet,” “NATO,” and “the Company,” the latter being a common code word for the CIA.  ","trash","closed","closed","","netgig-4","","","2014-12-20 00:36:16","2014-12-20 00:36:16","","0","SITEURL/?post_type=work&#038;p=22","5","work","","0");
INSERT INTO coco_posts VALUES("23","1","2014-08-26 20:08:17","2014-08-26 20:08:17","<p style=\"color: #222222;\">t sounded like the side-plot from a Thomas Pynchon novel or, at least, a cheap paperback Pan-Pacific spy thriller: A scrambled piece of first-century BC Latin text run through Google Translate seemed to be cryptically carrying messages about “China’s Internet,” “NATO,” and “the Company,” the latter being a common code word for the CIA.</p>\n<p style=\"color: #222222;\">Was it a secret code intelligence agencies were using to send messages in plain sight? A glitch? A hoax? Or worse, another viral marketing campaign? The computer security researchers who happened across the Lorem Ipsum Google Translate mystery, weren’t sure. And before they figured it out, the hidden messages suddenly stopped.</p>\n&nbsp;","Netgig","t sounded like the side-plot from a Thomas Pynchon novel or, at least, a cheap paperback Pan-Pacific spy thriller: A scrambled piece of first-century BC Latin text run through Google Translate seemed to be cryptically carrying messages about “China’s Internet,” “NATO,” and “the Company,” the latter being a common code word for the CIA.  ","trash","closed","closed","","netgig-5","","","2014-12-20 00:36:16","2014-12-20 00:36:16","","0","SITEURL/?post_type=work&#038;p=23","5","work","","0");
INSERT INTO coco_posts VALUES("24","1","2014-08-27 08:19:05","2014-08-27 08:19:05","","FAQs","","draft","open","closed","","faqs","","","2014-12-28 17:46:12","2014-12-28 17:46:12","","0","SITEURL/?page_id=24","0","page","","0");
INSERT INTO coco_posts VALUES("119","1","2014-12-18 23:59:38","2014-12-18 23:59:38","","rrd-christmas-hero","","inherit","open","open","","rrd-christmas-hero","","","2014-12-18 23:59:38","2014-12-18 23:59:38","","118","SITEURL/wp-content/uploads/rrd-christmas-hero.jpg","0","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("26","1","2014-08-27 08:19:05","2014-08-27 08:19:05","","FAQs","","inherit","open","open","","24-revision-v1","","","2014-08-27 08:19:05","2014-08-27 08:19:05","","24","SITEURL/?p=26","0","revision","","0");
INSERT INTO coco_posts VALUES("123","1","2014-12-19 05:27:08","2014-12-19 05:27:08","","jamieoliver-hero","","inherit","open","open","","jamieoliver-hero","","","2014-12-19 05:27:08","2014-12-19 05:27:08","","122","SITEURL/wp-content/uploads/jamieoliver-hero.jpg","0","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("124","1","2011-03-19 19:52:49","2011-03-19 19:52:49","<h3>Description</h3>\nThis website is an online tool for searching, exploring and comparing maps online about the European Union. This project comprise a database with a large set of maps, stored as hi resolution images, which can be explored with different online tools (lens, zooming), saved into your account, compared with another map side by side and printed.\n\n<span style=\"color: #555555;\">That uploading of the maps�has been delegated to a third party company.</span>\n\nWhen the site was released, back on 2011, we created a simplified mobile version of the site, which remained obsolete as the world of the devices has changed very quickly.\n<h3>Technical Analysis</h3>\nAgain, we chose Wordpress as the current framework to implement the tool. There was a heavy work on javascript and jQuery library (and other dependent libraries) and a special enphasis to make this site usable even when the final client�browser had�no javascript. We used session variables to save the settings of the user. I.e, if the user choose to explore a map with a lens instead of zooming and panning, then this option is remembered and the next map he visits will be explored with a lens too.\n\nThe exploration of the maps with zoom and pan was made by storing different versions of the map, at different resolutions (created automatically when a map is uploaded). Depending on the level of detail that the user is navigating, we use one or other image, in a similar way as google maps do.","Mapfinder ","Project called �Map Finder�: a web application to storage, search and explore a DB of maps from the ESPON Section of the EU Commission.","publish","closed","closed","","mapfinder","","","2014-12-19 20:26:46","2014-12-19 20:26:46","","0","SITEURL/?post_type=work&#038;p=124","0","work","","0");
INSERT INTO coco_posts VALUES("28","1","2014-12-28 17:41:22","2014-12-28 17:41:22","<h4>WHAT WE DO</h4>\n<div class=\"descTxt\" style=\"color: #222222;\">\n\nCobianzo Communication puts at your disposal expertise on web, print design�and branding. But we are more than just experienced developers�and designers. We aim for a strategic approach by�carefully evaluating and prioritising your project. We expound�with you on ideas and suggestions as well as devote suitable�resources in order to make your project a success.\n<div class=\"row-fluid clearfix\"><span class=\"col-xs-4 col-sm-2\">\n<img class=\"img-responsive size-full wp-image-65 alignleft\" src=\"SITEURL/wp-content/uploads/digital.gif\" alt=\"digital\" width=\"138\" height=\"138\" />\n</span>\n<h4>Digital</h4>\n<span class=\"\">Web development, Mobile Apps</span>\n\n</div>\n<div class=\"row-fluid  clearfix\"><span class=\"col-xs-4 col-sm-2\">\n<img class=\"img-responsive size-full wp-image-66 alignleft\" src=\"SITEURL/wp-content/uploads/print.gif\" alt=\"print\" width=\"138\" height=\"138\" />\n</span>\n<h4>Print</h4>\n<span class=\"\">Graphic design, Layout</span>\n\n</div>\n<div class=\"row-fluid clearfix\"><span class=\"col-xs-4 col-sm-2\">\n<img class=\"img-responsive size-full wp-image-67 alignleft\" src=\"SITEURL/wp-content/uploads/video.gif\" alt=\"video\" width=\"138\" height=\"138\" />\n</span>\n<h4>Video</h4>\n<span class=\"\">Motion graphics, 3D reconstructions</span>\n\n</div>\n</div>\n<!--more-->\n<div class=\"accordion\" style=\"color: #222222;\">\n<div id=\"aboutWhat\" class=\"desc inner\">\n<h4>WHO WE ARE</h4>\n</div>\n</div>\n<div class=\"accordion\" style=\"color: #222222;\">\n<div id=\"aboutWho\" class=\"desc inner\">\n<div class=\"descTxt\">\n\nLocated in London, Cobianzo was founded by Alvaro Blanco�in 2012 after spending 11 years working in web development�and design. We bring together a network of international�talent, putting together a creative team of skilled developers�and designers for your project. With a sound experience�abroad, we are passionate about working internationally.\n\n</div>\n</div>\n</div>\n<!--more-->\n<h4>GET TO KNOW US</h4>\n&nbsp;\n<h4></h4>\nYes. This is where we are based and we use to start many of our projects. We love this city.\n\n<hr />\n\nAnd we work hand by hand with�<strong>our partners</strong>\n\n&nbsp;\n\n<img class=\"img-responsive alignnone wp-image-62 size-full\" src=\"SITEURL/wp-content/uploads/univ-leon1.gif\" alt=\"\" width=\"369\" height=\"152\" />\n\nThis is where everything started and where the founders of Cobianzo Co. grew up as professionals. We like to keep a foot on our roots, and both on earth.\n\n&nbsp;\n\n<img class=\"img-responsive alignnone wp-image-63 size-full\" src=\"SITEURL/wp-content/uploads/altair4-m1.gif\" alt=\"\" width=\"369\" height=\"123\" />\n\nOur eternal Italian partner. We cooperate in many projects. They have more than 30 years of experience in motion graphics and 3d animation.","About","","inherit","open","open","","6-autosave-v1","","","2014-12-28 17:41:22","2014-12-28 17:41:22","","6","SITEURL/?p=28","0","revision","","0");
INSERT INTO coco_posts VALUES("138","1","2014-12-28 17:41:39","2014-12-28 17:41:39","","we-are-based-in-london-gray","","inherit","open","open","","we-are-based-in-london-gray","","","2014-12-28 17:41:39","2014-12-28 17:41:39","","6","SITEURL/wp-content/uploads/we-are-based-in-london-gray.gif","0","attachment","image/gif","0");
INSERT INTO coco_posts VALUES("33","1","2014-08-27 10:22:38","2014-08-27 10:22:38","<div class=\"row-flow form-group\"><p class=\'col-xs-12\'>Your Name (required)<br />\n    [text* your-name class:form-control] </p>\n\n<p class=\'col-xs-12\'>Your Email (required)<br />\n    [email* your-email  class:form-control] </p>\n\n<p class=\'col-xs-12\'>Subject<br />\n    [text your-subject  class:form-control] </p>\n\n<p class=\'col-xs-12\'>Your Message<br />\n    [textarea your-message  class:form-control] </p>\n\n<p class=\'col-xs-12\'>[submit \"Send\" class:btn class:btn-default]</p>\n</div>\n[your-subject]\n[your-name] <[your-email]>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Cobianzo Communication (SITEURL)\ncobianzo@cobianzo.com\n\n\n\n\n\n[your-subject]\n[your-name] <[your-email]>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Cobianzo Communication (SITEURL)\n[your-email]\n\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.","Contact form 1","","publish","open","open","","contact-form-1","","","2014-08-29 19:20:43","2014-08-29 19:20:43","","0","SITEURL/?post_type=wpcf7_contact_form&#038;p=33","0","wpcf7_contact_form","","0");
INSERT INTO coco_posts VALUES("34","1","2014-08-27 10:22:38","2014-08-27 10:22:38","cobianzo@cobianzo.com\ncobianzo","cobianzo@cobianzo.com","","publish","open","open","","cobianzo-cobianzo-com","","","2014-08-27 10:22:38","2014-08-27 10:22:38","","0","SITEURL/?p=34","0","flamingo_contact","","0");
INSERT INTO coco_posts VALUES("113","1","2014-12-18 02:48:28","2014-12-18 02:48:28","<h3>Description</h3>\nAltair 4 is our main partner when we woek closer to the multimedia / design industry. Our company, Cobianzo Communication� is born actually from the core of Altair 4.\n\nThat\'s why we have been entrusted to develop Altair 4\'s website since their main reestructuration in 2004. Since then, we have built the website from scratch 3 times.\n<h3>Technical Analysis</h3>\nInitially (the first time Altair 4\'s website was developed) it was built on ASP with the main part of the homepage in Flash, which connected to the database (a flat Access DB) to display the latest news. The CMS was a home-made control panel made by ourselves. It was back on 2004, when stable CMS in PHP were not as popular as they are now.\n\nAfter several adjustments, later on 2010 we decided to build up the site again, over the platform of Wordpress. Same design, but improved, and replacing the Flash part with DHTML�we developed�a flat different layout for mobile devices. We decided to change hosting provider, and contracted Google Apps for business to handle email accounts, calendar and contacts. This was an important step forward... then the responsive web showed up :)\n\n&nbsp;\n\n<img class=\"aligncenter size-full wp-image-114\" src=\"SITEURL/wp-content/uploads/altair-wen-in-2010.jpg\" alt=\"altair-wen-in-2010\" width=\"856\" height=\"309\" />\n\nLate on 2013 the site was built again from scratch following a similar criteria on the design, focusing on the responsiveness of the layout and adapting it to the new web trends, giving a minimalist and practical focus to the entire site.","Altair4.com website","","inherit","open","open","","112-autosave-v1","","","2014-12-18 02:48:28","2014-12-18 02:48:28","","112","SITEURL/?p=113","0","revision","","0");
INSERT INTO coco_posts VALUES("88","1","2014-08-29 19:03:49","2014-08-29 19:03:49","<div class=\"row-fluid\">\n<div class=\"col-xs-12 col-sm-6\">We\'d Love to Hear From You!</div>\n<div class=\"col-xs-12 col-sm-6\">[contact-form-7 id=\"33\" title=\"Contact form 1\"]</div>\n</div>","Contact us","","inherit","open","open","","10-autosave-v1","","","2014-08-29 19:03:49","2014-08-29 19:03:49","","10","SITEURL/?p=88","0","revision","","0");
INSERT INTO coco_posts VALUES("40","1","2014-08-27 10:46:58","2014-08-27 10:46:58"," ","","","publish","open","open","","40","","","2014-12-28 17:46:43","2014-12-28 17:46:43","","0","SITEURL/?p=40","4","nav_menu_item","","0");
INSERT INTO coco_posts VALUES("41","1","2014-08-27 10:46:58","2014-08-27 10:46:58"," ","","","publish","open","open","","41","","","2014-12-28 17:46:43","2014-12-28 17:46:43","","0","SITEURL/?p=41","2","nav_menu_item","","0");
INSERT INTO coco_posts VALUES("42","1","2014-08-27 10:46:58","2014-08-27 10:46:58"," ","","","publish","open","open","","42","","","2014-12-28 17:46:43","2014-12-28 17:46:43","","0","SITEURL/?p=42","3","nav_menu_item","","0");
INSERT INTO coco_posts VALUES("118","1","2013-12-18 23:39:31","2013-12-18 23:39:31","<h4>Description</h4>\nThis was a little website to support a Christmas charity campaign for the final client RRDonnelley.\n\nCustomers bought a Xmas postcard in the shop by the amount of the donation price. There, in the card, they found a code and the instructions of how to submit the donation. By using this simple site (4 clean windows), they could introduce the code and we sent an email and update a file with the record of the donations.\n<h4>Technical analysis</h4>\nThis site had to be simple, with a clear layout and a minimum of information for the final user, who was already aeare of the use of this web beforehand. So the layout was a simple, responsive and clean scrollable window which had 4 stages: 2 for introduction, one to use the code written in the postcard and a final window for confirmation. The behaviour of the scroll (using either mouse or arrows) relied on the jQuery <em>fullpage</em> plugin, completely responsive.\n\nTo avoid eventual problems in the final setup, we decided to�do without the database: a simple txt file with the corresponding security settings should be enough to store the date, name, code and email of the�donator. An automatic email was sent to the administrator of the site right after the submission.","Christmas charity campaign","Microsite with a file record of interactivity during Christmas 2013","publish","closed","closed","","christmas-charity-campaign","","","2014-12-19 00:00:29","2014-12-19 00:00:29","","0","SITEURL/?post_type=work&#038;p=118","0","work","","0");
INSERT INTO coco_posts VALUES("115","1","2014-12-18 03:05:29","2014-12-18 03:05:29","","altair-hero-monitor","","inherit","open","open","","altair-hero-monitor","","","2014-12-18 03:05:29","2014-12-18 03:05:29","","112","SITEURL/wp-content/uploads/altair-hero-monitor.jpg","2","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("116","1","2014-12-18 05:00:50","2014-12-18 05:00:50","","altair3devices","","inherit","open","open","","altair3devices","","","2014-12-18 05:00:50","2014-12-18 05:00:50","","112","SITEURL/wp-content/uploads/altair3devices.jpg","1","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("117","1","2014-12-18 23:16:12","2014-12-18 23:16:12","","altair-hero-monitor-apaisado","","inherit","open","open","","altair-hero-monitor-apaisado","","","2014-12-18 23:16:12","2014-12-18 23:16:12","","112","SITEURL/wp-content/uploads/altair-hero-monitor-apaisado.jpg","0","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("114","1","2014-12-18 02:47:23","2014-12-18 02:47:23","","altair-wen-in-2010","","inherit","open","open","","altair-wen-in-2010","","","2014-12-18 02:47:23","2014-12-18 02:47:23","","0","SITEURL/wp-content/uploads/altair-wen-in-2010.jpg","0","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("49","1","2014-08-27 10:53:33","2014-08-27 10:53:33","","Works","","publish","open","open","","works","","","2014-12-28 17:46:59","2014-12-28 17:46:59","","0","SITEURL/?p=49","1","nav_menu_item","","0");
INSERT INTO coco_posts VALUES("50","1","2014-08-28 22:15:39","2014-08-28 22:15:39","<h3>Description</h3>\nNetgig is a great website (optimized also for every device format) platform for watching live and recorded shows happening in a very especial and selected venue called The Convent, in United Kingdom.\n\nDeveloped with Somo Global, and delivered to The Convent as the final client, this e-commerce website offers to the user the possibility to navigate and select his favorite bands, buy their gigs online, and watch the live or recorded show for 7 days since its start.  Every details has been taking into account for this website. The user experience has been optimized for tablets and mobiles, the loading time taken to a minimum, the streaming platform selected and configured in order to ensure the best performance for the audience.\n\nWe hope that this website becomes a solid starting point for future platforms for video streaming experiences, focused in different fields such as entertainment, educational or broadcasting.\n<h3>Technical Analysis</h3>\nThis website required an scalable and solid CMS solution and  e-commerce platform. The Wordpress framework with Woocommerce plugin (with a single Paypal gateway for payments) were the chosen ones for this project. HTML5, CSS3, responsive frontend and dynamic effects in Javascript were part of the plan, as usual.\n\nOther platforms and technologies were involved too, such as Mailchimp and Mandrill to handle the newsletters and automatic emails sent by the application, or Brightcove as the platform to host any video broadcasted in the web.","Netgig","Netgig is a great website (optimized also for every device format) platform for watching live and recorded shows happening in a very especial and selected venue called The Convent, in United Kingdom.\n","publish","closed","closed","","50-2","","","2014-08-30 18:05:07","2014-08-30 18:05:07","","0","SITEURL/?post_type=work&#038;p=50","0","work","","0");
INSERT INTO coco_posts VALUES("51","1","2014-08-28 22:15:18","2014-08-28 22:15:18","","Web development","","inherit","open","open","","netgig-cobianzoco","","","2014-08-28 22:15:18","2014-08-28 22:15:18","","50","SITEURL/wp-content/uploads/netgig-cobianzoco.jpg","1","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("52","1","2014-08-28 22:29:54","2014-08-28 22:29:54","<h3>Description</h3>\nNetgig is a great website (optimized also for every device format) platform for watching live and recorded shows happening in a very especial and selected venue called The Convent, in United Kingdom.\n\nDeveloped with Somo Global, and delivered to The Convent as the final client, this e-commerce website offers to the user the possibility to navigate and select his favorite bands, buy their gigs online, and watch the live or recorded show for 7 days since its start.  Every details has been taking into account for this website. The user experience has been optimized for tablets and mobiles, the loading time taken to a minimum, the streaming platform selected and configured in order to ensure the best performance for the audience.\n\nWe hope that this website becomes a solid starting point for future platforms for video streaming experiences, focused in different fields such as entertainment, educational or broadcasting.\n<h3>Technical Analysis</h3>\nThis website required an scalable and solid CMS solution and  e-commerce platform. The Wordpress framework with Woocommerce plugin (with a single Paypal gateway for payments) were the chosen ones for this project. HTML5, CSS3, responsive frontend and dynamic effects in Javascript were part of the plan, as usual.\n\nOther platforms and technologies were involved too, such as Mailchimp and Mandrill to handle the newsletters and automatic emails sent by the application,","Netgig","","inherit","open","open","","50-autosave-v1","","","2014-08-28 22:29:54","2014-08-28 22:29:54","","50","SITEURL/?p=52","0","revision","","0");
INSERT INTO coco_posts VALUES("53","1","2014-08-29 08:55:09","2014-08-29 08:55:09","","based-in-london","","inherit","open","open","","based-in-london","","","2014-08-29 08:55:09","2014-08-29 08:55:09","","6","SITEURL/wp-content/uploads/based-in-london.gif","0","attachment","image/gif","0");
INSERT INTO coco_posts VALUES("54","1","2014-08-29 08:55:56","2014-08-29 08:55:56","","univ-leon","","inherit","open","open","","univ-leon","","","2014-08-29 08:55:56","2014-08-29 08:55:56","","6","SITEURL/wp-content/uploads/univ-leon.gif","0","attachment","image/gif","0");
INSERT INTO coco_posts VALUES("55","1","2014-08-29 08:57:29","2014-08-29 08:57:29","","altair4-m","","inherit","open","open","","altair4-m","","","2014-08-29 08:57:29","2014-08-29 08:57:29","","6","SITEURL/wp-content/uploads/altair4-m.gif","0","attachment","image/gif","0");
INSERT INTO coco_posts VALUES("61","1","2014-08-29 09:07:08","2014-08-29 09:07:08","","based-in-london","","inherit","open","open","","based-in-london-2","","","2014-08-29 09:07:08","2014-08-29 09:07:08","","6","SITEURL/wp-content/uploads/based-in-london1.gif","0","attachment","image/gif","0");
INSERT INTO coco_posts VALUES("62","1","2014-08-29 09:07:22","2014-08-29 09:07:22","","univ-leon","","inherit","open","open","","univ-leon-2","","","2014-08-29 09:07:22","2014-08-29 09:07:22","","6","SITEURL/wp-content/uploads/univ-leon1.gif","0","attachment","image/gif","0");
INSERT INTO coco_posts VALUES("63","1","2014-08-29 09:07:37","2014-08-29 09:07:37","","altair4-m","","inherit","open","open","","altair4-m-2","","","2014-08-29 09:07:37","2014-08-29 09:07:37","","6","SITEURL/wp-content/uploads/altair4-m1.gif","0","attachment","image/gif","0");
INSERT INTO coco_posts VALUES("65","1","2014-08-29 09:28:21","2014-08-29 09:28:21","","digital","","inherit","open","open","","digital","","","2014-08-29 09:28:21","2014-08-29 09:28:21","","6","SITEURL/wp-content/uploads/digital.gif","0","attachment","image/gif","0");
INSERT INTO coco_posts VALUES("66","1","2014-08-29 09:28:22","2014-08-29 09:28:22","","print","","inherit","open","open","","print","","","2014-08-29 09:28:22","2014-08-29 09:28:22","","6","SITEURL/wp-content/uploads/print.gif","0","attachment","image/gif","0");
INSERT INTO coco_posts VALUES("67","1","2014-08-29 09:28:22","2014-08-29 09:28:22","","video","","inherit","open","open","","video","","","2014-08-29 09:28:22","2014-08-29 09:28:22","","6","SITEURL/wp-content/uploads/video.gif","0","attachment","image/gif","0");
INSERT INTO coco_posts VALUES("140","1","2014-12-28 17:43:17","2014-12-28 17:43:17","<h4>WHAT WE DO</h4>\n<div class=\"descTxt\" style=\"color: #222222;\">\n\nCobianzo Communication puts at your disposal expertise on web, print design�and branding. But we are more than just experienced developers�and designers. We aim for a strategic approach by�carefully evaluating and prioritising your project. We expound�with you on ideas and suggestions as well as devote suitable�resources in order to make your project a success.\n<div class=\"row-fluid clearfix\"><span class=\"col-xs-4 col-sm-2\">\n<img class=\"img-responsive size-full wp-image-65 alignleft\" src=\"SITEURL/wp-content/uploads/digital.gif\" alt=\"digital\" width=\"138\" height=\"138\" />\n</span>\n<h4>Digital</h4>\n<span class=\"\">Web development, Mobile Apps</span>\n\n</div>\n<div class=\"row-fluid  clearfix\"><span class=\"col-xs-4 col-sm-2\">\n<img class=\"img-responsive size-full wp-image-66 alignleft\" src=\"SITEURL/wp-content/uploads/print.gif\" alt=\"print\" width=\"138\" height=\"138\" />\n</span>\n<h4>Print</h4>\n<span class=\"\">Graphic design, Layout</span>\n\n</div>\n<div class=\"row-fluid clearfix\"><span class=\"col-xs-4 col-sm-2\">\n<img class=\"img-responsive size-full wp-image-67 alignleft\" src=\"SITEURL/wp-content/uploads/video.gif\" alt=\"video\" width=\"138\" height=\"138\" />\n</span>\n<h4>Video</h4>\n<span class=\"\">Motion graphics, 3D reconstructions</span>\n\n</div>\n</div>\n<!--more-->\n<div class=\"accordion\" style=\"color: #222222;\">\n<div id=\"aboutWhat\" class=\"desc inner\">\n<h4>WHO WE ARE</h4>\n</div>\n</div>\n<div class=\"accordion\" style=\"color: #222222;\">\n<div id=\"aboutWho\" class=\"desc inner\">\n<div class=\"descTxt\">\n\nLocated in London, Cobianzo was founded by Alvaro Blanco�in 2012 after spending 11 years working in web development�and design. We bring together a network of international�talent, putting together a creative team of skilled developers�and designers for your project. With a sound experience�abroad, we are passionate about working internationally.\n\n</div>\n</div>\n</div>\n<!--more-->\n<h4>GET TO KNOW US</h4>\n<img class=\"img-responsive aligncenter wp-image-138 size-full\" src=\"SITEURL/wp-content/uploads/we-are-based-in-london-gray.gif\" alt=\"we-are-based-in-london-gray\" width=\"307\" height=\"410\" />\n<h4></h4>\nYes. This is where we are based and we use to start many of our projects. We love this city.\n\n<hr />\n\nAnd we work hand by hand with�<strong>our partners</strong>\n\n&nbsp;\n\n<img class=\"img-responsive alignnone wp-image-62 size-full\" src=\"SITEURL/wp-content/uploads/univ-leon1.gif\" alt=\"\" width=\"369\" height=\"152\" />\n\nThis is where everything started and where the founders of Cobianzo Co. grew up as professionals. We like to keep a foot on our roots, and both on earth.\n\n&nbsp;\n\n<img class=\"img-responsive alignnone wp-image-63 size-full\" src=\"SITEURL/wp-content/uploads/altair4-m1.gif\" alt=\"\" width=\"369\" height=\"123\" />\n\nOur eternal Italian partner. We cooperate in many projects. They have more than 30 years of experience in motion graphics and 3d animation.","About","","inherit","open","open","","6-revision-v1","","","2014-12-28 17:43:17","2014-12-28 17:43:17","","6","SITEURL/6-revision-v1/","0","revision","","0");
INSERT INTO coco_posts VALUES("112","1","2013-12-16 20:04:43","2013-12-16 20:04:43","<h3>Description</h3>\nAltair 4 is our main partner when we woek closer to the multimedia / design industry. Our company, Cobianzo Communication� is born actually from the core of Altair 4.\n\nThat\'s why we have been entrusted to develop Altair 4\'s website since their main reestructuration in 2004. Since then, we have built the website from scratch 3 times.\n<h3>Technical Analysis</h3>\nInitially (the first time Altair 4\'s website was developed) it was built on ASP with the main part of the homepage in Flash, which connected to the database (a flat Access DB) to display the latest news. The CMS was a home-made control panel made by ourselves. It was back on 2004, when stable CMS in PHP were not as popular as they are now.\n\nAfter several adjustments, later on 2010 we decided to build up the site again, over the platform of Wordpress. Same design, but improved, and replacing the Flash part with DHTML�we developed�a flat different layout for mobile devices. We decided to change hosting provider, and contracted Google Apps for business to handle email accounts, calendar and contacts. This was an important step forward... then the responsive web showed up :)\n\n&nbsp;\n\n<img class=\"aligncenter size-full wp-image-114\" src=\"SITEURL/wp-content/uploads/altair-wen-in-2010.jpg\" alt=\"altair-wen-in-2010\" width=\"856\" height=\"309\" />\n\nLate on 2013 the site was built again from scratch following a similar criteria on the design, focusing on the responsiveness of the layout and adapting it to the new web trends, giving a minimalist and practical focus to the entire site.","Altair4.com website","3 different versions of this website were made in 2004, 2010 and finally in 2013","publish","closed","closed","","altair4-com-website","","","2014-12-18 23:16:37","2014-12-18 23:16:37","","0","SITEURL/?post_type=work&#038;p=112","0","work","","0");
INSERT INTO coco_posts VALUES("73","1","2014-12-28 17:50:09","2014-12-28 17:50:09","<h2></h2>\n<div class=\"row-fluid clearfix\">\n<div class=\"col-xs-12  col-sm-6\">\n<h4>INTERACTIVE</h4>\n<ul class=\"two-col-ul\">\n	<li>Web Development</li>\n	<li>Content Management Solutions</li>\n	<li>SEO</li>\n	<li>Web structure</li>\n	<li>Responsive designs</li>\n	<li>Interactive graphics</li>\n	<li>Web hosting</li>\n</ul>\n</div>\n<div class=\"col-xs-12 col-sm-6\">\n<h4>Interactive Disciplines</h4>\nAs masters in everything interactive we use the most modern development languages &amp; techniques. We plan for the best user experience with specific goals in mind. What we do not do is use templates. We develop each and every project from the ground up.\n\n</div>\n</div>\n\n<hr />\n\n<div class=\"row-fluid  clearfix\">\n<div class=\"col-xs-12 col-sm-6\">\n<h4>PRINT DESIGN</h4>\n<ul class=\"two-col-ul\">\n	<li>Publications</li>\n	<li>Posters</li>\n	<li>In</li>\n	<li>Collateral</li>\n	<li>Invitations</li>\n	<li>Posters</li>\n	<li>Infographics</li>\n	<li>Signage</li>\n	<li>Tradeshows</li>\n</ul>\n</div>\n<div class=\"col-xs-12 col-sm-6\">\n<h4>Design philosophy</h4>\nWe have extremely talented designers that execute our strategic objectives to show stopping, award winning, client mesmerizing, super successful and profitable design solutions.\n\n</div>\n</div>\n\n<hr />\n\n<div class=\"row-fluid  clearfix\">\n<div class=\"col-xs-12 col-sm-6\">\n<h4>BRANDING</h4>\n<ul class=\"two-col-ul\">\n	<li>Research</li>\n	<li>Company Naming</li>\n	<li>Branding Development</li>\n	<li>Identity / Logo</li>\n	<li>Style Guide</li>\n</ul>\n</div>\n<div class=\"col-xs-12 col-sm-6\">\n<h4>Branding background</h4>\nWith over 20+ years we have developed successful brands that stand the test of time. Before you decide on a name, come up with ideas for logos or purchase a URL please contact us for a strategy session. There\'s a lot of consideration that goes into developing a brand let the experts help, your success can depend on it.\n\n</div>\n</div>","Services","","inherit","open","open","","8-autosave-v1","","","2014-12-28 17:50:09","2014-12-28 17:50:09","","8","SITEURL/?p=73","0","revision","","0");
INSERT INTO coco_posts VALUES("143","1","2014-12-28 17:53:01","2014-12-28 17:53:01","<h4>�WEB</h4>\n<div class=\"row-fluid clearfix\">\n<div class=\"col-xs-12  col-sm-6\">\n<ul class=\"two-col-ul\">\n	<li>Web Development</li>\n	<li>Content Management Solutions</li>\n	<li>SEO</li>\n	<li>Web structure</li>\n	<li>Responsive designs</li>\n	<li>Interactive graphics</li>\n	<li>Web hosting</li>\n</ul>\n</div>\n</div>\n\n<hr />\n\n<div class=\"row-fluid  clearfix\">\n<div class=\"col-xs-12 col-sm-6\">\n<h4>PRINT DESIGN</h4>\n<ul class=\"two-col-ul\">\n	<li>Publications</li>\n	<li>Posters</li>\n	<li>Infographics</li>\n	<li>Business cards</li>\n</ul>\n</div>\n</div>\n\n<hr />\n\n<div class=\"row-fluid  clearfix\">\n<div class=\"col-xs-12 col-sm-6\">\n<h4>BRANDING</h4>\n<ul class=\"two-col-ul\">\n	<li>Logo design</li>\n	<li>Visual Identity</li>\n	<li>Icons and favicons</li>\n</ul>\n</div>\n</div>","Services","","inherit","open","open","","8-revision-v1","","","2014-12-28 17:53:01","2014-12-28 17:53:01","","8","SITEURL/8-revision-v1/","0","revision","","0");
INSERT INTO coco_posts VALUES("87","1","2014-08-29 17:33:12","2014-08-29 17:33:12","","Contact us","","inherit","open","open","","10-revision-v1","","","2014-08-29 17:33:12","2014-08-29 17:33:12","","10","SITEURL/?p=87","0","revision","","0");
INSERT INTO coco_posts VALUES("90","1","2014-08-29 19:05:51","2014-08-29 19:05:51","We\'d Love to Hear From You!\n\n<!--more-->\n[contact-form-7 id=\"33\" title=\"Contact form 1\"]","Contact us","","inherit","open","open","","10-revision-v1","","","2014-08-29 19:05:51","2014-08-29 19:05:51","","10","SITEURL/?p=90","0","revision","","0");
INSERT INTO coco_posts VALUES("89","1","2014-08-29 19:04:51","2014-08-29 19:04:51","<div class=\"row-fluid\">\n<div class=\"col-xs-12 col-sm-6\">We\'d Love to Hear From You!</div>\n<div class=\"col-xs-12 col-sm-6\">[contact-form-7 id=\"33\" title=\"Contact form 1\"]</div>\n</div>","Contact us","","inherit","open","open","","10-revision-v1","","","2014-08-29 19:04:51","2014-08-29 19:04:51","","10","SITEURL/?p=89","0","revision","","0");
INSERT INTO coco_posts VALUES("91","1","2014-08-29 19:06:24","2014-08-29 19:06:24","<h3>We\'d Love to Hear From You!</h3>\n<!--more-->\n[contact-form-7 id=\"33\" title=\"Contact form 1\"]","Contact us","","inherit","open","open","","10-revision-v1","","","2014-08-29 19:06:24","2014-08-29 19:06:24","","10","SITEURL/?p=91","0","revision","","0");
INSERT INTO coco_posts VALUES("92","1","2014-08-29 19:06:40","2014-08-29 19:06:40","<h3>We\'d Love to Hear From You!</h3>\n<div class=\"sixteen columns\" style=\"color: #3e3830;\">\n\nSend us an email or pick up the phone. Either way, we\'d love to hear from you. Nothing get\'s us fired up more than discussing our client\'s goals and dreams, and how we can help check them off the bucket list.\n\n</div>\n<div class=\"eight columns\" style=\"color: #3e3830;\"></div>\n<!--more-->\n[contact-form-7 id=\"33\" title=\"Contact form 1\"]","Contact us","","inherit","open","open","","10-revision-v1","","","2014-08-29 19:06:40","2014-08-29 19:06:40","","10","SITEURL/?p=92","0","revision","","0");
INSERT INTO coco_posts VALUES("93","1","2014-08-29 19:19:26","2014-08-29 19:19:26","<h3>We\'d Love to Hear From You!</h3>\n<div class=\"sixteen columns\" style=\"color: #3e3830;\">\n\nSend us an email or pick up the phone. Either way, we\'d love to hear from you. Nothing get\'s us fired up more than discussing our client\'s goals and dreams, and how we can help check them off the bucket list.\n\n<span style=\"color: #626053;\">Unit 7 Cumberland Gate</span><br style=\"color: #626053;\" /><span style=\"color: #626053;\">Cumberland Road</span><br style=\"color: #626053;\" /><span style=\"color: #626053;\">Southsea</span><br style=\"color: #626053;\" /><span style=\"color: #626053;\">Hampshire</span><br style=\"color: #626053;\" /><span style=\"color: #626053;\">PO5 1AG</span>\n\n</div>\n<div class=\"eight columns\" style=\"color: #3e3830;\"></div>\n<!--more-->\n[contact-form-7 id=\"33\" title=\"Contact form 1\"]","Contact us","","inherit","open","open","","10-revision-v1","","","2014-08-29 19:19:26","2014-08-29 19:19:26","","10","SITEURL/?p=93","0","revision","","0");
INSERT INTO coco_posts VALUES("94","1","2014-08-29 19:21:08","2014-08-29 19:21:08","ads@fdsa.es\nMi nombre","ads@fdsa.es","","publish","open","open","","ads-fdsa-es","","","2014-08-29 19:21:08","2014-08-29 19:21:08","","0","SITEURL/?post_type=flamingo_contact&p=94","0","flamingo_contact","","0");
INSERT INTO coco_posts VALUES("95","1","2014-08-29 19:21:08","2014-08-29 19:21:08","Mi nombre\nads@fdsa.es\nTesteando\nLet\'s see how this goes.","Testeando","","publish","open","open","","testeando","","","2014-08-29 19:21:08","2014-08-29 19:21:08","","0","SITEURL/?post_type=flamingo_inbound&p=95","0","flamingo_inbound","","0");
INSERT INTO coco_posts VALUES("96","1","2014-08-29 19:25:50","2014-08-29 19:25:50","fds@fds.es\nrrqew","fds@fds.es","","publish","open","open","","fds-fds-es","","","2014-08-29 19:25:50","2014-08-29 19:25:50","","0","SITEURL/?post_type=flamingo_contact&p=96","0","flamingo_contact","","0");
INSERT INTO coco_posts VALUES("97","1","2014-08-29 19:25:51","2014-08-29 19:25:51","rrqew\nfds@fds.es\nfda\nfad","fda","","publish","open","open","","fda","","","2014-08-29 19:25:51","2014-08-29 19:25:51","","0","SITEURL/?post_type=flamingo_inbound&p=97","0","flamingo_inbound","","0");
INSERT INTO coco_posts VALUES("98","1","2014-08-29 20:34:06","2014-08-29 20:34:06","","Slider homepage","","publish","closed","closed","","slider-homepage","","","2014-08-29 21:23:48","2014-08-29 21:23:48","","0","SITEURL/?post_type=slider&#038;p=98","0","slider","","0");
INSERT INTO coco_posts VALUES("108","1","2014-08-30 11:38:14","2014-08-30 11:38:14","","Work fields","","trash","closed","closed","","acf_work-fields","","","2014-12-18 03:08:47","2014-12-18 03:08:47","","0","SITEURL/?post_type=acf&#038;p=108","0","acf","","0");
INSERT INTO coco_posts VALUES("103","1","2014-08-29 21:30:22","2014-08-29 21:30:22"," ","","","publish","open","open","","103","","","2014-12-28 17:46:43","2014-12-28 17:46:43","","0","SITEURL/?p=103","1","nav_menu_item","","0");
INSERT INTO coco_posts VALUES("102","1","2014-08-29 21:30:22","2014-08-29 21:30:22","","Works","","publish","open","open","","works","","","2014-12-28 17:31:58","2014-12-28 17:31:58","","0","SITEURL/?page_id=102","0","page","","0");
INSERT INTO coco_posts VALUES("104","1","2014-08-29 21:30:22","2014-08-29 21:30:22","","Works","","inherit","open","open","","102-revision-v1","","","2014-08-29 21:30:22","2014-08-29 21:30:22","","102","SITEURL/?p=104","0","revision","","0");
INSERT INTO coco_posts VALUES("105","1","2014-08-29 22:41:45","2014-08-29 22:41:45","","Cobianzo Communication","We believe that a smooth and flawless website and a smartly done design help have a better world.","inherit","open","open","","we-are-developers","","","2014-12-28 17:31:57","2014-12-28 17:31:57","","102","SITEURL/wp-content/uploads/we-are-developers.jpg","1","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("110","1","2014-08-30 17:23:52","2014-08-30 17:23:52","","netgig-hero-img","","inherit","open","open","","netgig-hero-img","","","2014-08-30 17:23:52","2014-08-30 17:23:52","","0","SITEURL/wp-content/uploads/netgig-hero-img.jpg","0","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("125","1","2014-12-19 20:11:23","2014-12-19 20:11:23","<h4>Description</h4>\nThis website is an online tool for searching, exploring and comparing maps online about the European Union. This project comprise a database with a large set of maps, stored as hi resolution images, which can be explored with different online tools (lens, zooming), saved into your account, compared with another map side by side and printed.\n\n<span style=\"color: #555555;\">That uploading of the maps�has been delegated to a third party company.</span>\n\nWhen the site was released, back on 2011, we created a simplified mobile version of the site, which remained obsolete as the world of the devices has changed very quickly.\n<h4>Technical Analysis</h4>\nAgain, we chose Wordpress as the current framework to implement the tool. There was a heavy work on javascript and a special enphasis to make this site usable even with browsers with no javascript. We used session variables to save the settings of the user. I.e, if the user choose to explore a map with a lens instead of zooming and panning, then this option is remembered and the next map he visits will be explored with a lens too.\n\nThe exploration of the maps with zoom and pan was made by storing different versions of the map, at different resolutions (created automatically when a map is uploaded). Depending on the level of detail that the user is navigating, we use one or other image, in a similar way as google maps do.","Mapfinder ","Project called �Map Finder�: a web application to storage, search and explore a DB of maps from the ESPON Section of the EU Commission.","inherit","open","open","","124-autosave-v1","","","2014-12-19 20:11:23","2014-12-19 20:11:23","","124","SITEURL/?p=125","0","revision","","0");
INSERT INTO coco_posts VALUES("126","1","2014-12-19 20:15:01","2014-12-19 20:15:01","","mapfinder-hero","","inherit","open","open","","mapfinder-hero","","","2014-12-19 20:15:01","2014-12-19 20:15:01","","0","SITEURL/wp-content/uploads/mapfinder-hero.jpg","0","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("127","1","2014-12-19 20:23:13","2014-12-19 20:23:13","","mapfinder-3-vistas","","inherit","open","open","","mapfinder-3-vistas","","","2014-12-19 20:23:13","2014-12-19 20:23:13","","124","SITEURL/wp-content/uploads/mapfinder-3-vistas.jpg","1","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("128","1","2013-06-19 20:42:05","2013-06-19 20:42:05","<h3>Description</h3>\nThis was our first job for RRonnelley. Since then we made several other cooperations with them, some of them so tiny that we don\'t even include them into our portfolio. In this case, the request was easy: create a blog following the graphic design given by Michael Winter, at RRDonnelley. There were quite a few other specifications to follow and customize, to acoomplish the project in 3 weeks of work.\n\nThis website is intended to be accessed only internally by RRDonnelley, so only their staff has access to the url. In order to allow the visitor (you) to see the job we created a (almost) replica in our own server.\n<h3>Technical Analysis</h3>\nTalking about blogs, we could not choose anything else but Wordpress as the building platform. Most of the required request�were already Wordpress built in features, and the rest were not difficult to implement and customize. An event management with email notifications was implemented, for example. An option to subscribe to a post and get email notifications and an internal communication system were part of the project too.\n\nIn terms of the frontend, this project was our first experience with Twitter Bootstrap. We worked on the Bootstrap 2 version, for faster development and responsive design.\n\nLately we added some small adjustments under demand.","RRDonnelley internal blog","Back into the blogging world, this one is intended to be an internal tool for RRdonnelley employees, to share interesting posts and promote internal communication.","publish","closed","closed","","rrdonnelley-internal-blog","","","2014-12-19 21:06:49","2014-12-19 21:06:49","","0","SITEURL/?post_type=work&#038;p=128","0","work","","0");
INSERT INTO coco_posts VALUES("129","1","2014-12-19 20:51:47","2014-12-19 20:51:47","","blog-rrd-hero","","inherit","open","open","","blog-rrd-hero","","","2014-12-19 20:51:47","2014-12-19 20:51:47","","128","SITEURL/wp-content/uploads/blog-rrd-hero.jpg","0","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("130","1","2014-12-19 21:04:58","2014-12-19 21:04:58","<h3>Description</h3>\nThis was our first job for RRonnelley. Since then we made several other cooperations with them, some of them so tiny that we don\'t even include them into our portfolio. In this case, the request was easy: create a blog following the graphic design given by Michael Winter, at RRDonnelley. There were quite a few other specifications to follow and customize, to acoomplish the project in 3 weeks of work.\n\nThis website is intended to be accessed only internally by RRDonnelley, so only their staff has access to the url. In order to allow the visitor (you) to see the job we created a (almost) replica in our own server.\n<h3>Technical Analysis</h3>\nTalking about blogs, we could not choose anything else but Wordpress as the building platform. Most of the required request�were already Wordpress built in features, and the rest were not difficult to implement and customize. An event management with email notifications was implemented, for example. An option to subscribe to a post and get email notifications and an internal communication system were part of the project too.\n\nIn terms of the frontend, this project was our first experience with Twitter Bootstrap. We worked on the Bootstrap 2 version, for faster development and responsive design.\n\nLately we added some small adjustments under demand.","RRDonnelley internal blog","Back into the blogging world, this one is intended to be an internal tool for RRdonnelley employees, to share interesting posts and promote internal communication.","inherit","open","open","","128-autosave-v1","","","2014-12-19 21:04:58","2014-12-19 21:04:58","","128","SITEURL/?p=130","0","revision","","0");
INSERT INTO coco_posts VALUES("131","1","2013-07-19 22:46:45","2013-07-19 22:46:45","<h3>Description</h3>\n<p style=\"color: #555555;\">Short project: WordPress blog for Willis Ltd.</p>\n<p style=\"color: #555555;\">The layout had to look like�<cite>www.<strong>willisfinex</strong>global.com/</cite>? , to simulate an integrated blog, so we developed the frontend the closest that I could in a 2 days work, creating the templates and customizing the backend options for the administrators.</p>\n\n<h3 style=\"color: #555555;\">Technical Analysis</h3>\n<p style=\"color: #555555;\">To make a�responsive site was not a requirement, but we developed it with bootstrapto work faster and make it responsive anyway. This project was more about the frontend development, as the Wordpress options by default fulfilled already the client requirements.</p>","Finex Global Blog","Short project: WordPress blog for Willis Ltd.\n","publish","closed","closed","","finex-global-blog","","","2014-12-19 23:05:57","2014-12-19 23:05:57","","0","SITEURL/?post_type=work&#038;p=131","0","work","","0");
INSERT INTO coco_posts VALUES("132","1","2014-12-19 23:00:08","2014-12-19 23:00:08","","willis-blog-finex.hero","","inherit","open","open","","willis-blog-finex-hero","","","2014-12-19 23:00:08","2014-12-19 23:00:08","","131","SITEURL/wp-content/uploads/willis-blog-finex.hero_.jpg","0","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("133","1","2012-06-20 00:29:35","2012-06-20 00:29:35","<h3>Description</h3>\n<p style=\"color: #555555;\">This project (called \'<em>One Team, One Vision</em>\') consisted in a blog and communication tool for <strong>Hitachi Ltd</strong>, . The work was actually made for <strong>The Liquid Way</strong> Ltd in London, who had Hitachi as the final client, in�<span style=\"color: #222222;\">Maidenhead, Berkshire (UK).</span></p>\n<p style=\"color: #555555;\">This blog was developed for the internal community of employees at Hitachi Ltd. That is why the website is not public and from here you can only visit a demo of this application.</p>\n<p style=\"color: #555555;\">The blog had a set of particular features and sections. The main one was about creating an area where registered users can post a question to an expert, who was able to answer to it in an open board.</p>\n<p style=\"color: #555555;\">Other sections consisted on a forum, news area and blog.</p>\n\n<h3 style=\"color: #555555;\">Technical Analysis</h3>\n<p style=\"color: #555555;\">We developed this project in Wordpress, using the plugin�bbpress to handle the forum. In order to work quickly but efficiently (both were requested :) ) we adapted the Wordpress comments feature and tweak it to�work on the section Answer the Expert.</p>\n<p style=\"color: #555555;\">Additional tasks were carried on in order to ensure the security of the site, as it is intended to be accessible only by the employees of Hitachi.</p>\n<p style=\"color: #555555;\">From the frontend point of view, we worked on improving the user experierence by adding some Ajax features which allowed�to modify or delete your own questions without reloading the page. Lastly, some nice jQuery effects were implemented for the slideshow on the homepage.</p>","Hitachi internal communication tool","This project consisted in a blog and communication tool for Hitachi Ltd, . The work was actually made for The Liquid Way Ltd in London, who had Hitachi as the final client, in Maidenhead, Berkshire (UK).","publish","closed","closed","","hitachi-internal-communication-tool","","","2014-12-20 00:35:00","2014-12-20 00:35:00","","0","SITEURL/?post_type=work&#038;p=133","0","work","","0");
INSERT INTO coco_posts VALUES("134","1","2014-12-20 00:34:45","2014-12-20 00:34:45","","hace-hero","","inherit","open","open","","hace-hero","","","2014-12-20 00:34:45","2014-12-20 00:34:45","","133","SITEURL/wp-content/uploads/hace-hero.jpg","0","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("135","1","2014-06-20 00:38:07","2014-06-20 00:38:07","<h4>Description</h4>\nM� Dolores Arroyo is one of our customers from the city of Le�n, Spain. She represents one of the most renowned lawyer\'s office in the region, with two open offices.\n\nWe had to adapt a small budget to optimize the results of our work, as the Spanish rates are moving into�low levels these years. We have to say that we really fullfilled the initial compromise within very reasonable expenses.\n\nOur task was to give a branding service to this lawyer\'s office, including a coportative identity, website, promotion and presentation cards. The main idea was to support with a professional image�the already celebrated reputation of this lawyer.\n<h4>Technical analysis</h4>\nFor the website we moved into a professional alredy-built template, getting our photographer in site to take the pictures, and a deep interview with the final client to understand the aim of her work, so we could express it into the website.\n\n&nbsp;","M� Dolores Arroyo lawyer branding project","M� Dolores Arroyo is one of our customers from the city of Le�n, Spain. She represents one of the most renowned lawyer\'s office in the region, with two open offices.\n","publish","closed","closed","","ma-dolores-arroyo-lawyer-branding-project","","","2014-12-20 00:57:58","2014-12-20 00:57:58","","0","SITEURL/?post_type=work&#038;p=135","0","work","","0");
INSERT INTO coco_posts VALUES("136","1","2014-12-20 00:56:54","2014-12-20 00:56:54","","mdarroyo-hero","","inherit","open","open","","mdarroyo-hero","","","2014-12-20 00:56:54","2014-12-20 00:56:54","","135","SITEURL/wp-content/uploads/mdarroyo-hero.jpg","0","attachment","image/jpeg","0");
INSERT INTO coco_posts VALUES("137","1","2014-12-28 17:18:12","0000-00-00 00:00:00","","Auto Draft","","auto-draft","open","open","","","","","2014-12-28 17:18:12","0000-00-00 00:00:00","","0","SITEURL/?p=137","0","post","","0");



DROP TABLE coco_term_relationships;

CREATE TABLE `coco_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO coco_term_relationships VALUES("1","1","0");
INSERT INTO coco_term_relationships VALUES("13","2","0");
INSERT INTO coco_term_relationships VALUES("16","2","0");
INSERT INTO coco_term_relationships VALUES("14","2","0");
INSERT INTO coco_term_relationships VALUES("18","6","0");
INSERT INTO coco_term_relationships VALUES("18","3","0");
INSERT INTO coco_term_relationships VALUES("20","6","0");
INSERT INTO coco_term_relationships VALUES("20","3","0");
INSERT INTO coco_term_relationships VALUES("21","6","0");
INSERT INTO coco_term_relationships VALUES("21","3","0");
INSERT INTO coco_term_relationships VALUES("22","6","0");
INSERT INTO coco_term_relationships VALUES("22","3","0");
INSERT INTO coco_term_relationships VALUES("23","6","0");
INSERT INTO coco_term_relationships VALUES("23","3","0");
INSERT INTO coco_term_relationships VALUES("49","2","0");
INSERT INTO coco_term_relationships VALUES("97","12","0");
INSERT INTO coco_term_relationships VALUES("95","12","0");
INSERT INTO coco_term_relationships VALUES("40","7","0");
INSERT INTO coco_term_relationships VALUES("41","7","0");
INSERT INTO coco_term_relationships VALUES("42","7","0");
INSERT INTO coco_term_relationships VALUES("112","14","0");
INSERT INTO coco_term_relationships VALUES("50","8","0");
INSERT INTO coco_term_relationships VALUES("50","9","0");
INSERT INTO coco_term_relationships VALUES("50","10","0");
INSERT INTO coco_term_relationships VALUES("50","3","0");
INSERT INTO coco_term_relationships VALUES("103","7","0");
INSERT INTO coco_term_relationships VALUES("50","13","0");
INSERT INTO coco_term_relationships VALUES("112","8","0");
INSERT INTO coco_term_relationships VALUES("112","15","0");
INSERT INTO coco_term_relationships VALUES("112","3","0");
INSERT INTO coco_term_relationships VALUES("118","16","0");
INSERT INTO coco_term_relationships VALUES("118","3","0");
INSERT INTO coco_term_relationships VALUES("122","8","0");
INSERT INTO coco_term_relationships VALUES("122","17","0");
INSERT INTO coco_term_relationships VALUES("122","18","0");
INSERT INTO coco_term_relationships VALUES("122","19","0");
INSERT INTO coco_term_relationships VALUES("122","3","0");
INSERT INTO coco_term_relationships VALUES("124","3","0");
INSERT INTO coco_term_relationships VALUES("124","20","0");
INSERT INTO coco_term_relationships VALUES("124","21","0");
INSERT INTO coco_term_relationships VALUES("124","22","0");
INSERT INTO coco_term_relationships VALUES("124","8","0");
INSERT INTO coco_term_relationships VALUES("124","23","0");
INSERT INTO coco_term_relationships VALUES("128","8","0");
INSERT INTO coco_term_relationships VALUES("128","24","0");
INSERT INTO coco_term_relationships VALUES("128","25","0");
INSERT INTO coco_term_relationships VALUES("128","26","0");
INSERT INTO coco_term_relationships VALUES("128","3","0");
INSERT INTO coco_term_relationships VALUES("131","8","0");
INSERT INTO coco_term_relationships VALUES("131","24","0");
INSERT INTO coco_term_relationships VALUES("131","27","0");
INSERT INTO coco_term_relationships VALUES("131","3","0");
INSERT INTO coco_term_relationships VALUES("133","8","0");
INSERT INTO coco_term_relationships VALUES("133","28","0");
INSERT INTO coco_term_relationships VALUES("133","26","0");
INSERT INTO coco_term_relationships VALUES("133","24","0");
INSERT INTO coco_term_relationships VALUES("133","3","0");
INSERT INTO coco_term_relationships VALUES("135","29","0");
INSERT INTO coco_term_relationships VALUES("135","30","0");
INSERT INTO coco_term_relationships VALUES("135","31","0");
INSERT INTO coco_term_relationships VALUES("135","32","0");
INSERT INTO coco_term_relationships VALUES("135","4","0");
INSERT INTO coco_term_relationships VALUES("135","5","0");
INSERT INTO coco_term_relationships VALUES("135","3","0");



DROP TABLE coco_term_taxonomy;

CREATE TABLE `coco_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

INSERT INTO coco_term_taxonomy VALUES("1","1","category","","0","1");
INSERT INTO coco_term_taxonomy VALUES("2","2","nav_menu","","0","4");
INSERT INTO coco_term_taxonomy VALUES("3","3","work_category","","0","9");
INSERT INTO coco_term_taxonomy VALUES("4","4","work_category","","0","1");
INSERT INTO coco_term_taxonomy VALUES("5","5","work_category","","0","1");
INSERT INTO coco_term_taxonomy VALUES("6","6","post_tag","","0","0");
INSERT INTO coco_term_taxonomy VALUES("7","7","nav_menu","","0","4");
INSERT INTO coco_term_taxonomy VALUES("8","8","post_tag","","0","7");
INSERT INTO coco_term_taxonomy VALUES("9","9","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("10","10","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("11","11","flamingo_inbound_channel","","0","0");
INSERT INTO coco_term_taxonomy VALUES("12","12","flamingo_inbound_channel","","11","2");
INSERT INTO coco_term_taxonomy VALUES("13","13","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("14","14","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("15","15","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("16","16","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("17","17","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("18","18","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("19","19","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("20","20","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("21","21","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("22","22","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("23","23","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("24","24","post_tag","","0","3");
INSERT INTO coco_term_taxonomy VALUES("25","25","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("26","26","post_tag","","0","2");
INSERT INTO coco_term_taxonomy VALUES("27","27","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("28","28","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("29","29","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("30","30","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("31","31","post_tag","","0","1");
INSERT INTO coco_term_taxonomy VALUES("32","32","post_tag","","0","1");



DROP TABLE coco_terms;

CREATE TABLE `coco_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `name` (`name`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

INSERT INTO coco_terms VALUES("1","Uncategorized","uncategorized","0");
INSERT INTO coco_terms VALUES("2","Top Menu","top-menu","0");
INSERT INTO coco_terms VALUES("3","Web","web","0");
INSERT INTO coco_terms VALUES("4","Branding","branding","0");
INSERT INTO coco_terms VALUES("5","Print","print","0");
INSERT INTO coco_terms VALUES("6","music","music","0");
INSERT INTO coco_terms VALUES("7","Footer menu","footer-menu","0");
INSERT INTO coco_terms VALUES("8","wordpress","wordpress","0");
INSERT INTO coco_terms VALUES("9","e-commerce","e-commerce","0");
INSERT INTO coco_terms VALUES("10","entertaiment","entertaiment","0");
INSERT INTO coco_terms VALUES("11","Contact Form 7","contact-form-7","0");
INSERT INTO coco_terms VALUES("12","Contact form 1","contact-form-1","0");
INSERT INTO coco_terms VALUES("13","responsive","responsive","0");
INSERT INTO coco_terms VALUES("14","ASP","asp","0");
INSERT INTO coco_terms VALUES("15","Flash","flash","0");
INSERT INTO coco_terms VALUES("16","charity","charity","0");
INSERT INTO coco_terms VALUES("17","export","export","0");
INSERT INTO coco_terms VALUES("18","app","app","0");
INSERT INTO coco_terms VALUES("19","food","food","0");
INSERT INTO coco_terms VALUES("20","maps","maps","0");
INSERT INTO coco_terms VALUES("21","explore","explore","0");
INSERT INTO coco_terms VALUES("22","online tool","online-tool","0");
INSERT INTO coco_terms VALUES("23","europe","europe","0");
INSERT INTO coco_terms VALUES("24","blog","blog","0");
INSERT INTO coco_terms VALUES("25","internal","internal","0");
INSERT INTO coco_terms VALUES("26","tool","tool","0");
INSERT INTO coco_terms VALUES("27","frontend","frontend","0");
INSERT INTO coco_terms VALUES("28","bbpress","bbpress","0");
INSERT INTO coco_terms VALUES("29","lowyer","lowyer","0");
INSERT INTO coco_terms VALUES("30","website","website","0");
INSERT INTO coco_terms VALUES("31","cards","cards","0");
INSERT INTO coco_terms VALUES("32","promotion","promotion","0");



DROP TABLE coco_usermeta;

CREATE TABLE `coco_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

INSERT INTO coco_usermeta VALUES("1","1","first_name","");
INSERT INTO coco_usermeta VALUES("2","1","last_name","");
INSERT INTO coco_usermeta VALUES("3","1","nickname","cobianzo");
INSERT INTO coco_usermeta VALUES("4","1","description","");
INSERT INTO coco_usermeta VALUES("5","1","rich_editing","true");
INSERT INTO coco_usermeta VALUES("6","1","comment_shortcuts","false");
INSERT INTO coco_usermeta VALUES("7","1","admin_color","fresh");
INSERT INTO coco_usermeta VALUES("8","1","use_ssl","0");
INSERT INTO coco_usermeta VALUES("9","1","show_admin_bar_front","true");
INSERT INTO coco_usermeta VALUES("10","1","coco_capabilities","a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO coco_usermeta VALUES("11","1","coco_user_level","10");
INSERT INTO coco_usermeta VALUES("12","1","dismissed_wp_pointers","wp350_media,wp360_revisions,wp360_locks,wp390_widgets,wp410_dfw");
INSERT INTO coco_usermeta VALUES("13","1","show_welcome_panel","1");
INSERT INTO coco_usermeta VALUES("14","1","coco_dashboard_quick_press_last_post_id","137");
INSERT INTO coco_usermeta VALUES("15","1","managenav-menuscolumnshidden","a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}");
INSERT INTO coco_usermeta VALUES("16","1","metaboxhidden_nav-menus","a:3:{i:0;s:8:\"add-post\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}");
INSERT INTO coco_usermeta VALUES("17","1","coco_user-settings","hidetb=1&libraryContent=browse&editor=tinymce&urlbutton=none&imgsize=full&ed_size=518&advImgDetails=show&align=center");
INSERT INTO coco_usermeta VALUES("18","1","coco_user-settings-time","1418871020");
INSERT INTO coco_usermeta VALUES("19","1","nav_menu_recently_edited","2");
INSERT INTO coco_usermeta VALUES("20","1","closedpostboxes_page","a:0:{}");
INSERT INTO coco_usermeta VALUES("21","1","metaboxhidden_page","a:4:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:9:\"authordiv\";}");
INSERT INTO coco_usermeta VALUES("22","1","session_tokens","a:1:{s:64:\"0eb0465dbf09d3731bd1dc15c5c7a3b8b96fe39fb47ffeb94017b1e342fd97e4\";a:4:{s:10:\"expiration\";i:1419959890;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\";s:5:\"login\";i:1419787090;}}");



DROP TABLE coco_users;

CREATE TABLE `coco_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO coco_users VALUES("1","cobianzo","$P$B3KgK5wtqJKFOtwvUmPaKOKQGbiM11.","cobianzo","cobianzo@cobianzo.com","","2014-08-25 16:18:56","","0","cobianzo");



