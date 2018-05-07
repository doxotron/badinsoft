-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2018 at 04:33 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `badinsoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-02 14:49:32', '2018-04-02 14:49:32', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_image_storage`
--

CREATE TABLE `wp_nextend2_image_storage` (
  `id` int(11) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `image` text NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_section_storage`
--

CREATE TABLE `wp_nextend2_section_storage` (
  `id` int(11) NOT NULL,
  `application` varchar(20) NOT NULL,
  `section` varchar(128) NOT NULL,
  `referencekey` varchar(128) NOT NULL,
  `value` mediumtext NOT NULL,
  `system` int(11) NOT NULL DEFAULT '0',
  `editable` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_section_storage`
--

INSERT INTO `wp_nextend2_section_storage` (`id`, `application`, `section`, `referencekey`, `value`, `system`, `editable`) VALUES
(10000, 'system', 'global', 'n2_ss3_version', '3.2.13', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_generators`
--

CREATE TABLE `wp_nextend2_smartslider3_generators` (
  `id` int(11) NOT NULL,
  `group` varchar(254) NOT NULL,
  `type` varchar(254) NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `params` mediumtext NOT NULL,
  `time` datetime NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders`
--

INSERT INTO `wp_nextend2_smartslider3_sliders` (`id`, `alias`, `title`, `type`, `params`, `time`, `thumbnail`, `ordering`) VALUES
(1, NULL, 'Sample Slider', 'simple', '{"controlsScroll":"0","controlsDrag":"1","controlsTouch":"horizontal","controlsKeyboard":"1","controlsTilt":"0","thumbnail":"","align":"normal","backgroundMode":"fill","animation":"horizontal","animation-duration":"600","animation-delay":"0","animation-easing":"easeOutQuad","animation-parallax":"1","background-animation":"","background-animation-speed":"normal","animation-shifted-background-animation":"auto","kenburns-animation":"50|*|50|*|","kenburns-animation-speed":"default","kenburns-animation-strength":"default","carousel":"1","background":"","background-fixed":"0","background-size":"cover","backgroundVideoMp4":"","backgroundVideoMuted":"1","backgroundVideoLoop":"1","backgroundVideoMode":"fill","dynamic-height":"0","loop-single-slide":"0","padding":"0|*|0|*|0|*|0","border-width":"0","border-color":"3E3E3Eff","border-radius":"0","slider-preset":"","slider-css":"","slide-css":"","width":"1200","height":"600","desktop-portrait-minimum-font-size":"1","desktop-landscape":"0","desktop-landscape-width":"1440","desktop-landscape-height":"0","desktop-landscape-minimum-font-size":"1","fontsize":"16","desktop":"1","tablet":"1","mobile":"1","margin":"0|*|0|*|0|*|0","tablet-portrait":"0","tablet-portrait-width":"800","tablet-portrait-height":"0","tablet-portrait-minimum-font-size":"1","tablet-landscape":"0","tablet-landscape-width":"1024","tablet-landscape-height":"0","tablet-landscape-minimum-font-size":"1","mobile-portrait":"0","mobile-portrait-width":"440","mobile-portrait-height":"0","mobile-portrait-minimum-font-size":"1","mobile-landscape":"0","mobile-landscape-width":"740","mobile-landscape-height":"0","mobile-landscape-minimum-font-size":"1","responsive-mode":"auto","responsiveScaleDown":"1","responsiveScaleUp":"1","responsiveSliderHeightMin":"0","responsiveSliderHeightMax":"3000","responsiveSlideWidthMax":"3000","autoplay":"1","autoplayDuration":"8000","autoplayStart":"1","autoplayfinish":"0|*|loop|*|current","autoplayAllowReStart":"0","autoplayStopClick":"1","autoplayStopMouse":"0","autoplayStopMedia":"1","autoplayResumeClick":"0","autoplayResumeMouse":"0","autoplayResumeMedia":"1","playfirstlayer":"1","playonce":"0","layer-animation-play-in":"end","layer-animation-play-mode":"skippable","parallax-enabled":"1","parallax-enabled-mobile":"0","parallax-3d":"0","parallax-animate":"1","parallax-horizontal":"mouse","parallax-vertical":"mouse","parallax-mouse-origin":"slider","parallax-scroll-move":"both","perspective":"1000","imageload":"0","imageloadNeighborSlides":"0","optimize":"0","optimize-quality":"70","optimize-background-image-custom":"0","optimize-background-image-width":"800","optimize-background-image-height":"600","optimizeThumbnailWidth":"100","optimizeThumbnailHeight":"60","layer-image-optimize":"0","layer-image-tablet":"50","layer-image-mobile":"30","layer-image-base64":"0","layer-image-base64-size":"5","playWhenVisible":"1","fadeOnLoad":"1","fadeOnScroll":"0","spinner":"simpleWhite","custom-spinner":"","custom-spinner-width":"100","custom-spinner-height":"100","custom-display":"1","dependency":"","delay":"0","is-delayed":"0","randomize":"0","randomizeFirst":"0","randomize-cache":"1","variations":"5","maximumslidecount":"1000","global-lightbox":"0","global-lightbox-label":"0","maintain-session":"0","blockrightclick":"0","overflow-hidden-page":"0","scroll-fix":"0","bg-parallax-tablet":"1","bg-parallax-mobile":"1","callbacks":"","widgetarrow":"imageEmpty","widget-arrow-display-desktop":"1","widget-arrow-display-tablet":"1","widget-arrow-display-mobile":"1","widget-arrow-exclude-slides":"","widget-arrow-display-hover":"0","widget-arrow-responsive-desktop":"1","widget-arrow-responsive-tablet":"0.7","widget-arrow-responsive-mobile":"0.5","widget-arrow-previous-image":"","widget-arrow-previous":"$ss$/plugins/widgetarrow/image/image/previous/thin-horizontal.svg","widget-arrow-previous-color":"ffffffcc","widget-arrow-previous-hover":"0","widget-arrow-previous-hover-color":"ffffffcc","widget-arrow-style":"","widget-arrow-previous-position-mode":"simple","widget-arrow-previous-position-area":"6","widget-arrow-previous-position-stack":"1","widget-arrow-previous-position-offset":"15","widget-arrow-previous-position-horizontal":"left","widget-arrow-previous-position-horizontal-position":"0","widget-arrow-previous-position-horizontal-unit":"px","widget-arrow-previous-position-vertical":"top","widget-arrow-previous-position-vertical-position":"0","widget-arrow-previous-position-vertical-unit":"px","widget-arrow-next-position-mode":"simple","widget-arrow-next-position-area":"7","widget-arrow-next-position-stack":"1","widget-arrow-next-position-offset":"15","widget-arrow-next-position-horizontal":"left","widget-arrow-next-position-horizontal-position":"0","widget-arrow-next-position-horizontal-unit":"px","widget-arrow-next-position-vertical":"top","widget-arrow-next-position-vertical-position":"0","widget-arrow-next-position-vertical-unit":"px","widget-arrow-animation":"fade","widget-arrow-mirror":"1","widget-arrow-next-image":"","widget-arrow-next":"$ss$/plugins/widgetarrow/image/image/next/thin-horizontal.svg","widget-arrow-next-color":"ffffffcc","widget-arrow-next-hover":"0","widget-arrow-next-hover-color":"ffffffcc","widgetbullet":"transition","widget-bullet-display-desktop":"1","widget-bullet-display-tablet":"1","widget-bullet-display-mobile":"1","widget-bullet-exclude-slides":"","widget-bullet-display-hover":"0","widget-bullet-thumbnail-show-image":"1","widget-bullet-thumbnail-width":"120","widget-bullet-thumbnail-height":"81","widget-bullet-thumbnail-style":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDsifV19","widget-bullet-thumbnail-side":"before","widget-bullet-position-mode":"simple","widget-bullet-position-area":"12","widget-bullet-position-stack":"1","widget-bullet-position-offset":"10","widget-bullet-position-horizontal":"left","widget-bullet-position-horizontal-position":"0","widget-bullet-position-horizontal-unit":"px","widget-bullet-position-vertical":"top","widget-bullet-position-vertical-position":"0","widget-bullet-position-vertical-unit":"px","widget-bullet-action":"click","widget-bullet-style":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwYWIiLCJwYWRkaW5nIjoiNXwqfDV8Knw1fCp8NXwqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiI1MCIsImV4dHJhIjoibWFyZ2luOiA0cHg7In0seyJleHRyYSI6IiIsImJhY2tncm91bmRjb2xvciI6IjA5YjQ3NGZmIn1dfQ==","widget-bullet-bar":"","widget-bullet-bar-full-size":"0","widget-bullet-align":"center","widget-bullet-orientation":"auto","widget-bullet-overlay":"0","widgetautoplay":"disabled","widget-autoplay-display-desktop":"1","widget-autoplay-display-tablet":"1","widget-autoplay-display-mobile":"1","widget-autoplay-exclude-slides":"","widget-autoplay-display-hover":"0","widgetindicator":"disabled","widget-indicator-display-desktop":"1","widget-indicator-display-tablet":"1","widget-indicator-display-mobile":"1","widget-indicator-exclude-slides":"","widget-indicator-display-hover":"0","widgetbar":"disabled","widget-bar-display-desktop":"1","widget-bar-display-tablet":"1","widget-bar-display-mobile":"1","widget-bar-exclude-slides":"","widget-bar-display-hover":"0","widgetthumbnail":"disabled","widget-thumbnail-display-desktop":"1","widget-thumbnail-display-tablet":"1","widget-thumbnail-display-mobile":"1","widget-thumbnail-exclude-slides":"","widget-thumbnail-display-hover":"0","widget-thumbnail-show-image":"1","widget-thumbnail-width":"100","widget-thumbnail-height":"60","widgetshadow":"disabled","widget-shadow-display-desktop":"1","widget-shadow-display-tablet":"1","widget-shadow-display-mobile":"1","widget-shadow-exclude-slides":"","widgetfullscreen":"disabled","widget-fullscreen-display-desktop":"1","widget-fullscreen-display-tablet":"1","widget-fullscreen-display-mobile":"1","widget-fullscreen-exclude-slides":"","widget-fullscreen-display-hover":"0","widgethtml":"disabled","widget-html-display-desktop":"1","widget-html-display-tablet":"1","widget-html-display-mobile":"1","widget-html-exclude-slides":"","widget-html-display-hover":"0","widgets":"arrow"}', '2015-11-01 14:14:20', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders_xref`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders_xref` (
  `group_id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_slides`
--

CREATE TABLE `wp_nextend2_smartslider3_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slider` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `first` int(11) NOT NULL,
  `slide` longtext,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_slides`
--

INSERT INTO `wp_nextend2_smartslider3_slides` (`id`, `title`, `slider`, `publish_up`, `publish_down`, `published`, `first`, `slide`, `description`, `thumbnail`, `params`, `ordering`, `generator_id`) VALUES
(1, 'Slide One', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{"type":"content","animations":"","desktopportraitfontsize":100,"desktopportraitmaxwidth":0,"desktopportraitinneralign":"inherit","desktopportraitpadding":"10|*|10|*|10|*|10|*|px+","desktopportraitselfalign":"inherit","mobileportraitfontsize":60,"opened":1,"id":null,"class":"","crop":"","parallax":0,"adaptivefont":1,"mouseenter":"","click":"","mouseleave":"","play":"","pause":"","stop":"","generatorvisible":"","desktopportrait":1,"desktoplandscape":1,"tabletportrait":1,"tabletlandscape":1,"mobileportrait":1,"mobilelandscape":1,"name":"Content","namesynced":1,"bgimage":"","bgimagex":50,"bgimagey":50,"bgimageparallax":0,"bgcolor":"00000000","bgcolorgradient":"off","bgcolorgradientend":"00000000","verticalalign":"center","layers":[{"type":"layer","animations":"","desktopportraitfontsize":100,"desktopportraitmargin":"10|*|0|*|10|*|0|*|px+","desktopportraitheight":0,"desktopportraitmaxwidth":0,"desktopportraitselfalign":"inherit","id":null,"class":"","crop":"visible","parallax":0,"adaptivefont":0,"mouseenter":"","click":"","mouseleave":"","play":"","pause":"","stop":"","generatorvisible":"","desktopportrait":1,"desktoplandscape":1,"tabletportrait":1,"tabletlandscape":1,"mobileportrait":1,"mobilelandscape":1,"name":"Martin Dwyer","namesynced":1,"item":{"type":"heading","values":{"heading":"Martin Dwyer","link":"#|*|_self","priority":"2","fullwidth":"0","nowrap":"0","title":"","font":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==","style":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==","split-text-animation-in":"","split-text-delay-in":"0","split-text-animation-out":"","split-text-delay-out":"0","split-text-backface-visibility":"1","split-text-transform-origin":"50|*|50|*|0","class":""}}},{"type":"layer","animations":"","desktopportraitfontsize":100,"desktopportraitmargin":"0|*|0|*|0|*|0|*|px+","desktopportraitheight":0,"desktopportraitmaxwidth":0,"desktopportraitselfalign":"inherit","id":null,"class":"","crop":"visible","parallax":0,"adaptivefont":0,"mouseenter":"","click":"","mouseleave":"","play":"","pause":"","stop":"","generatorvisible":"","desktopportrait":1,"desktoplandscape":1,"tabletportrait":1,"tabletlandscape":1,"mobileportrait":1,"mobilelandscape":1,"name":"Application Developer","namesynced":1,"item":{"type":"heading","values":{"heading":"Application Developer","link":"#|*|_self","priority":"2","fullwidth":"0","nowrap":"1","title":"","font":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=","style":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=","split-text-animation-in":"","split-text-delay-in":"0","split-text-animation-out":"","split-text-delay-out":"0","split-text-backface-visibility":"1","split-text-transform-origin":"50|*|50|*|0","class":""}}}]}]', '', 'https://smartslider3.com/sample/developerthumbnail.jpg', '{"background-type":"image","backgroundVideoMp4":"","backgroundVideoMuted":"1","backgroundVideoLoop":"1","preload":"auto","backgroundVideoMode":"fill","backgroundImage":"https://smartslider3.com/sample/programmer.jpg","backgroundFocusX":"50","backgroundFocusY":"50","backgroundImageOpacity":"100","backgroundImageBlur":"0","backgroundAlt":"","backgroundTitle":"","backgroundColor":"ffffff00","backgroundGradient":"off","backgroundColorEnd":"ffffff00","backgroundMode":"default","background-animation":"","background-animation-speed":"default","kenburns-animation":"50|*|50|*|","kenburns-animation-speed":"default","kenburns-animation-strength":"default","thumbnailType":"default","link":"|*|_self","guides":"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==","first":"0","static-slide":"0","slide-duration":"0","version":"3.2.0"}', 0, 0),
(2, 'Slide Two', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{"type":"content","animations":"","desktopportraitfontsize":100,"desktopportraitmaxwidth":0,"desktopportraitinneralign":"inherit","desktopportraitpadding":"10|*|10|*|10|*|10|*|px+","desktopportraitselfalign":"inherit","mobileportraitfontsize":60,"opened":1,"id":null,"class":"","crop":"","parallax":0,"adaptivefont":1,"mouseenter":"","click":"","mouseleave":"","play":"","pause":"","stop":"","generatorvisible":"","desktopportrait":1,"desktoplandscape":1,"tabletportrait":1,"tabletlandscape":1,"mobileportrait":1,"mobilelandscape":1,"name":"Content","namesynced":1,"bgimage":"","bgimagex":50,"bgimagey":50,"bgimageparallax":0,"bgcolor":"00000000","bgcolorgradient":"off","bgcolorgradientend":"00000000","verticalalign":"center","layers":[{"type":"layer","animations":"","desktopportraitfontsize":100,"desktopportraitmargin":"10|*|0|*|10|*|0|*|px+","desktopportraitheight":0,"desktopportraitmaxwidth":0,"desktopportraitselfalign":"inherit","id":null,"class":"","crop":"visible","parallax":0,"adaptivefont":0,"mouseenter":"","click":"","mouseleave":"","play":"","pause":"","stop":"","generatorvisible":"","desktopportrait":1,"desktoplandscape":1,"tabletportrait":1,"tabletlandscape":1,"mobileportrait":1,"mobilelandscape":1,"name":"Rachel Wright","namesynced":1,"item":{"type":"heading","values":{"heading":"Rachel Wright","link":"#|*|_self","priority":"2","fullwidth":"0","nowrap":"0","title":"","font":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==","style":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==","split-text-animation-in":"","split-text-delay-in":"0","split-text-animation-out":"","split-text-delay-out":"0","split-text-backface-visibility":"1","split-text-transform-origin":"50|*|50|*|0","class":""}}},{"type":"layer","animations":"","desktopportraitfontsize":100,"desktopportraitmargin":"0|*|0|*|0|*|0|*|px+","desktopportraitheight":0,"desktopportraitmaxwidth":0,"desktopportraitselfalign":"inherit","id":null,"class":"","crop":"visible","parallax":0,"adaptivefont":0,"mouseenter":"","click":"","mouseleave":"","play":"","pause":"","stop":"","generatorvisible":"","desktopportrait":1,"desktoplandscape":1,"tabletportrait":1,"tabletlandscape":1,"mobileportrait":1,"mobilelandscape":1,"name":"Art Director & Photographer","namesynced":1,"item":{"type":"heading","values":{"heading":"Art Director & Photographer","link":"#|*|_self","priority":"2","fullwidth":"0","nowrap":"1","title":"","font":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=","style":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=","split-text-animation-in":"","split-text-delay-in":"0","split-text-animation-out":"","split-text-delay-out":"0","split-text-backface-visibility":"1","split-text-transform-origin":"50|*|50|*|0","class":""}}}]}]', '', 'https://smartslider3.com/sample/artdirectorthumbnail.jpg', '{"background-type":"image","backgroundVideoMp4":"","backgroundVideoMuted":"1","backgroundVideoLoop":"1","preload":"auto","backgroundVideoMode":"fill","backgroundImage":"https://smartslider3.com/sample/free1.jpg","backgroundFocusX":"50","backgroundFocusY":"50","backgroundImageOpacity":"100","backgroundImageBlur":"0","backgroundAlt":"","backgroundTitle":"","backgroundColor":"ffffff00","backgroundGradient":"off","backgroundColorEnd":"ffffff00","backgroundMode":"default","background-animation":"","background-animation-speed":"default","kenburns-animation":"50|*|50|*|","kenburns-animation-speed":"default","kenburns-animation-strength":"default","thumbnailType":"default","link":"|*|_self","guides":"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==","first":"0","static-slide":"0","slide-duration":"0","version":"3.2.0"}', 1, 0),
(3, 'Slide Three', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{"type":"content","animations":"","desktopportraitfontsize":100,"desktopportraitmaxwidth":0,"desktopportraitinneralign":"inherit","desktopportraitpadding":"10|*|10|*|10|*|10|*|px+","desktopportraitselfalign":"inherit","mobileportraitfontsize":60,"opened":1,"id":null,"class":"","crop":"","parallax":0,"adaptivefont":1,"mouseenter":"","click":"","mouseleave":"","play":"","pause":"","stop":"","generatorvisible":"","desktopportrait":1,"desktoplandscape":1,"tabletportrait":1,"tabletlandscape":1,"mobileportrait":1,"mobilelandscape":1,"name":"Content","namesynced":1,"bgimage":"","bgimagex":50,"bgimagey":50,"bgimageparallax":0,"bgcolor":"00000000","bgcolorgradient":"off","bgcolorgradientend":"00000000","verticalalign":"center","layers":[{"type":"layer","animations":"","desktopportraitfontsize":100,"desktopportraitmargin":"10|*|0|*|10|*|0|*|px+","desktopportraitheight":0,"desktopportraitmaxwidth":0,"desktopportraitselfalign":"inherit","id":null,"class":"","crop":"visible","parallax":0,"adaptivefont":0,"mouseenter":"","click":"","mouseleave":"","play":"","pause":"","stop":"","generatorvisible":"","desktopportrait":1,"desktoplandscape":1,"tabletportrait":1,"tabletlandscape":1,"mobileportrait":1,"mobilelandscape":1,"name":"Andrew Butler","namesynced":1,"item":{"type":"heading","values":{"heading":"Andrew Butler","link":"#|*|_self","priority":"2","fullwidth":"0","nowrap":"0","title":"","font":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==","style":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==","split-text-animation-in":"","split-text-delay-in":"0","split-text-animation-out":"","split-text-delay-out":"0","split-text-backface-visibility":"1","split-text-transform-origin":"50|*|50|*|0","class":""}}},{"type":"layer","animations":"","desktopportraitfontsize":100,"desktopportraitmargin":"0|*|0|*|0|*|0|*|px+","desktopportraitheight":0,"desktopportraitmaxwidth":0,"desktopportraitselfalign":"inherit","id":null,"class":"","crop":"visible","parallax":0,"adaptivefont":0,"mouseenter":"","click":"","mouseleave":"","play":"","pause":"","stop":"","generatorvisible":"","desktopportrait":1,"desktoplandscape":1,"tabletportrait":1,"tabletlandscape":1,"mobileportrait":1,"mobilelandscape":1,"name":"Photographer & Illustrator","namesynced":1,"item":{"type":"heading","values":{"heading":"Photographer & Illustrator","link":"#|*|_self","priority":"2","fullwidth":"0","nowrap":"0","title":"","font":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=","style":"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=","split-text-animation-in":"","split-text-delay-in":"0","split-text-animation-out":"","split-text-delay-out":"0","split-text-backface-visibility":"1","split-text-transform-origin":"50|*|50|*|0","class":""}}}]}]', '', 'https://smartslider3.com/sample/photographerthumbnail.jpg', '{"background-type":"image","backgroundVideoMp4":"","backgroundVideoMuted":"1","backgroundVideoLoop":"1","preload":"auto","backgroundVideoMode":"fill","backgroundImage":"https://smartslider3.com/sample/photographer.jpg","backgroundFocusX":"50","backgroundFocusY":"50","backgroundImageOpacity":"100","backgroundImageBlur":"0","backgroundAlt":"","backgroundTitle":"","backgroundColor":"ffffff00","backgroundGradient":"off","backgroundColorEnd":"ffffff00","backgroundMode":"default","background-animation":"","background-animation-speed":"default","kenburns-animation":"50|*|50|*|","kenburns-animation-speed":"default","kenburns-animation-strength":"default","thumbnailType":"default","link":"|*|_self","guides":"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==","first":"0","static-slide":"0","slide-duration":"0","version":"3.2.0"}', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/badinsoft', 'yes'),
(2, 'home', 'http://localhost:8080/badinsoft', 'yes'),
(3, 'blogname', 'Badin Soft', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'milos.milosevic@badin.rs', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:107:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:40:"wck-meta-box/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"wck-meta-box/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"wck-meta-box/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"wck-meta-box/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"wck-meta-box/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"wck-meta-box/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"wck-meta-box/([^/]+)/embed/?$";s:45:"index.php?wck-meta-box=$matches[1]&embed=true";s:33:"wck-meta-box/([^/]+)/trackback/?$";s:39:"index.php?wck-meta-box=$matches[1]&tb=1";s:41:"wck-meta-box/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?wck-meta-box=$matches[1]&paged=$matches[2]";s:48:"wck-meta-box/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?wck-meta-box=$matches[1]&cpage=$matches[2]";s:37:"wck-meta-box/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?wck-meta-box=$matches[1]&page=$matches[2]";s:29:"wck-meta-box/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"wck-meta-box/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"wck-meta-box/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"wck-meta-box/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"wck-meta-box/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"wck-meta-box/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=11&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:21:"megamenu/megamenu.php";i:3;s:33:"smart-slider-3/smart-slider-3.php";i:4;s:27:"svg-support/svg-support.php";i:5;s:55:"wck-custom-fields-and-custom-post-types-creator/wck.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'badinsoft', 'yes'),
(41, 'stylesheet', 'badinsoft', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:0:"";s:4:"text";s:72:"<p class="text-muted">© 2018 Badin Soft d.o.o. All rights reserved.</p>";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:"svg-support/svg-support.php";s:22:"bodhi_svgs_deactivated";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '11', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:69:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:7:"nextend";b:1;s:14:"nextend_config";b:1;s:19:"nextend_visual_edit";b:1;s:21:"nextend_visual_delete";b:1;s:11:"smartslider";b:1;s:18:"smartslider_config";b:1;s:16:"smartslider_edit";b:1;s:18:"smartslider_delete";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:42:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:7:"nextend";b:1;s:14:"nextend_config";b:1;s:19:"nextend_visual_edit";b:1;s:21:"nextend_visual_delete";b:1;s:11:"smartslider";b:1;s:18:"smartslider_config";b:1;s:16:"smartslider_edit";b:1;s:18:"smartslider_delete";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:9:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";a:2:{i:0;s:13:"media_image-3";i:1;s:13:"custom_html-2";}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:13:"bottom-footer";a:1:{i:0;s:6:"text-2";}s:18:"smartslider_area_1";a:0:{}s:9:"mega-menu";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:2:{i:3;a:15:{s:13:"attachment_id";i:18;s:3:"url";s:82:"http://localhost:8080/badinsoft/wp-content/uploads/2018/04/badin_logo4-300x136.png";s:5:"title";s:0:"";s:4:"size";s:6:"medium";s:5:"width";i:660;s:6:"height";i:300;s:7:"caption";s:0:"";s:3:"alt";s:0:"";s:9:"link_type";s:6:"custom";s:8:"link_url";s:0:"";s:13:"image_classes";s:0:"";s:12:"link_classes";s:0:"";s:8:"link_rel";s:0:"";s:17:"link_target_blank";b:0;s:11:"image_title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:7:"content";s:210:"<p class="text-muted">\r\n	<br><br>\r\n	Dušanova 162/27<br>18000 Niš, Serbia\r\n	<br>\r\n	Phone: <strong>xxx-xxx-xxxxx</strong><br>\r\n	Email: <strong><a href="mailto:office@badin.rs">office@badin.rs</a></strong>\r\n</p>";}s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1525704574;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1525704616;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1525776532;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1522680839;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(119, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1525703206;s:7:"checked";a:1:{s:9:"badinsoft";s:5:"1.0.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(137, 'current_theme', 'BadinSoft', 'yes'),
(138, 'theme_mods_badinsoft', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:2;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:15;}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(144, 'recently_activated', 'a:1:{s:35:"responsive-menu/responsive-menu.php";i:1522751069;}', 'yes'),
(145, 'wck_meta_boxes_ids', 'a:0:{}', 'yes'),
(146, 'wck_update_to_unserialized', 'no', 'yes'),
(152, 'acf_version', '4.4.12', 'yes'),
(153, 'n2_ss3_version', '3.2.13', 'yes'),
(154, 'widget_smartslider3', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(163, 'category_children', 'a:0:{}', 'yes'),
(171, 'bodhi_svgs_plugin_version', '2.3.11', 'yes'),
(172, 'bodhi_svgs_admin_notice_dismissed', '1', 'yes'),
(173, 'responsive_menu_version', '3.1.14', 'yes'),
(174, 'responsive_menu_current_page', 'initial-setup', 'yes'),
(175, 'hide_pro_options', 'no', 'yes'),
(176, 'bodhi_svgs_settings', 'a:4:{s:13:"advanced_mode";s:2:"on";s:8:"restrict";s:2:"on";s:14:"js_foot_choice";s:2:"on";s:10:"css_target";s:11:"custom-logo";}', 'yes'),
(183, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(188, 'widget_maxmegamenu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(189, 'megamenu_version', '2.4.1.5', 'yes'),
(190, 'megamenu_settings', 'a:3:{s:6:"prefix";s:8:"disabled";s:12:"descriptions";s:7:"enabled";s:6:"menu-1";a:7:{s:7:"enabled";s:1:"1";s:5:"event";s:6:"hover_";s:6:"effect";s:7:"fade_up";s:12:"effect_speed";s:3:"200";s:13:"effect_mobile";s:8:"disabled";s:19:"effect_speed_mobile";s:3:"200";s:5:"theme";s:7:"default";}}', 'yes'),
(209, '_transient_megamenu_css_version', '2.4.1.5', 'yes'),
(210, 'megamenu_themes', 'a:1:{s:7:"default";a:191:{s:5:"title";s:7:"Default";s:8:"arrow_up";s:9:"dash-f343";s:10:"arrow_down";s:9:"dash-f347";s:10:"arrow_left";s:9:"dash-f341";s:11:"arrow_right";s:9:"dash-f345";s:11:"line_height";s:3:"1.7";s:7:"z_index";s:3:"999";s:6:"shadow";s:2:"on";s:17:"shadow_horizontal";s:3:"0px";s:15:"shadow_vertical";s:3:"3px";s:11:"shadow_blur";s:4:"15px";s:13:"shadow_spread";s:3:"0px";s:12:"shadow_color";s:18:"rgba(0, 0, 0, 0.1)";s:11:"transitions";s:2:"on";s:21:"menu_item_link_height";s:4:"80px";s:25:"container_background_from";s:18:"rgb(255, 255, 255)";s:23:"container_background_to";s:18:"rgb(255, 255, 255)";s:21:"container_padding_top";s:3:"5px";s:23:"container_padding_right";s:3:"0px";s:24:"container_padding_bottom";s:3:"0px";s:22:"container_padding_left";s:3:"0px";s:32:"container_border_radius_top_left";s:3:"0px";s:33:"container_border_radius_top_right";s:3:"0px";s:36:"container_border_radius_bottom_right";s:3:"0px";s:35:"container_border_radius_bottom_left";s:3:"0px";s:15:"menu_item_align";s:5:"right";s:25:"menu_item_background_from";s:13:"rgba(0,0,0,0)";s:23:"menu_item_background_to";s:13:"rgba(0,0,0,0)";s:31:"menu_item_background_hover_from";s:18:"rgb(255, 255, 255)";s:29:"menu_item_background_hover_to";s:18:"rgb(255, 255, 255)";s:17:"menu_item_spacing";s:4:"10px";s:20:"menu_item_link_color";s:16:"rgb(28, 62, 124)";s:24:"menu_item_link_font_size";s:4:"17px";s:19:"menu_item_link_font";s:7:"inherit";s:29:"menu_item_link_text_transform";s:4:"none";s:21:"menu_item_link_weight";s:6:"normal";s:30:"menu_item_link_text_decoration";s:4:"none";s:25:"menu_item_link_text_align";s:4:"left";s:26:"menu_item_link_color_hover";s:16:"rgb(8, 158, 210)";s:27:"menu_item_link_weight_hover";s:6:"normal";s:36:"menu_item_link_text_decoration_hover";s:4:"none";s:26:"menu_item_link_padding_top";s:3:"0px";s:28:"menu_item_link_padding_right";s:4:"10px";s:29:"menu_item_link_padding_bottom";s:3:"0px";s:27:"menu_item_link_padding_left";s:4:"10px";s:22:"menu_item_border_color";s:4:"#fff";s:20:"menu_item_border_top";s:3:"0px";s:22:"menu_item_border_right";s:3:"0px";s:23:"menu_item_border_bottom";s:3:"4px";s:21:"menu_item_border_left";s:3:"0px";s:28:"menu_item_border_color_hover";s:15:"rgb(34, 34, 34)";s:37:"menu_item_link_border_radius_top_left";s:3:"0px";s:38:"menu_item_link_border_radius_top_right";s:3:"0px";s:41:"menu_item_link_border_radius_bottom_right";s:3:"0px";s:40:"menu_item_link_border_radius_bottom_left";s:3:"0px";s:23:"menu_item_divider_color";s:24:"rgba(255, 255, 255, 0.1)";s:30:"menu_item_divider_glow_opacity";s:3:"0.1";s:27:"menu_item_highlight_current";s:2:"on";s:21:"panel_background_from";s:7:"#f1f1f1";s:19:"panel_background_to";s:7:"#f1f1f1";s:11:"panel_width";s:4:"100%";s:17:"panel_inner_width";s:4:"100%";s:17:"panel_padding_top";s:3:"0px";s:19:"panel_padding_right";s:3:"0px";s:20:"panel_padding_bottom";s:3:"0px";s:18:"panel_padding_left";s:3:"0px";s:18:"panel_border_color";s:4:"#fff";s:16:"panel_border_top";s:3:"0px";s:18:"panel_border_right";s:3:"0px";s:19:"panel_border_bottom";s:3:"0px";s:17:"panel_border_left";s:3:"0px";s:28:"panel_border_radius_top_left";s:3:"0px";s:29:"panel_border_radius_top_right";s:3:"0px";s:32:"panel_border_radius_bottom_right";s:3:"0px";s:31:"panel_border_radius_bottom_left";s:3:"0px";s:24:"panel_widget_padding_top";s:4:"15px";s:26:"panel_widget_padding_right";s:4:"15px";s:27:"panel_widget_padding_bottom";s:4:"15px";s:25:"panel_widget_padding_left";s:4:"15px";s:18:"panel_header_color";s:4:"#555";s:22:"panel_header_font_size";s:4:"16px";s:17:"panel_header_font";s:7:"inherit";s:27:"panel_header_text_transform";s:9:"uppercase";s:24:"panel_header_font_weight";s:4:"bold";s:28:"panel_header_text_decoration";s:4:"none";s:24:"panel_header_padding_top";s:3:"0px";s:26:"panel_header_padding_right";s:3:"0px";s:27:"panel_header_padding_bottom";s:3:"5px";s:25:"panel_header_padding_left";s:3:"0px";s:23:"panel_header_margin_top";s:3:"0px";s:25:"panel_header_margin_right";s:3:"0px";s:26:"panel_header_margin_bottom";s:3:"0px";s:24:"panel_header_margin_left";s:3:"0px";s:25:"panel_header_border_color";s:4:"#555";s:23:"panel_header_border_top";s:3:"0px";s:25:"panel_header_border_right";s:3:"0px";s:26:"panel_header_border_bottom";s:3:"0px";s:24:"panel_header_border_left";s:3:"0px";s:16:"panel_font_color";s:4:"#666";s:15:"panel_font_size";s:4:"14px";s:17:"panel_font_family";s:7:"inherit";s:29:"panel_second_level_font_color";s:4:"#555";s:28:"panel_second_level_font_size";s:4:"16px";s:23:"panel_second_level_font";s:7:"inherit";s:33:"panel_second_level_text_transform";s:9:"uppercase";s:30:"panel_second_level_font_weight";s:4:"bold";s:34:"panel_second_level_text_decoration";s:4:"none";s:35:"panel_second_level_font_color_hover";s:4:"#555";s:36:"panel_second_level_font_weight_hover";s:4:"bold";s:40:"panel_second_level_text_decoration_hover";s:4:"none";s:40:"panel_second_level_background_hover_from";s:13:"rgba(0,0,0,0)";s:38:"panel_second_level_background_hover_to";s:13:"rgba(0,0,0,0)";s:30:"panel_second_level_padding_top";s:3:"0px";s:32:"panel_second_level_padding_right";s:3:"0px";s:33:"panel_second_level_padding_bottom";s:3:"0px";s:31:"panel_second_level_padding_left";s:3:"0px";s:29:"panel_second_level_margin_top";s:3:"0px";s:31:"panel_second_level_margin_right";s:3:"0px";s:32:"panel_second_level_margin_bottom";s:3:"0px";s:30:"panel_second_level_margin_left";s:3:"0px";s:31:"panel_second_level_border_color";s:4:"#555";s:29:"panel_second_level_border_top";s:3:"0px";s:31:"panel_second_level_border_right";s:3:"0px";s:32:"panel_second_level_border_bottom";s:3:"0px";s:30:"panel_second_level_border_left";s:3:"0px";s:28:"panel_third_level_font_color";s:4:"#666";s:27:"panel_third_level_font_size";s:4:"14px";s:22:"panel_third_level_font";s:7:"inherit";s:32:"panel_third_level_text_transform";s:4:"none";s:29:"panel_third_level_font_weight";s:6:"normal";s:33:"panel_third_level_text_decoration";s:4:"none";s:34:"panel_third_level_font_color_hover";s:4:"#666";s:35:"panel_third_level_font_weight_hover";s:6:"normal";s:39:"panel_third_level_text_decoration_hover";s:4:"none";s:39:"panel_third_level_background_hover_from";s:13:"rgba(0,0,0,0)";s:37:"panel_third_level_background_hover_to";s:13:"rgba(0,0,0,0)";s:29:"panel_third_level_padding_top";s:3:"0px";s:31:"panel_third_level_padding_right";s:3:"0px";s:32:"panel_third_level_padding_bottom";s:3:"0px";s:30:"panel_third_level_padding_left";s:3:"0px";s:27:"flyout_menu_background_from";s:18:"rgb(255, 255, 255)";s:25:"flyout_menu_background_to";s:18:"rgb(255, 255, 255)";s:12:"flyout_width";s:4:"auto";s:18:"flyout_padding_top";s:3:"0px";s:20:"flyout_padding_right";s:3:"0px";s:21:"flyout_padding_bottom";s:3:"0px";s:19:"flyout_padding_left";s:3:"0px";s:19:"flyout_border_color";s:7:"#ffffff";s:17:"flyout_border_top";s:3:"0px";s:19:"flyout_border_right";s:4:"10px";s:20:"flyout_border_bottom";s:3:"0px";s:18:"flyout_border_left";s:4:"10px";s:29:"flyout_border_radius_top_left";s:3:"0px";s:30:"flyout_border_radius_top_right";s:3:"0px";s:33:"flyout_border_radius_bottom_right";s:3:"0px";s:32:"flyout_border_radius_bottom_left";s:3:"0px";s:22:"flyout_background_from";s:18:"rgb(255, 255, 255)";s:20:"flyout_background_to";s:18:"rgb(255, 255, 255)";s:28:"flyout_background_hover_from";s:18:"rgb(252, 252, 252)";s:26:"flyout_background_hover_to";s:18:"rgb(252, 252, 252)";s:18:"flyout_link_height";s:4:"40px";s:23:"flyout_link_padding_top";s:4:"10px";s:25:"flyout_link_padding_right";s:4:"10px";s:26:"flyout_link_padding_bottom";s:4:"10px";s:24:"flyout_link_padding_left";s:4:"10px";s:17:"flyout_link_color";s:16:"rgb(28, 62, 124)";s:16:"flyout_link_size";s:4:"16px";s:18:"flyout_link_family";s:7:"inherit";s:26:"flyout_link_text_transform";s:4:"none";s:18:"flyout_link_weight";s:6:"normal";s:27:"flyout_link_text_decoration";s:4:"none";s:23:"flyout_link_color_hover";s:16:"rgb(8, 158, 210)";s:24:"flyout_link_weight_hover";s:6:"normal";s:33:"flyout_link_text_decoration_hover";s:4:"none";s:24:"flyout_menu_item_divider";s:2:"on";s:30:"flyout_menu_item_divider_color";s:18:"rgb(221, 221, 221)";s:21:"responsive_breakpoint";s:5:"600px";s:22:"toggle_background_from";s:22:"rgba(255, 255, 255, 0)";s:20:"toggle_background_to";s:22:"rgba(255, 255, 255, 0)";s:17:"toggle_bar_height";s:4:"40px";s:14:"mobile_columns";s:1:"1";s:22:"mobile_background_from";s:18:"rgb(255, 255, 255)";s:20:"mobile_background_to";s:18:"rgb(255, 255, 255)";s:23:"mobile_menu_item_height";s:4:"40px";s:27:"mobile_menu_item_link_color";s:16:"rgb(28, 62, 124)";s:31:"mobile_menu_item_link_font_size";s:4:"14px";s:32:"mobile_menu_item_link_text_align";s:4:"left";s:10:"custom_css";s:67:"/** Push menu onto new line **/ \r\n#{$wrap} { \r\n    clear: both; \r\n}";s:6:"resets";s:3:"off";s:17:"menu_item_divider";s:3:"off";s:21:"disable_mobile_toggle";s:3:"off";}}', 'no'),
(211, 'megamenu_themes_last_updated', 'default', 'no'),
(212, 'megamenu_toggle_blocks', 'a:1:{s:7:"default";a:1:{i:1;a:11:{s:4:"type";s:11:"menu_toggle";s:5:"align";s:5:"right";s:11:"closed_text";s:0:"";s:9:"open_text";s:0:"";s:11:"closed_icon";s:9:"dash-f333";s:9:"open_icon";s:9:"dash-f335";s:10:"text_color";s:7:"#ffffff";s:9:"text_size";s:4:"14px";s:9:"icon_size";s:4:"36px";s:10:"icon_color";s:15:"rgb(34, 34, 34)";s:13:"icon_position";s:5:"after";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(237, '_transient_megamenu_css', '/** Tuesday 3rd of April 2018 01:05:47 PM (core) **/\n\n#mega-menu-wrap-menu-1, #mega-menu-wrap-menu-1 #mega-menu-menu-1, #mega-menu-wrap-menu-1 #mega-menu-menu-1 ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item, #mega-menu-wrap-menu-1 #mega-menu-menu-1 a.mega-menu-link {\n  -moz-transition: none;\n  -o-transition: none;\n  -webkit-transition: none;\n  transition: none;\n  -webkit-border-radius: 0 0 0 0;\n  -moz-border-radius: 0 0 0 0;\n  -ms-border-radius: 0 0 0 0;\n  -o-border-radius: 0 0 0 0;\n  border-radius: 0 0 0 0;\n  -webkit-box-shadow: none;\n  -moz-box-shadow: none;\n  -ms-box-shadow: none;\n  -o-box-shadow: none;\n  box-shadow: none;\n  background: none;\n  border: 0;\n  bottom: auto;\n  box-sizing: border-box;\n  clip: auto;\n  color: #666;\n  display: block;\n  float: none;\n  font-family: inherit;\n  font-size: 14px;\n  height: auto;\n  left: auto;\n  line-height: 1.7;\n  list-style-type: none;\n  margin: 0;\n  min-height: 0;\n  opacity: 1;\n  outline: none;\n  overflow: visible;\n  padding: 0;\n  position: relative;\n  right: auto;\n  text-align: left;\n  text-decoration: none;\n  text-transform: none;\n  top: auto;\n  vertical-align: baseline;\n  visibility: inherit;\n  width: auto;\n}\n#mega-menu-wrap-menu-1:before, #mega-menu-wrap-menu-1 #mega-menu-menu-1:before, #mega-menu-wrap-menu-1 #mega-menu-menu-1 ul.mega-sub-menu:before, #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item:before, #mega-menu-wrap-menu-1 #mega-menu-menu-1 a.mega-menu-link:before, #mega-menu-wrap-menu-1:after, #mega-menu-wrap-menu-1 #mega-menu-menu-1:after, #mega-menu-wrap-menu-1 #mega-menu-menu-1 ul.mega-sub-menu:after, #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item:after, #mega-menu-wrap-menu-1 #mega-menu-menu-1 a.mega-menu-link:after {\n  display: none;\n}\n#mega-menu-wrap-menu-1 {\n  background: #fff;\n  -webkit-border-radius: 0px 0px 0px 0px;\n  -moz-border-radius: 0px 0px 0px 0px;\n  -ms-border-radius: 0px 0px 0px 0px;\n  -o-border-radius: 0px 0px 0px 0px;\n  border-radius: 0px 0px 0px 0px;\n}\n#mega-menu-wrap-menu-1.mega-keyboard-navigation .mega-menu-toggle:focus, #mega-menu-wrap-menu-1.mega-keyboard-navigation #mega-menu-menu-1 a:focus, #mega-menu-wrap-menu-1.mega-keyboard-navigation #mega-menu-menu-1 input:focus {\n  -webkit-box-shadow: inset 0px 0px 3px 1px #0ff;\n  -moz-box-shadow: inset 0px 0px 3px 1px #0ff;\n  -ms-box-shadow: inset 0px 0px 3px 1px #0ff;\n  -o-box-shadow: inset 0px 0px 3px 1px #0ff;\n  box-shadow: inset 0px 0px 3px 1px #0ff;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 {\n  visibility: visible;\n  text-align: right;\n  padding: 5px 0px 0px 0px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 {\n    padding: 0;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 a.mega-menu-link {\n  cursor: pointer;\n  display: inline;\n  -webkit-transition: background 200ms linear, color 200ms linear;\n  -moz-transition: background 200ms linear, color 200ms linear;\n  -o-transition: background 200ms linear, color 200ms linear;\n  transition: background 200ms linear, color 200ms linear;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 a.mega-menu-link .mega-description-group {\n  vertical-align: middle;\n  display: inline-block;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 a.mega-menu-link .mega-description-group .mega-menu-title, #mega-menu-wrap-menu-1 #mega-menu-menu-1 a.mega-menu-link .mega-description-group .mega-menu-description {\n  line-height: 1.5;\n  display: block;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 a.mega-menu-link .mega-description-group .mega-menu-description {\n  font-style: italic;\n  font-size: 0.8em;\n  text-transform: none;\n  font-weight: normal;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item.mega-icon-top > a.mega-menu-link {\n  display: table-cell;\n  vertical-align: middle;\n  line-height: initial;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item.mega-icon-top > a.mega-menu-link:before {\n  display: block;\n  margin: 0 0 6px 0;\n  text-align: center;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item.mega-icon-top > a.mega-menu-link > span.mega-title-below {\n  display: inline-block;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item.mega-icon-top > a.mega-menu-link {\n    display: block;\n    line-height: 40px;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item.mega-icon-top > a.mega-menu-link:before {\n    display: inline-block;\n    margin: 0 6px 0 0;\n    text-align: left;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item.mega-icon-right > a.mega-menu-link:before {\n  float: right;\n  margin: 0 0 0 6px;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-animating > ul.mega-sub-menu {\n  pointer-events: none;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-disable-link > a.mega-menu-link, #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu li.mega-disable-link > a.mega-menu-link {\n  cursor: default;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item-has-children.mega-disable-link > a.mega-menu-link {\n  cursor: pointer;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 p {\n  margin-bottom: 10px;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 input, #mega-menu-wrap-menu-1 #mega-menu-menu-1 img {\n  max-width: 100%;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item > ul.mega-sub-menu {\n  display: block;\n  visibility: hidden;\n  opacity: 1;\n  pointer-events: auto;\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="fade"] li.mega-menu-item > ul.mega-sub-menu {\n    opacity: 0;\n    transition-duration: 200ms;\n    transition-timing-function: ease-in;\n    transition-property: opacity, visibility;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="fade"].mega-no-js li.mega-menu-item:hover > ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="fade"].mega-no-js li.mega-menu-item:focus > ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="fade"] li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="fade"] li.mega-menu-item.mega-menu-megamenu.mega-toggle-on ul.mega-sub-menu {\n    opacity: 1;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="fade_up"] li.mega-menu-item.mega-menu-megamenu > ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="fade_up"] li.mega-menu-item.mega-menu-flyout ul.mega-sub-menu {\n    opacity: 0;\n    margin-top: 10px;\n    transition-duration: 200ms;\n    transition-timing-function: ease-in;\n    transition-property: opacity, margin-top, visibility;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="fade_up"].mega-no-js li.mega-menu-item:hover > ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="fade_up"].mega-no-js li.mega-menu-item:focus > ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="fade_up"] li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="fade_up"] li.mega-menu-item.mega-menu-megamenu.mega-toggle-on ul.mega-sub-menu {\n    opacity: 1;\n    margin-top: 0;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="slide_up"] li.mega-menu-item.mega-menu-megamenu > ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="slide_up"] li.mega-menu-item.mega-menu-flyout ul.mega-sub-menu {\n    margin-top: 10px;\n    transition-duration: 200ms;\n    transition-timing-function: ease-in;\n    transition-property: margin-top, visibility;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="slide_up"].mega-no-js li.mega-menu-item:hover > ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="slide_up"].mega-no-js li.mega-menu-item:focus > ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="slide_up"] li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1[data-effect="slide_up"] li.mega-menu-item.mega-menu-megamenu.mega-toggle-on ul.mega-sub-menu {\n    margin-top: 0;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1.mega-no-js li.mega-menu-item:hover > ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1.mega-no-js li.mega-menu-item:focus > ul.mega-sub-menu, #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu {\n  visibility: visible;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item.mega-menu-megamenu ul.mega-sub-menu ul.mega-sub-menu {\n  visibility: inherit;\n  opacity: 1;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item a[class^=''dashicons'']:before {\n  font-family: dashicons;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item a.mega-menu-link:before {\n  display: inline-block;\n  font: inherit;\n  font-family: dashicons;\n  position: static;\n  margin: 0 6px 0 0px;\n  vertical-align: top;\n  -webkit-font-smoothing: antialiased;\n  -moz-osx-font-smoothing: grayscale;\n  color: inherit;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item.mega-hide-text a.mega-menu-link:before {\n  margin: 0;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item.mega-hide-text li.mega-menu-item a.mega-menu-link:before {\n  margin: 0 6px 0 0;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-align-bottom-left.mega-toggle-on > a.mega-menu-link {\n  -webkit-border-radius: 0px 0px 0 0;\n  -moz-border-radius: 0px 0px 0 0;\n  -ms-border-radius: 0px 0px 0 0;\n  -o-border-radius: 0px 0px 0 0;\n  border-radius: 0px 0px 0 0;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-align-bottom-right > ul.mega-sub-menu {\n  right: 0;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-align-bottom-right.mega-toggle-on > a.mega-menu-link {\n  -webkit-border-radius: 0px 0px 0 0;\n  -moz-border-radius: 0px 0px 0 0;\n  -ms-border-radius: 0px 0px 0 0;\n  -o-border-radius: 0px 0px 0 0;\n  border-radius: 0px 0px 0 0;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu.mega-menu-item {\n  position: static;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item {\n  margin: 0 10px 0 0;\n  display: inline-block;\n  height: auto;\n  vertical-align: middle;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item.mega-item-align-right {\n  float: right;\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item.mega-item-align-right {\n    margin: 0 0 0 10px;\n  }\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item.mega-item-align-float-left {\n    float: left;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item.mega-toggle-on > a.mega-menu-link, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item > a.mega-menu-link:focus {\n  background: #fff;\n  color: #089ed2;\n  font-weight: normal;\n  text-decoration: none;\n  border-color: #222;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item.mega-current-menu-item > a.mega-menu-link, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item.mega-current-menu-ancestor > a.mega-menu-link, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item.mega-current-page-ancestor > a.mega-menu-link {\n  background: #fff;\n  color: #089ed2;\n  font-weight: normal;\n  text-decoration: none;\n  border-color: #222;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item > a.mega-menu-link {\n  border-top: 0px solid #fff;\n  border-left: 0px solid #fff;\n  border-right: 0px solid #fff;\n  border-bottom: 4px solid #fff;\n  outline: none;\n  text-decoration: none;\n  padding: 0px 10px 0px 10px;\n  line-height: 80px;\n  font-weight: normal;\n  height: 80px;\n  vertical-align: baseline;\n  text-align: left;\n  width: auto;\n  display: block;\n  color: #1c3e7c;\n  text-transform: none;\n  text-decoration: none;\n  background: rgba(0, 0, 0, 0);\n  -webkit-border-radius: 0px 0px 0px 0px;\n  -moz-border-radius: 0px 0px 0px 0px;\n  -ms-border-radius: 0px 0px 0px 0px;\n  -o-border-radius: 0px 0px 0px 0px;\n  border-radius: 0px 0px 0px 0px;\n  font-family: inherit;\n  font-size: 17px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item > a.mega-menu-link {\n    text-align: left;\n    color: #1c3e7c;\n    font-size: 14px;\n  }\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item.mega-multi-line > a.mega-menu-link {\n    line-height: inherit;\n    display: table-cell;\n    vertical-align: middle;\n  }\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item.mega-multi-line > a.mega-menu-link br {\n    display: none;\n  }\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item {\n    display: list-item;\n    margin: 0;\n    clear: both;\n    border: 0;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item.mega-item-align-right {\n    float: none;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-item > a.mega-menu-link {\n    -webkit-border-radius: 0 0 0 0 0 0 0;\n    -moz-border-radius: 0 0 0 0 0 0 0;\n    -ms-border-radius: 0 0 0 0 0 0 0;\n    -o-border-radius: 0 0 0 0 0 0 0;\n    border-radius: 0 0 0 0 0 0 0;\n    border: 0;\n    margin: 0;\n    line-height: 40px;\n    height: 40px;\n    padding: 0 10px;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row {\n  width: 100%;\n  float: left;\n  background: transparent;\n  border: 0;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row .mega-menu-column {\n  float: left;\n  min-height: 1px;\n  background: transparent;\n  border: 0;\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-1 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-2 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-2 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-3 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-3 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-3 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-4 {\n    width: 25%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-4 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-4 {\n    width: 75%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-4 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-5 {\n    width: 20%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-5 {\n    width: 40%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-5 {\n    width: 60%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-5 {\n    width: 80%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-5 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-6 {\n    width: 16.66667%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-6 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-6 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-6 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-6 {\n    width: 83.33333%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-6 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-7 {\n    width: 14.28571%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-7 {\n    width: 28.57143%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-7 {\n    width: 42.85714%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-7 {\n    width: 57.14286%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-7 {\n    width: 71.42857%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-7 {\n    width: 85.71429%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-7 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-8 {\n    width: 12.5%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-8 {\n    width: 25%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-8 {\n    width: 37.5%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-8 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-8 {\n    width: 62.5%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-8 {\n    width: 75%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-8 {\n    width: 87.5%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-8 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-9 {\n    width: 11.11111%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-9 {\n    width: 22.22222%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-9 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-9 {\n    width: 44.44444%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-9 {\n    width: 55.55556%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-9 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-9 {\n    width: 77.77778%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-9 {\n    width: 88.88889%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-9-of-9 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-10 {\n    width: 10%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-10 {\n    width: 20%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-10 {\n    width: 30%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-10 {\n    width: 40%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-10 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-10 {\n    width: 60%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-10 {\n    width: 70%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-10 {\n    width: 80%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-9-of-10 {\n    width: 90%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-10-of-10 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-11 {\n    width: 9.09091%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-11 {\n    width: 18.18182%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-11 {\n    width: 27.27273%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-11 {\n    width: 36.36364%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-11 {\n    width: 45.45455%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-11 {\n    width: 54.54545%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-11 {\n    width: 63.63636%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-11 {\n    width: 72.72727%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-9-of-11 {\n    width: 81.81818%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-10-of-11 {\n    width: 90.90909%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-11-of-11 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-12 {\n    width: 8.33333%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-12 {\n    width: 16.66667%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-12 {\n    width: 25%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-12 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-12 {\n    width: 41.66667%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-12 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-12 {\n    width: 58.33333%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-12 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-9-of-12 {\n    width: 75%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-10-of-12 {\n    width: 83.33333%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-11-of-12 {\n    width: 91.66667%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-12-of-12 {\n    width: 100%;\n  }\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-column {\n    width: 100%;\n    clear: both;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row .mega-menu-column > ul.mega-sub-menu > li.mega-menu-item {\n  padding: 15px 15px 15px 15px;\n  width: 100%;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu {\n  z-index: 999;\n  -webkit-border-radius: 0px 0px 0px 0px;\n  -moz-border-radius: 0px 0px 0px 0px;\n  -ms-border-radius: 0px 0px 0px 0px;\n  -o-border-radius: 0px 0px 0px 0px;\n  border-radius: 0px 0px 0px 0px;\n  background: #f1f1f1;\n  padding: 0px 0px 0px 0px;\n  position: absolute;\n  width: 100%;\n  border-top: 0px solid #fff;\n  border-left: 0px solid #fff;\n  border-right: 0px solid #fff;\n  border-bottom: 0px solid #fff;\n  max-width: none;\n  left: 0;\n  -webkit-box-shadow: 0px 3px 15px 0px rgba(0, 0, 0, 0.1);\n  -moz-box-shadow: 0px 3px 15px 0px rgba(0, 0, 0, 0.1);\n  -ms-box-shadow: 0px 3px 15px 0px rgba(0, 0, 0, 0.1);\n  -o-box-shadow: 0px 3px 15px 0px rgba(0, 0, 0, 0.1);\n  box-shadow: 0px 3px 15px 0px rgba(0, 0, 0, 0.1);\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu {\n    float: left;\n    position: static;\n    width: 100%;\n  }\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-1 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-2 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-2 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-3 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-3 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-3 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-4 {\n    width: 25%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-4 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-4 {\n    width: 75%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-4 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-5 {\n    width: 20%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-5 {\n    width: 40%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-5 {\n    width: 60%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-5 {\n    width: 80%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-5 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-6 {\n    width: 16.66667%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-6 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-6 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-6 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-6 {\n    width: 83.33333%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-6-of-6 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-7 {\n    width: 14.28571%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-7 {\n    width: 28.57143%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-7 {\n    width: 42.85714%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-7 {\n    width: 57.14286%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-7 {\n    width: 71.42857%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-6-of-7 {\n    width: 85.71429%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-7-of-7 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-8 {\n    width: 12.5%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-8 {\n    width: 25%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-8 {\n    width: 37.5%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-8 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-8 {\n    width: 62.5%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-6-of-8 {\n    width: 75%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-7-of-8 {\n    width: 87.5%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-8-of-8 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-9 {\n    width: 11.11111%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-9 {\n    width: 22.22222%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-9 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-9 {\n    width: 44.44444%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-9 {\n    width: 55.55556%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-6-of-9 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-7-of-9 {\n    width: 77.77778%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-8-of-9 {\n    width: 88.88889%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-9-of-9 {\n    width: 100%;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu .mega-description-group .mega-menu-description {\n  margin: 5px 0;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-item-has-children a.mega-menu-link:after {\n  display: none;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item ul.mega-sub-menu {\n  clear: both;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n  margin-left: 10px;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n  margin-left: 20px;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item {\n  color: #666;\n  font-family: inherit;\n  font-size: 14px;\n  display: block;\n  float: left;\n  clear: none;\n  padding: 15px 15px 15px 15px;\n  vertical-align: top;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item.mega-menu-clear, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item.mega-menu-clear {\n  clear: left;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item h4.mega-block-title, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item h4.mega-block-title {\n  color: #555;\n  font-family: inherit;\n  font-size: 16px;\n  text-transform: uppercase;\n  text-decoration: none;\n  font-weight: bold;\n  margin: 0px 0px 0px 0px;\n  padding: 0px 0px 5px 0px;\n  vertical-align: top;\n  display: block;\n  border-top: 0px solid #555;\n  border-left: 0px solid #555;\n  border-right: 0px solid #555;\n  border-bottom: 0px solid #555;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link {\n  color: #555;\n  font-family: inherit;\n  font-size: 16px;\n  text-transform: uppercase;\n  text-decoration: none;\n  font-weight: bold;\n  margin: 0px 0px 0px 0px;\n  padding: 0px 0px 0px 0px;\n  vertical-align: top;\n  display: block;\n  border-top: 0px solid #555;\n  border-left: 0px solid #555;\n  border-right: 0px solid #555;\n  border-bottom: 0px solid #555;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:focus, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:focus {\n  color: #555;\n  font-weight: bold;\n  text-decoration: none;\n  background: rgba(0, 0, 0, 0);\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link {\n  color: #666;\n  font-family: inherit;\n  font-size: 14px;\n  text-transform: none;\n  text-decoration: none;\n  font-weight: normal;\n  margin: 0;\n  padding: 0px 0px 0px 0px;\n  vertical-align: top;\n  display: block;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link:focus, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link:focus {\n  color: #666;\n  font-weight: normal;\n  text-decoration: none;\n  background: rgba(0, 0, 0, 0);\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu {\n    border: 0;\n    padding: 10px;\n    -webkit-border-radius: 0 0 0 0;\n    -moz-border-radius: 0 0 0 0;\n    -ms-border-radius: 0 0 0 0;\n    -o-border-radius: 0 0 0 0;\n    border-radius: 0 0 0 0;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item {\n    width: 100%;\n    clear: both;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu.mega-no-headers > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link {\n  color: #666;\n  font-family: inherit;\n  font-size: 14px;\n  text-transform: none;\n  text-decoration: none;\n  font-weight: normal;\n  margin: 0;\n  border: 0;\n  padding: 0px 0px 0px 0px;\n  vertical-align: top;\n  display: block;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu.mega-no-headers > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu.mega-no-headers > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:focus {\n  color: #666;\n  font-weight: normal;\n  text-decoration: none;\n  background: rgba(0, 0, 0, 0);\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu {\n  z-index: 999;\n  position: absolute;\n  width: auto;\n  border-top: 0px solid #fff;\n  border-left: 10px solid #fff;\n  border-right: 10px solid #fff;\n  border-bottom: 0px solid #fff;\n  padding: 0px 0px 0px 0px;\n  background: #fff;\n  max-width: none;\n  -webkit-box-shadow: 0px 3px 15px 0px rgba(0, 0, 0, 0.1);\n  -moz-box-shadow: 0px 3px 15px 0px rgba(0, 0, 0, 0.1);\n  -ms-box-shadow: 0px 3px 15px 0px rgba(0, 0, 0, 0.1);\n  -o-box-shadow: 0px 3px 15px 0px rgba(0, 0, 0, 0.1);\n  box-shadow: 0px 3px 15px 0px rgba(0, 0, 0, 0.1);\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu {\n    float: left;\n    position: static;\n    width: 100%;\n    padding: 0;\n    border: 0;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item {\n  /* Hide divider on last menu item */\n  border-bottom: 1px solid #ddd;\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item > a.mega-menu-link {\n    white-space: nowrap;\n    min-width: 150px;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item.mega-has-description > a.mega-menu-link {\n    white-space: normal;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item.mega-has-description > a.mega-menu-link > .mega-description-group > .mega-menu-title {\n    white-space: nowrap;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item:last-child {\n  border-bottom: 0;\n  -webkit-box-shadow: none;\n  -moz-box-shadow: none;\n  -ms-box-shadow: none;\n  -o-box-shadow: none;\n  box-shadow: none;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item {\n    clear: both;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item a.mega-menu-link {\n  display: block;\n  background: #fff;\n  color: #1c3e7c;\n  font-family: inherit;\n  font-size: 16px;\n  font-weight: normal;\n  padding: 10px 10px 10px 10px;\n  line-height: 40px;\n  text-decoration: none;\n  text-transform: none;\n  vertical-align: baseline;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item:first-child > a.mega-menu-link {\n  border-top-left-radius: 0px;\n  border-top-right-radius: 0px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item:first-child > a.mega-menu-link {\n    border-top-left-radius: 0;\n    border-top-right-radius: 0;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item:last-child > a.mega-menu-link {\n  border-bottom-right-radius: 0px;\n  border-bottom-left-radius: 0px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item:last-child > a.mega-menu-link {\n    border-bottom-right-radius: 0;\n    border-bottom-left-radius: 0;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item a.mega-menu-link:hover, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item a.mega-menu-link:focus {\n  background: #fcfcfc;\n  font-weight: normal;\n  text-decoration: none;\n  color: #089ed2;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n  position: absolute;\n  left: 100%;\n  top: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n    position: static;\n    left: 0;\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu a.mega-menu-link {\n    padding-left: 20px;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item-has-children > a.mega-menu-link:after {\n  content: ''\\f347'';\n  display: inline-block;\n  font-family: dashicons;\n  margin: 0 0 0 6px;\n  vertical-align: top;\n  -webkit-font-smoothing: antialiased;\n  -moz-osx-font-smoothing: grayscale;\n  transform: rotate(0);\n  color: inherit;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item-has-children a.mega-menu-link:after {\n    float: right;\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item-has-children.mega-toggle-on > a.mega-menu-link:after {\n    content: ''\\f343'';\n  }\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item-has-children.mega-hide-sub-menu-on-mobile > a.mega-menu-link:after {\n    display: none;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-megamenu li.mega-menu-item-has-children > a.mega-menu-link:after, #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item-has-children.mega-hide-arrow > a.mega-menu-link:after {\n  display: none;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item li.mega-menu-item-has-children > a.mega-menu-link:after {\n  content: ''\\f345'';\n  float: right;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-item li.mega-menu-item-has-children > a.mega-menu-link:after {\n    content: ''\\f347'';\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item a.mega-menu-link {\n  text-align: right;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item a.mega-menu-link {\n    text-align: left;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item a.mega-menu-link:before {\n  float: right;\n  margin: 0 0 0 6px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item a.mega-menu-link:before {\n    float: left;\n    margin: 0 6px 0 0;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item-has-children > a.mega-menu-link:after {\n  content: ''\\f341'';\n  float: left;\n  margin: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item-has-children > a.mega-menu-link:after {\n    content: ''\\f347'';\n    float: right;\n  }\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-menu-flyout.mega-align-bottom-right ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n  left: -100%;\n  top: 0;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 li[class^=''mega-lang-item''] > a.mega-menu-link > img {\n  display: inline;\n}\n#mega-menu-wrap-menu-1 #mega-menu-menu-1 a.mega-menu-link > img.wpml-ls-flag, #mega-menu-wrap-menu-1 #mega-menu-menu-1 a.mega-menu-link > img.iclflag {\n  display: inline;\n  margin-right: 8px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-hide-on-mobile, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-hide-on-mobile {\n    display: none;\n  }\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-1 #mega-menu-menu-1 li.mega-hide-on-desktop, #mega-menu-wrap-menu-1 #mega-menu-menu-1 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-hide-on-desktop {\n    display: none;\n  }\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle {\n  display: none;\n  z-index: 1;\n  cursor: pointer;\n  background: rgba(255, 255, 255, 0);\n  -webkit-border-radius: 2px 2px 2px 2px;\n  -moz-border-radius: 2px 2px 2px 2px;\n  -ms-border-radius: 2px 2px 2px 2px;\n  -o-border-radius: 2px 2px 2px 2px;\n  border-radius: 2px 2px 2px 2px;\n  line-height: 40px;\n  height: 40px;\n  text-align: left;\n  -webkit-touch-callout: none;\n  -webkit-user-select: none;\n  -khtml-user-select: none;\n  -moz-user-select: none;\n  -ms-user-select: none;\n  outline: none;\n  white-space: nowrap;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle img {\n  max-width: 100%;\n  padding: 0;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle .mega-search-wrap {\n  align-self: center;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 .mega-menu-toggle {\n    display: flex;\n  }\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-blocks-left, #mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-blocks-center, #mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-blocks-right {\n  display: flex;\n  flex-basis: 33.33%;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-blocks-left {\n  flex: 1;\n  justify-content: flex-start;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-blocks-left .mega-toggle-block {\n  margin-left: 6px;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-blocks-center {\n  justify-content: center;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-blocks-center .mega-toggle-block {\n  margin-left: 3px;\n  margin-right: 3px;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-blocks-right {\n  flex: 1;\n  justify-content: flex-end;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-blocks-right .mega-toggle-block {\n  margin-right: 6px;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-block {\n  display: flex;\n  height: 100%;\n  flex-shrink: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-1 .mega-menu-toggle + #mega-menu-menu-1 {\n    display: none;\n  }\n  #mega-menu-wrap-menu-1 .mega-menu-toggle + #mega-menu-menu-1 li.mega-menu-item > ul.mega-sub-menu {\n    display: none;\n    visibility: visible;\n    opacity: 1;\n  }\n  #mega-menu-wrap-menu-1 .mega-menu-toggle + #mega-menu-menu-1 li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu, #mega-menu-wrap-menu-1 .mega-menu-toggle + #mega-menu-menu-1 li.mega-menu-megamenu.mega-menu-item.mega-toggle-on ul.mega-sub-menu {\n    display: block;\n  }\n  #mega-menu-wrap-menu-1 .mega-menu-toggle.mega-menu-open + #mega-menu-menu-1 {\n    display: block;\n  }\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle {\n  /** Push menu onto new line **/\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-block-1:after {\n  content: ''\\f333'';\n  font-family: ''dashicons'';\n  font-size: 36px;\n  color: #222;\n  margin: 0 0 0 5px;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-block-1 .mega-toggle-label {\n  color: #fff;\n  font-size: 14px;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-block-1 .mega-toggle-label .mega-toggle-label-open {\n  display: none;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle .mega-toggle-block-1 .mega-toggle-label .mega-toggle-label-closed {\n  display: inline;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle.mega-menu-open .mega-toggle-block-1:after {\n  content: ''\\f335'';\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle.mega-menu-open .mega-toggle-block-1 .mega-toggle-label-open {\n  display: inline;\n}\n#mega-menu-wrap-menu-1 .mega-menu-toggle.mega-menu-open .mega-toggle-block-1 .mega-toggle-label-closed {\n  display: none;\n}\n#mega-menu-wrap-menu-1 {\n  clear: both;\n}\n', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(247, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1525703201;s:15:"version_checked";s:5:"4.9.5";s:12:"translations";a:0:{}}', 'no'),
(248, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:24:"milos.milosevic@badin.rs";s:7:"version";s:5:"4.9.5";s:9:"timestamp";i:1522819601;}', 'no'),
(270, '_site_transient_timeout_theme_roots', '1525705005', 'no'),
(271, '_site_transient_theme_roots', 'a:1:{s:9:"badinsoft";s:7:"/themes";}', 'no'),
(272, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1525703207;s:7:"checked";a:7:{s:30:"advanced-custom-fields/acf.php";s:6:"4.4.12";s:19:"akismet/akismet.php";s:5:"4.0.3";s:9:"hello.php";s:3:"1.6";s:21:"megamenu/megamenu.php";s:7:"2.4.1.5";s:33:"smart-slider-3/smart-slider-3.php";s:6:"3.2.13";s:27:"svg-support/svg-support.php";s:6:"2.3.11";s:55:"wck-custom-fields-and-custom-post-types-creator/wck.php";s:5:"2.1.9";}s:8:"response";a:3:{s:21:"megamenu/megamenu.php";O:8:"stdClass":12:{s:2:"id";s:22:"w.org/plugins/megamenu";s:4:"slug";s:8:"megamenu";s:6:"plugin";s:21:"megamenu/megamenu.php";s:11:"new_version";s:5:"2.4.2";s:3:"url";s:39:"https://wordpress.org/plugins/megamenu/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/megamenu.2.4.2.zip";s:5:"icons";a:1:{s:2:"1x";s:61:"https://ps.w.org/megamenu/assets/icon-128x128.png?rev=1489843";}s:7:"banners";a:1:{s:2:"1x";s:63:"https://ps.w.org/megamenu/assets/banner-772x250.png?rev=1489840";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.5";s:12:"requires_php";N;s:13:"compatibility";O:8:"stdClass":0:{}}s:33:"smart-slider-3/smart-slider-3.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/smart-slider-3";s:4:"slug";s:14:"smart-slider-3";s:6:"plugin";s:33:"smart-slider-3/smart-slider-3.php";s:11:"new_version";s:6:"3.2.14";s:3:"url";s:45:"https://wordpress.org/plugins/smart-slider-3/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/smart-slider-3.3.2.14.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/smart-slider-3/assets/icon-256x256.png?rev=1284893";s:2:"1x";s:67:"https://ps.w.org/smart-slider-3/assets/icon-128x128.png?rev=1284893";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/smart-slider-3/assets/banner-1544x500.png?rev=1686842";s:2:"1x";s:69:"https://ps.w.org/smart-slider-3/assets/banner-772x250.png?rev=1686842";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.5";s:12:"requires_php";N;s:13:"compatibility";O:8:"stdClass":0:{}}s:27:"svg-support/svg-support.php";O:8:"stdClass":13:{s:2:"id";s:25:"w.org/plugins/svg-support";s:4:"slug";s:11:"svg-support";s:6:"plugin";s:27:"svg-support/svg-support.php";s:11:"new_version";s:6:"2.3.15";s:3:"url";s:42:"https://wordpress.org/plugins/svg-support/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/svg-support.2.3.15.zip";s:5:"icons";a:3:{s:2:"2x";s:64:"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738";s:2:"1x";s:56:"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738";s:3:"svg";s:56:"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377";s:2:"1x";s:66:"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:94:"<p>Had to roll back a recent PHP warnings fix due to it breaking some theme compatibility.</p>";s:6:"tested";s:15:"5.0-alpha-42993";s:12:"requires_php";N;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:55:"wck-custom-fields-and-custom-post-types-creator/wck.php";O:8:"stdClass":9:{s:2:"id";s:61:"w.org/plugins/wck-custom-fields-and-custom-post-types-creator";s:4:"slug";s:47:"wck-custom-fields-and-custom-post-types-creator";s:6:"plugin";s:55:"wck-custom-fields-and-custom-post-types-creator/wck.php";s:11:"new_version";s:5:"2.1.9";s:3:"url";s:78:"https://wordpress.org/plugins/wck-custom-fields-and-custom-post-types-creator/";s:7:"package";s:96:"https://downloads.wordpress.org/plugin/wck-custom-fields-and-custom-post-types-creator.2.1.9.zip";s:5:"icons";a:2:{s:2:"2x";s:100:"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/icon-256x256.png?rev=1470029";s:2:"1x";s:100:"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/icon-128x128.png?rev=1470029";}s:7:"banners";a:1:{s:2:"1x";s:102:"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/banner-772x250.png?rev=1470029";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2018/04/badin_logo.svg'),
(6, 6, '_menu_item_type', 'custom'),
(7, 6, '_menu_item_menu_item_parent', '0'),
(8, 6, '_menu_item_object_id', '6'),
(9, 6, '_menu_item_object', 'custom'),
(10, 6, '_menu_item_target', ''),
(11, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(12, 6, '_menu_item_xfn', ''),
(13, 6, '_menu_item_url', 'http://localhost:8080/badinsoft/'),
(14, 6, '_menu_item_orphaned', '1522750293'),
(15, 7, '_menu_item_type', 'post_type'),
(16, 7, '_menu_item_menu_item_parent', '0'),
(17, 7, '_menu_item_object_id', '2'),
(18, 7, '_menu_item_object', 'page'),
(19, 7, '_menu_item_target', ''),
(20, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(21, 7, '_menu_item_xfn', ''),
(22, 7, '_menu_item_url', ''),
(23, 7, '_menu_item_orphaned', '1522750294'),
(24, 8, '_menu_item_type', 'custom'),
(25, 8, '_menu_item_menu_item_parent', '0'),
(26, 8, '_menu_item_object_id', '8'),
(27, 8, '_menu_item_object', 'custom'),
(28, 8, '_menu_item_target', ''),
(29, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(30, 8, '_menu_item_xfn', ''),
(31, 8, '_menu_item_url', '#'),
(33, 9, '_menu_item_type', 'custom'),
(34, 9, '_menu_item_menu_item_parent', '8'),
(35, 9, '_menu_item_object_id', '9'),
(36, 9, '_menu_item_object', 'custom'),
(37, 9, '_menu_item_target', ''),
(38, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 9, '_menu_item_xfn', ''),
(40, 9, '_menu_item_url', '#'),
(42, 10, '_menu_item_type', 'custom'),
(43, 10, '_menu_item_menu_item_parent', '8'),
(44, 10, '_menu_item_object_id', '10'),
(45, 10, '_menu_item_object', 'custom'),
(46, 10, '_menu_item_target', ''),
(47, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(48, 10, '_menu_item_xfn', ''),
(49, 10, '_menu_item_url', '#'),
(51, 2, '_edit_lock', '1522752386:1'),
(52, 11, 'inline_featured_image', '0'),
(53, 11, '_edit_last', '1'),
(54, 11, '_edit_lock', '1522760826:1'),
(55, 13, '_wp_attached_file', '2018/04/badin_logo2.svg'),
(58, 15, '_wp_attached_file', '2018/04/badin_logo3.svg'),
(61, 11, '_wp_page_template', 'template-parts/template-front-one.php'),
(64, 18, '_wp_attached_file', '2018/04/badin_logo4.png'),
(65, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:660;s:6:"height";i:300;s:4:"file";s:23:"2018/04/badin_logo4.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"badin_logo4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"badin_logo4-300x136.png";s:5:"width";i:300;s:6:"height";i:136;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-02 14:49:32', '2018-04-02 14:49:32', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-04-02 14:49:32', '2018-04-02 14:49:32', '', 0, 'http://localhost:8080/badinsoft/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-02 14:49:32', '2018-04-02 14:49:32', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:8080/badinsoft/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-04-02 14:49:32', '2018-04-02 14:49:32', '', 0, 'http://localhost:8080/badinsoft/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-04-03 09:57:54', '2018-04-03 09:57:54', '', 'badin_logo', '', 'inherit', 'open', 'closed', '', 'badin_logo', '', '', '2018-04-03 09:57:54', '2018-04-03 09:57:54', '', 0, 'http://localhost:8080/badinsoft/wp-content/uploads/2018/04/badin_logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(6, 1, '2018-04-03 10:11:32', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-03 10:11:32', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/badinsoft/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2018-04-03 10:11:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-03 10:11:33', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/badinsoft/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2018-04-03 10:20:18', '2018-04-03 10:20:18', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-03 13:05:49', '2018-04-03 13:05:49', '', 0, 'http://localhost:8080/badinsoft/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2018-04-03 10:20:18', '2018-04-03 10:20:18', '', 'Item 2', '', 'publish', 'closed', 'closed', '', 'item-2', '', '', '2018-04-03 13:05:50', '2018-04-03 13:05:50', '', 0, 'http://localhost:8080/badinsoft/?p=9', 2, 'nav_menu_item', '', 0),
(10, 1, '2018-04-03 10:20:18', '2018-04-03 10:20:18', '', 'Item 3', '', 'publish', 'closed', 'closed', '', 'item-3', '', '', '2018-04-03 13:05:50', '2018-04-03 13:05:50', '', 0, 'http://localhost:8080/badinsoft/?p=10', 3, 'nav_menu_item', '', 0),
(11, 1, '2018-04-03 10:49:06', '2018-04-03 10:49:06', 'Home stranica', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-03 13:09:26', '2018-04-03 13:09:26', '', 0, 'http://localhost:8080/badinsoft/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-04-03 10:49:06', '2018-04-03 10:49:06', 'Home stranica', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-04-03 10:49:06', '2018-04-03 10:49:06', '', 11, 'http://localhost:8080/badinsoft/2018/04/03/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-04-03 11:59:16', '2018-04-03 11:59:16', '', 'badin_logo2', '', 'inherit', 'open', 'closed', '', 'badin_logo2', '', '', '2018-04-03 11:59:16', '2018-04-03 11:59:16', '', 0, 'http://localhost:8080/badinsoft/wp-content/uploads/2018/04/badin_logo2.svg', 0, 'attachment', 'image/svg+xml', 0),
(15, 1, '2018-04-03 12:26:57', '2018-04-03 12:26:57', '', 'badin_logo3', '', 'inherit', 'open', 'closed', '', 'badin_logo3', '', '', '2018-04-03 12:26:57', '2018-04-03 12:26:57', '', 0, 'http://localhost:8080/badinsoft/wp-content/uploads/2018/04/badin_logo3.svg', 0, 'attachment', 'image/svg+xml', 0),
(18, 1, '2018-04-03 14:29:37', '2018-04-03 14:29:37', '', 'badin_logo4', '', 'inherit', 'open', 'closed', '', 'badin_logo4', '', '', '2018-04-03 14:29:37', '2018-04-03 14:29:37', '', 0, 'http://localhost:8080/badinsoft/wp-content/uploads/2018/04/badin_logo4.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_responsive_menu`
--

CREATE TABLE `wp_responsive_menu` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_responsive_menu`
--

INSERT INTO `wp_responsive_menu` (`name`, `value`) VALUES
('accordion_animation', 'off'),
('active_arrow_font_icon', ''),
('active_arrow_font_icon_type', 'font-awesome'),
('active_arrow_image', ''),
('active_arrow_image_alt', ''),
('active_arrow_shape', '▲'),
('admin_theme', 'dark'),
('animation_speed', '0.5'),
('animation_type', 'slide'),
('arrow_position', 'right'),
('auto_expand_all_submenus', 'off'),
('auto_expand_current_submenus', 'off'),
('breakpoint', '720'),
('button_background_colour', '#000000'),
('button_background_colour_active', '#000000'),
('button_background_colour_hover', '#000000'),
('button_click_animation', 'boring'),
('button_click_trigger', '#responsive-menu-button'),
('button_distance_from_side', '5'),
('button_distance_from_side_unit', '%'),
('button_font', ''),
('button_font_icon', ''),
('button_font_icon_type', 'font-awesome'),
('button_font_icon_when_clicked', ''),
('button_font_icon_when_clicked_type', 'font-awesome'),
('button_font_size', '14'),
('button_font_size_unit', 'px'),
('button_height', '55'),
('button_height_unit', 'px'),
('button_image', ''),
('button_image_alt', ''),
('button_image_alt_when_clicked', ''),
('button_image_when_clicked', ''),
('button_left_or_right', 'right'),
('button_line_colour', '#ffffff'),
('button_line_colour_active', '#ffffff'),
('button_line_colour_hover', '#ffffff'),
('button_line_height', '3'),
('button_line_height_unit', 'px'),
('button_line_margin', '5'),
('button_line_margin_unit', 'px'),
('button_line_width', '25'),
('button_line_width_unit', 'px'),
('button_position_type', 'fixed'),
('button_push_with_animation', 'off'),
('button_text_colour', '#ffffff'),
('button_title', ''),
('button_title_line_height', '13'),
('button_title_line_height_unit', 'px'),
('button_title_open', ''),
('button_title_position', 'left'),
('button_top', '15'),
('button_top_unit', 'px'),
('button_transparent_background', 'off'),
('button_trigger_type', 'click'),
('button_width', '55'),
('button_width_unit', 'px'),
('custom_css', ''),
('custom_walker', ''),
('desktop_menu_options', '{"8":{"type":"standard","width":"auto","parent_background_colour":"","parent_background_image":""},"9":{"type":"standard","width":"auto","parent_background_colour":"","parent_background_image":""},"10":{"type":"standard","width":"auto","parent_background_colour":"","parent_background_image":""}}'),
('desktop_menu_positioning', 'fixed'),
('desktop_menu_side', ''),
('desktop_menu_width', ''),
('desktop_menu_width_unit', '%'),
('enable_touch_gestures', ''),
('external_files', 'off'),
('fade_submenus', 'off'),
('fade_submenus_delay', '100'),
('fade_submenus_side', 'left'),
('fade_submenus_speed', '500'),
('header_bar_adjust_page', NULL),
('header_bar_background_color', '#ffffff'),
('header_bar_breakpoint', '800'),
('header_bar_font', ''),
('header_bar_font_size', '14'),
('header_bar_font_size_unit', 'px'),
('header_bar_height', '80'),
('header_bar_height_unit', 'px'),
('header_bar_html_content', ''),
('header_bar_items_order', '{"logo":"on","title":"on","search":"on","html content":"on"}'),
('header_bar_logo', ''),
('header_bar_logo_alt', ''),
('header_bar_logo_height', ''),
('header_bar_logo_height_unit', 'px'),
('header_bar_logo_link', ''),
('header_bar_logo_width', ''),
('header_bar_logo_width_unit', '%'),
('header_bar_position_type', 'fixed'),
('header_bar_text_color', '#ffffff'),
('header_bar_title', ''),
('inactive_arrow_font_icon', ''),
('inactive_arrow_font_icon_type', 'font-awesome'),
('inactive_arrow_image', ''),
('inactive_arrow_image_alt', ''),
('inactive_arrow_shape', '▼'),
('items_order', '{"title":"on","menu":"on","search":"on","additional content":"on"}'),
('keyboard_shortcut_close_menu', '27,37'),
('keyboard_shortcut_open_menu', '32,39'),
('menu_additional_content', ''),
('menu_additional_content_colour', '#ffffff'),
('menu_adjust_for_wp_admin_bar', 'off'),
('menu_appear_from', 'left'),
('menu_auto_height', 'off'),
('menu_background_colour', '#212121'),
('menu_background_image', ''),
('menu_border_width', '1'),
('menu_border_width_unit', 'px'),
('menu_close_on_body_click', 'off'),
('menu_close_on_link_click', 'off'),
('menu_close_on_scroll', 'off'),
('menu_container_background_colour', '#212121'),
('menu_current_item_background_colour', '#212121'),
('menu_current_item_background_hover_colour', '#3f3f3f'),
('menu_current_item_border_colour', '#212121'),
('menu_current_item_border_hover_colour', '#3f3f3f'),
('menu_current_link_colour', '#ffffff'),
('menu_current_link_hover_colour', '#ffffff'),
('menu_depth', '5'),
('menu_depth_0', '5'),
('menu_depth_0_unit', '%'),
('menu_depth_1', '10'),
('menu_depth_1_unit', '%'),
('menu_depth_2', '15'),
('menu_depth_2_unit', '%'),
('menu_depth_3', '20'),
('menu_depth_3_unit', '%'),
('menu_depth_4', '25'),
('menu_depth_4_unit', '%'),
('menu_depth_5', '30'),
('menu_depth_5_unit', '%'),
('menu_depth_side', 'left'),
('menu_disable_scrolling', 'off'),
('menu_font', ''),
('menu_font_icons', '{"id":[""],"icon":[""],"type":[""]}'),
('menu_font_size', '13'),
('menu_font_size_unit', 'px'),
('menu_item_background_colour', '#212121'),
('menu_item_background_hover_colour', '#3f3f3f'),
('menu_item_border_colour', '#212121'),
('menu_item_border_colour_hover', '#212121'),
('menu_item_click_to_trigger_submenu', 'off'),
('menu_link_colour', '#ffffff'),
('menu_link_hover_colour', '#ffffff'),
('menu_links_height', '40'),
('menu_links_height_unit', 'px'),
('menu_links_line_height', '40'),
('menu_links_line_height_unit', 'px'),
('menu_maximum_width', ''),
('menu_maximum_width_unit', 'px'),
('menu_minimum_width', ''),
('menu_minimum_width_unit', 'px'),
('menu_overlay', 'off'),
('menu_overlay_colour', 'rgba(0, 0, 0, 0.7)'),
('menu_search_box_background_colour', '#ffffff'),
('menu_search_box_border_colour', '#dadada'),
('menu_search_box_placeholder_colour', '#c7c7cd'),
('menu_search_box_text', 'Search'),
('menu_search_box_text_colour', '#333333'),
('menu_sub_arrow_background_colour', '#212121'),
('menu_sub_arrow_background_colour_active', '#212121'),
('menu_sub_arrow_background_hover_colour', '#3f3f3f'),
('menu_sub_arrow_background_hover_colour_active', '#3f3f3f'),
('menu_sub_arrow_border_colour', '#212121'),
('menu_sub_arrow_border_colour_active', '#212121'),
('menu_sub_arrow_border_hover_colour', '#3f3f3f'),
('menu_sub_arrow_border_hover_colour_active', '#3f3f3f'),
('menu_sub_arrow_shape_colour', '#ffffff'),
('menu_sub_arrow_shape_colour_active', '#ffffff'),
('menu_sub_arrow_shape_hover_colour', '#ffffff'),
('menu_sub_arrow_shape_hover_colour_active', '#ffffff'),
('menu_text_alignment', 'left'),
('menu_title', ''),
('menu_title_background_colour', '#212121'),
('menu_title_background_hover_colour', '#212121'),
('menu_title_colour', '#ffffff'),
('menu_title_font_icon', ''),
('menu_title_font_icon_type', 'font-awesome'),
('menu_title_font_size', '13'),
('menu_title_font_size_unit', 'px'),
('menu_title_hover_colour', '#ffffff'),
('menu_title_image', ''),
('menu_title_image_alt', ''),
('menu_title_image_height', ''),
('menu_title_image_height_unit', 'px'),
('menu_title_image_width', ''),
('menu_title_image_width_unit', '%'),
('menu_title_link', ''),
('menu_title_link_location', '_self'),
('menu_to_hide', ''),
('menu_to_use', 'primary-menu'),
('menu_width', '75'),
('menu_width_unit', '%'),
('menu_word_wrap', 'off'),
('minify_scripts', 'off'),
('mobile_only', 'off'),
('page_wrapper', ''),
('remove_bootstrap', ''),
('remove_fontawesome', ''),
('scripts_in_footer', 'off'),
('shortcode', 'off'),
('show_menu_on_page_load', ''),
('single_menu_font', ''),
('single_menu_font_size', '14'),
('single_menu_font_size_unit', 'px'),
('single_menu_height', '80'),
('single_menu_height_unit', 'px'),
('single_menu_item_background_colour', '#ffffff'),
('single_menu_item_background_colour_hover', '#ffffff'),
('single_menu_item_link_colour', '#000000'),
('single_menu_item_link_colour_hover', '#000000'),
('single_menu_item_submenu_background_colour', '#ffffff'),
('single_menu_item_submenu_background_colour_hover', '#ffffff'),
('single_menu_item_submenu_link_colour', '#000000'),
('single_menu_item_submenu_link_colour_hover', '#000000'),
('single_menu_line_height', '80'),
('single_menu_line_height_unit', 'px'),
('single_menu_submenu_font', ''),
('single_menu_submenu_font_size', '12'),
('single_menu_submenu_font_size_unit', 'px'),
('single_menu_submenu_height', ''),
('single_menu_submenu_height_unit', 'auto'),
('single_menu_submenu_line_height', '40'),
('single_menu_submenu_line_height_unit', 'px'),
('slide_effect_back_to_text', 'Back'),
('smooth_scroll_on', 'off'),
('smooth_scroll_speed', '500'),
('sub_menu_speed', '0.2'),
('submenu_arrow_height', '40'),
('submenu_arrow_height_unit', 'px'),
('submenu_arrow_position', 'right'),
('submenu_arrow_width', '40'),
('submenu_arrow_width_unit', 'px'),
('submenu_border_width', '1'),
('submenu_border_width_unit', 'px'),
('submenu_current_item_background_colour', '#212121'),
('submenu_current_item_background_hover_colour', '#3f3f3f'),
('submenu_current_item_border_colour', '#212121'),
('submenu_current_item_border_hover_colour', '#3f3f3f'),
('submenu_current_link_colour', '#ffffff'),
('submenu_current_link_hover_colour', '#ffffff'),
('submenu_descriptions_on', ''),
('submenu_font', ''),
('submenu_font_size', '13'),
('submenu_font_size_unit', 'px'),
('submenu_item_background_colour', '#212121'),
('submenu_item_background_hover_colour', '#3f3f3f'),
('submenu_item_border_colour', '#212121'),
('submenu_item_border_colour_hover', '#212121'),
('submenu_link_colour', '#ffffff'),
('submenu_link_hover_colour', '#ffffff'),
('submenu_links_height', '40'),
('submenu_links_height_unit', 'px'),
('submenu_links_line_height', '40'),
('submenu_links_line_height_unit', 'px'),
('submenu_sub_arrow_background_colour', '#212121'),
('submenu_sub_arrow_background_colour_active', '#212121'),
('submenu_sub_arrow_background_hover_colour', '#3f3f3f'),
('submenu_sub_arrow_background_hover_colour_active', '#3f3f3f'),
('submenu_sub_arrow_border_colour', '#212121'),
('submenu_sub_arrow_border_colour_active', '#212121'),
('submenu_sub_arrow_border_hover_colour', '#3f3f3f'),
('submenu_sub_arrow_border_hover_colour_active', '#3f3f3f'),
('submenu_sub_arrow_shape_colour', '#ffffff'),
('submenu_sub_arrow_shape_colour_active', '#ffffff'),
('submenu_sub_arrow_shape_hover_colour', '#ffffff'),
('submenu_sub_arrow_shape_hover_colour_active', '#ffffff'),
('submenu_submenu_arrow_height', '40'),
('submenu_submenu_arrow_height_unit', 'px'),
('submenu_submenu_arrow_width', '40'),
('submenu_submenu_arrow_width_unit', 'px'),
('submenu_text_alignment', 'left'),
('theme_location_menu', ''),
('transition_speed', '0.5'),
('use_desktop_menu', ''),
('use_header_bar', 'off'),
('use_slide_effect', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'badin_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"b372c1a8d6e9f220602af1628eac7029c5155f28244be023f35c51c0cbba3a3a";a:4:{s:10:"expiration";i:1525874944;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:5:"login";i:1524665344;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '19'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'wp_user-settings-time', '1524665341'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(23, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'badin_admin', '$P$B8fSKJvJ.1Rf2noVNhT/.Cwi7AIwIF/', 'badin_admin', 'milos.milosevic@badin.rs', '', '2018-04-02 14:49:30', '', 0, 'badin_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application` (`application`,`section`,`referencekey`),
  ADD KEY `application_2` (`application`,`section`);

--
-- Indexes for table `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_nextend2_smartslider3_sliders_xref`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders_xref`
  ADD PRIMARY KEY (`group_id`,`slider_id`);

--
-- Indexes for table `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_responsive_menu`
--
ALTER TABLE `wp_responsive_menu`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001;
--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
