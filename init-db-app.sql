-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2016 at 12:19 PM
-- Server version: 5.6.17
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `adventurehunt`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_access`
--

CREATE TABLE IF NOT EXISTS `api_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `clientid` varchar(100) NOT NULL,
  `authkey` varchar(200) NOT NULL,
  `data` text,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`,`authkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `api_access` (`id`, `clientid`, `authkey`, `data`, `status`, `created`, `updated`) VALUES
(1, 'app.ci3.desktop', '17b0605e04ca525809d25a0e51a4dee8', NULL, 1, '2015-12-15 22:14:35', '2015-12-15 22:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `api_logs`
--

CREATE TABLE IF NOT EXISTS `api_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `actionkey` varchar(100) DEFAULT NULL,
  `datain` longtext,
  `dataout` longtext,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `handler` text NOT NULL,
  `queue` varchar(255) NOT NULL DEFAULT 'default',
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `error` text,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `users_detail_id` int(10) NOT NULL DEFAULT '0',
  `data` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `users_detail_id` (`users_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_logs`
--

CREATE TABLE IF NOT EXISTS `task_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `status` varchar(100) DEFAULT NULL,
  `actionkey` varchar(100) DEFAULT NULL,
  `datain` longtext,
  `dataout` longtext,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `verification_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fbid` varchar(100) DEFAULT NULL,
  `fbdata` text,
  `fbnopass` tinyint(1) NOT NULL DEFAULT '0',
  `referral_code` varchar(32) DEFAULT NULL,
  `referred_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `verification_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `status`, `first_name`, `last_name`, `company`, `phone`, `fbid`, `fbdata`, `fbnopass`, `referral_code`, `referred_by`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$08$G4o1hPpzoiJlMrLcMYFZJOSpn6YNp978txd1YXsneDTbBwF9lcsRS', '', 'admin@admin.com', '', NULL, NULL, NULL, NULL, 1268889823, 1470974958, 1, 1, 'Admin', 'istrator', 'ADMIN', '888888888', NULL, NULL, 0, 'aistrator1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_details`
--

CREATE TABLE IF NOT EXISTS `users_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `createdby` int(11) NOT NULL DEFAULT '0',
  `birthdate` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(4) DEFAULT NULL,
  `zip` mediumint(6) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lng` varchar(100) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `mobile` varchar(14) DEFAULT NULL,
  `avatar` int(10) DEFAULT NULL,
  `data` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `referral_code` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_details`
--

INSERT INTO `users_details` (`id`, `user_id`, `createdby`, `birthdate`, `address`, `address2`, `city`, `state`, `zip`, `lat`, `lng`, `phone`, `mobile`, `avatar`, `data`, `created`, `updated`, `referral_code`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '888888888', NULL, NULL, NULL, NULL, '2016-02-12 01:43:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);
