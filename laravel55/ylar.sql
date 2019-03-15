/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : ylar

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-03-15 18:17:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '用户管理', 'fa-users', 'auth/users', null, null, '2019-03-12 04:32:03');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色管理', 'fa-user', 'auth/roles', null, null, '2019-03-12 06:21:23');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限管理', 'fa-ban', 'auth/permissions', null, null, '2019-03-12 04:40:06');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单管理', 'fa-bars', 'auth/menu', null, null, '2019-03-12 04:39:40');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '日志管理', 'fa-history', 'auth/logs', null, null, '2019-03-12 04:40:23');
INSERT INTO `admin_menu` VALUES ('8', '0', '0', '文章管理', 'fa-align-left', 'Admin/Artcle', '*', '2019-03-12 04:47:17', '2019-03-12 04:57:02');
INSERT INTO `admin_menu` VALUES ('9', '8', '0', '文章列表', 'fa-file-text', 'artcle', '*', '2019-03-12 04:48:23', '2019-03-12 04:57:16');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 03:54:21', '2019-03-12 03:54:21');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:54:36', '2019-03-12 03:54:36');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:54:41', '2019-03-12 03:54:41');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:54:43', '2019-03-12 03:54:43');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:54:44', '2019-03-12 03:54:44');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:55:40', '2019-03-12 03:55:40');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:55:47', '2019-03-12 03:55:47');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:55:49', '2019-03-12 03:55:49');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:55:50', '2019-03-12 03:55:50');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:55:53', '2019-03-12 03:55:53');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:55:55', '2019-03-12 03:55:55');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:55:55', '2019-03-12 03:55:55');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:56:02', '2019-03-12 03:56:02');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:56:04', '2019-03-12 03:56:04');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:56:07', '2019-03-12 03:56:07');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:56:21', '2019-03-12 03:56:21');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:56:23', '2019-03-12 03:56:23');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:56:25', '2019-03-12 03:56:25');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:56:26', '2019-03-12 03:56:26');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:56:29', '2019-03-12 03:56:29');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 03:56:30', '2019-03-12 03:56:30');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:23:25', '2019-03-12 04:23:25');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-12 04:23:27', '2019-03-12 04:23:27');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:23:33', '2019-03-12 04:23:33');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:23:36', '2019-03-12 04:23:36');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:24:30', '2019-03-12 04:24:30');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:24:52', '2019-03-12 04:24:52');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:24:55', '2019-03-12 04:24:55');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:24:56', '2019-03-12 04:24:56');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:24:57', '2019-03-12 04:24:57');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:24:58', '2019-03-12 04:24:58');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:24:59', '2019-03-12 04:24:59');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:25:00', '2019-03-12 04:25:00');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:25:01', '2019-03-12 04:25:01');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:25:11', '2019-03-12 04:25:11');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:25:25', '2019-03-12 04:25:25');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:25:26', '2019-03-12 04:25:26');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:31:29', '2019-03-12 04:31:29');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:31:54', '2019-03-12 04:31:54');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.com\\/admin\\/auth\\/menu\"}', '2019-03-12 04:32:03', '2019-03-12 04:32:03');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:32:03', '2019-03-12 04:32:03');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:32:08', '2019-03-12 04:32:08');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.com\\/admin\\/auth\\/menu\"}', '2019-03-12 04:32:13', '2019-03-12 04:32:13');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:32:14', '2019-03-12 04:32:14');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:34:01', '2019-03-12 04:34:01');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:34:04', '2019-03-12 04:34:04');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:34:06', '2019-03-12 04:34:06');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:34:07', '2019-03-12 04:34:07');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 04:37:51', '2019-03-12 04:37:51');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 04:38:22', '2019-03-12 04:38:22');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 04:38:25', '2019-03-12 04:38:25');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:38:30', '2019-03-12 04:38:30');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:38:32', '2019-03-12 04:38:32');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:38:35', '2019-03-12 04:38:35');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:38:37', '2019-03-12 04:38:37');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-12 04:39:12', '2019-03-12 04:39:12');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:39:18', '2019-03-12 04:39:18');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:39:19', '2019-03-12 04:39:19');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:39:23', '2019-03-12 04:39:23');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:39:26', '2019-03-12 04:39:26');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:39:29', '2019-03-12 04:39:29');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:39:33', '2019-03-12 04:39:33');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.com\\/admin\\/auth\\/menu\"}', '2019-03-12 04:39:40', '2019-03-12 04:39:40');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:39:40', '2019-03-12 04:39:40');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:39:46', '2019-03-12 04:39:46');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.com\\/admin\\/auth\\/menu\"}', '2019-03-12 04:40:06', '2019-03-12 04:40:06');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:40:07', '2019-03-12 04:40:07');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:40:10', '2019-03-12 04:40:10');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:40:11', '2019-03-12 04:40:11');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:40:17', '2019-03-12 04:40:17');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u65e5\\u5fd7\\u7ba1\\u7406\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.com\\/admin\\/auth\\/menu\"}', '2019-03-12 04:40:23', '2019-03-12 04:40:23');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:40:23', '2019-03-12 04:40:23');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:40:25', '2019-03-12 04:40:25');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:40:28', '2019-03-12 04:40:28');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:40:31', '2019-03-12 04:40:31');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:40:34', '2019-03-12 04:40:34');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:40:35', '2019-03-12 04:40:35');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:40:36', '2019-03-12 04:40:36');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:40:39', '2019-03-12 04:40:39');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:40:41', '2019-03-12 04:40:41');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:40:52', '2019-03-12 04:40:52');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:40:53', '2019-03-12 04:40:53');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:40:57', '2019-03-12 04:40:57');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:41:00', '2019-03-12 04:41:00');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\\u7528\\u6237\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.com\\/admin\\/auth\\/menu\"}', '2019-03-12 04:41:12', '2019-03-12 04:41:12');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:41:13', '2019-03-12 04:41:13');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:41:16', '2019-03-12 04:41:16');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:41:28', '2019-03-12 04:41:28');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:41:35', '2019-03-12 04:41:35');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:41:36', '2019-03-12 04:41:36');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:41:38', '2019-03-12 04:41:38');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:41:40', '2019-03-12 04:41:40');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:41:42', '2019-03-12 04:41:42');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:41:44', '2019-03-12 04:41:44');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:41:47', '2019-03-12 04:41:47');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.com\\/admin\\/auth\\/menu\"}', '2019-03-12 04:41:50', '2019-03-12 04:41:50');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:41:51', '2019-03-12 04:41:51');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:42:01', '2019-03-12 04:42:01');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-12 04:42:02', '2019-03-12 04:42:02');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:42:05', '2019-03-12 04:42:05');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:42:09', '2019-03-12 04:42:09');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:43:41', '2019-03-12 04:43:41');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:43:43', '2019-03-12 04:43:43');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:43:45', '2019-03-12 04:43:45');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:45:51', '2019-03-12 04:45:51');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-align-left\",\"uri\":\"article\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\"}', '2019-03-12 04:47:17', '2019-03-12 04:47:17');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:47:17', '2019-03-12 04:47:17');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"icon\":\"fa-align-left\",\"uri\":\"list\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\"}', '2019-03-12 04:48:23', '2019-03-12 04:48:23');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:48:23', '2019-03-12 04:48:23');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:48:36', '2019-03-12 04:48:36');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:49:17', '2019-03-12 04:49:17');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"icon\":\"fa-file-text\",\"uri\":\"list\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.com\\/admin\\/auth\\/menu\"}', '2019-03-12 04:49:42', '2019-03-12 04:49:42');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:49:42', '2019-03-12 04:49:42');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:52:21', '2019-03-12 04:52:21');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:52:25', '2019-03-12 04:52:25');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '[]', '2019-03-12 04:53:26', '2019-03-12 04:53:26');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:53:30', '2019-03-12 04:53:30');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '[]', '2019-03-12 04:56:18', '2019-03-12 04:56:18');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-align-left\",\"uri\":\"artcle\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.com\\/admin\\/auth\\/menu\"}', '2019-03-12 04:56:40', '2019-03-12 04:56:40');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:56:41', '2019-03-12 04:56:41');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:56:44', '2019-03-12 04:56:44');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:56:50', '2019-03-12 04:56:50');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:56:52', '2019-03-12 04:56:52');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:56:54', '2019-03-12 04:56:54');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-align-left\",\"uri\":\"Admin\\/Artcle\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\",\"_method\":\"PUT\"}', '2019-03-12 04:57:02', '2019-03-12 04:57:02');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:57:03', '2019-03-12 04:57:03');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 04:57:06', '2019-03-12 04:57:06');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"icon\":\"fa-file-text\",\"uri\":\"artcle\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.com\\/admin\\/auth\\/menu\"}', '2019-03-12 04:57:15', '2019-03-12 04:57:15');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:57:16', '2019-03-12 04:57:16');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 04:59:47', '2019-03-12 04:59:47');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 05:03:39', '2019-03-12 05:03:39');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 05:04:41', '2019-03-12 05:04:41');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 05:05:58', '2019-03-12 05:05:58');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 05:06:16', '2019-03-12 05:06:16');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 05:06:28', '2019-03-12 05:06:28');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:20:09', '2019-03-12 06:20:09');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 06:20:19', '2019-03-12 06:20:19');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:20:55', '2019-03-12 06:20:55');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:20:57', '2019-03-12 06:20:57');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:20:59', '2019-03-12 06:20:59');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:21:02', '2019-03-12 06:21:02');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:21:04', '2019-03-12 06:21:04');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:21:05', '2019-03-12 06:21:05');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:21:10', '2019-03-12 06:21:10');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:21:15', '2019-03-12 06:21:15');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"UdOk98oyvaY5azHjwLNRO0w0JuYuOcVnL9kBJv5o\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel.com\\/admin\\/auth\\/menu\"}', '2019-03-12 06:21:23', '2019-03-12 06:21:23');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 06:21:23', '2019-03-12 06:21:23');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:21:45', '2019-03-12 06:21:45');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 06:26:31', '2019-03-12 06:26:31');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/artcle', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:26:34', '2019-03-12 06:26:34');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 06:26:34', '2019-03-12 06:26:34');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/artcle', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:26:49', '2019-03-12 06:26:49');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 06:26:50', '2019-03-12 06:26:50');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 06:26:59', '2019-03-12 06:26:59');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/artcle', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:27:01', '2019-03-12 06:27:01');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 06:27:01', '2019-03-12 06:27:01');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 06:27:09', '2019-03-12 06:27:09');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/artcle', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:29:22', '2019-03-12 06:29:22');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 06:29:23', '2019-03-12 06:29:23');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 06:29:31', '2019-03-12 06:29:31');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 06:29:51', '2019-03-12 06:29:51');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 06:31:03', '2019-03-12 06:31:03');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:31:09', '2019-03-12 06:31:09');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:31:12', '2019-03-12 06:31:12');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:31:32', '2019-03-12 06:31:32');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:38:07', '2019-03-12 06:38:07');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-12 06:38:43', '2019-03-12 06:38:43');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-12 06:39:12', '2019-03-12 06:39:12');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:39:25', '2019-03-12 06:39:25');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:39:29', '2019-03-12 06:39:29');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:39:34', '2019-03-12 06:39:34');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/artcle', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:40:46', '2019-03-12 06:40:46');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-03-12 06:40:46', '2019-03-12 06:40:46');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-03-12 06:43:54', '2019-03-12 06:43:54');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-03-12 06:43:57', '2019-03-12 06:43:57');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-03-12 06:44:00', '2019-03-12 06:44:00');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/artcle', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:52:16', '2019-03-12 06:52:16');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-12 06:52:17', '2019-03-12 06:52:17');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-12 06:52:55', '2019-03-12 06:52:55');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/artcle', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 06:52:58', '2019-03-12 06:52:58');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-12 06:52:59', '2019-03-12 06:52:59');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 06:53:07', '2019-03-12 06:53:07');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 06:53:20', '2019-03-12 06:53:20');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 06:53:32', '2019-03-12 06:53:32');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 06:54:18', '2019-03-12 06:54:18');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 06:59:53', '2019-03-12 06:59:53');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:00:19', '2019-03-12 07:00:19');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:00:24', '2019-03-12 07:00:24');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:00:31', '2019-03-12 07:00:31');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:00:34', '2019-03-12 07:00:34');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/artcle', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:00:37', '2019-03-12 07:00:37');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:00:54', '2019-03-12 07:00:54');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:00:59', '2019-03-12 07:00:59');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:01:14', '2019-03-12 07:01:14');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:04:02', '2019-03-12 07:04:02');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:04:59', '2019-03-12 07:04:59');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:05:52', '2019-03-12 07:05:52');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:08:27', '2019-03-12 07:08:27');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:09:27', '2019-03-12 07:09:27');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:12:04', '2019-03-12 07:12:04');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:12:10', '2019-03-12 07:12:10');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:12:17', '2019-03-12 07:12:17');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:14:21', '2019-03-12 07:14:21');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:15:06', '2019-03-12 07:15:06');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:15:44', '2019-03-12 07:15:44');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:15:58', '2019-03-12 07:15:58');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:16:23', '2019-03-12 07:16:23');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:17:29', '2019-03-12 07:17:29');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:17:56', '2019-03-12 07:17:56');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:20:43', '2019-03-12 07:20:43');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:30:22', '2019-03-12 07:30:22');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:30:53', '2019-03-12 07:30:53');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:31:30', '2019-03-12 07:31:30');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/artcle/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:31:37', '2019-03-12 07:31:37');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/artcle', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:31:39', '2019-03-12 07:31:39');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:34:09', '2019-03-12 07:34:09');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:35:32', '2019-03-12 07:35:32');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:45:21', '2019-03-12 07:45:21');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:46:04', '2019-03-12 07:46:04');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:46:14', '2019-03-12 07:46:14');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:46:44', '2019-03-12 07:46:44');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:46:44', '2019-03-12 07:46:44');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:48:22', '2019-03-12 07:48:22');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:48:31', '2019-03-12 07:48:31');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:50:06', '2019-03-12 07:50:06');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:50:18', '2019-03-12 07:50:18');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:50:21', '2019-03-12 07:50:21');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:52:13', '2019-03-12 07:52:13');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:53:55', '2019-03-12 07:53:55');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:55:19', '2019-03-12 07:55:19');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:58:10', '2019-03-12 07:58:10');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:58:22', '2019-03-12 07:58:22');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:58:41', '2019-03-12 07:58:41');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 07:58:58', '2019-03-12 07:58:58');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 08:03:05', '2019-03-12 08:03:05');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 08:04:30', '2019-03-12 08:04:30');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 08:06:41', '2019-03-12 08:06:41');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/artcle', 'GET', '127.0.0.1', '[]', '2019-03-12 08:07:07', '2019-03-12 08:07:07');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/artcle/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:07:10', '2019-03-12 08:07:10');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/artcle/create', 'GET', '127.0.0.1', '[]', '2019-03-12 08:17:07', '2019-03-12 08:17:07');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/artcle/create', 'GET', '127.0.0.1', '[]', '2019-03-12 08:17:16', '2019-03-12 08:17:16');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/artcle/create', 'GET', '127.0.0.1', '[]', '2019-03-12 08:17:45', '2019-03-12 08:17:45');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/artcle/create', 'GET', '127.0.0.1', '[]', '2019-03-12 08:18:29', '2019-03-12 08:18:29');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/artcle/create', 'GET', '127.0.0.1', '[]', '2019-03-12 08:19:29', '2019-03-12 08:19:29');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/artcle/create', 'GET', '127.0.0.1', '[]', '2019-03-12 08:22:12', '2019-03-12 08:22:12');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2019-03-12 03:53:35', '2019-03-12 03:53:35');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '8', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '9', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$Xxfzb1J0dXcQtYMg3LopfOONiKIXp0pXAaoSv8kbClKy41rl6qWT.', 'Administrator', null, 'czwj0ElcWSEoWbJEQtCiGYCoB2p4BqnEr8IIgDtKiBHMdq2Ql2eeD75bAXa2', '2019-03-12 03:53:35', '2019-03-12 03:53:35');
INSERT INTO `admin_users` VALUES ('2', 'admin2', 'sdfsdf', 'admin2', null, 'nsndgknsknkgnsdlmg', '2019-03-12 03:53:35', '2019-03-12 03:53:35');
INSERT INTO `admin_users` VALUES ('3', 'admin3', 'dgdfhadflkhlk', 'admin3', null, 'nsdlnglsngkl', '2019-03-12 03:53:35', '2019-03-12 03:53:35');
INSERT INTO `admin_users` VALUES ('5', 'admin4', 'dgdfhadflkhlk', 'admin3', '', 'nsdlnglsngkl', '2019-03-12 03:53:35', '2019-03-12 03:53:35');
INSERT INTO `admin_users` VALUES ('6', 'sdfsdg', 'dgdfhadflkhlk', 'admin3', '', 'nsdlnglsngkl', '2019-03-12 03:53:35', '2019-03-12 03:53:35');
INSERT INTO `admin_users` VALUES ('7', 'sdfsdf', 'dgdfhadflkhlk', 'admin3', '', 'nsdlnglsngkl', '2019-03-12 03:53:35', '2019-03-12 03:53:35');
INSERT INTO `admin_users` VALUES ('8', 'sdfhndh', 'dgdfhadflkhlk', 'admin3', '', 'nsdlnglsngkl', '2019-03-12 03:53:35', '2019-03-12 03:53:35');
INSERT INTO `admin_users` VALUES ('9', 'sljh', 'dgdfhadflkhlk', 'admin3', '', 'nsdlnglsngkl', '2019-03-12 03:53:35', '2019-03-12 03:53:35');
INSERT INTO `admin_users` VALUES ('10', 'opojjdoh', 'dgdfhadflkhlk', 'admin3', '', 'nsdlnglsngkl', '2019-03-12 03:53:35', '2019-03-12 03:53:35');
INSERT INTO `admin_users` VALUES ('11', 'joijogsd', 'dgdfhadflkhlk', 'admin3', '', 'nsdlnglsngkl', '2019-03-12 03:53:35', '2019-03-12 03:53:35');
INSERT INTO `admin_users` VALUES ('12', '936oojt', 'dgdfhadflkhlk', 'admin3', '', 'nsdlnglsngkl', '2019-03-12 03:53:35', '2019-03-12 03:53:35');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for artcles
-- ----------------------------
DROP TABLE IF EXISTS `artcles`;
CREATE TABLE `artcles` (
  `artcle_id` int(11) NOT NULL AUTO_INCREMENT,
  `artcle_userid` int(11) DEFAULT NULL,
  `artcle_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artcle_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `artcle_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`artcle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of artcles
-- ----------------------------
INSERT INTO `artcles` VALUES ('1', '1', '测试文字', '测试', '2019-03-12', '2019-03-12', null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
