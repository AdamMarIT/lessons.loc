/*
Navicat MySQL Data Transfer

Source Server         : beetroot
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : lessons

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-05-05 11:26:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_city_name_unique` (`city_name`)
) ENGINE=InnoDB AUTO_INCREMENT=709931 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES ('593871', 'Одесса', 'Odesa', '2019-05-04 23:42:53', '2019-05-04 23:42:57');
INSERT INTO `cities` VALUES ('703448', 'Киев', 'Kiev', '2019-05-04 23:38:19', '2019-05-04 23:38:22');
INSERT INTO `cities` VALUES ('704147', 'Кременчуг', 'Kremenchuk', '2019-05-04 21:22:41', '2019-05-04 21:22:38');
INSERT INTO `cities` VALUES ('709930', 'Днепр', ' Dnipropetrovsk', '2019-05-04 23:39:18', '2019-05-04 23:39:21');

-- ----------------------------
-- Table structure for current_weathers
-- ----------------------------
DROP TABLE IF EXISTS `current_weathers`;
CREATE TABLE `current_weathers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `temperature` double(4,2) NOT NULL,
  `condition` smallint(6) NOT NULL,
  `pressure` smallint(6) NOT NULL,
  `humidity` smallint(6) NOT NULL,
  `wind` double(4,2) NOT NULL,
  `icon` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed_weather` int(11) NOT NULL,
  `sunrise` int(11) NOT NULL,
  `sunset` int(11) NOT NULL,
  `difference_in_time` smallint(6) NOT NULL DEFAULT '10800',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of current_weathers
-- ----------------------------
INSERT INTO `current_weathers` VALUES ('1', '704147', '14.38', '500', '1011', '81', '3.80', '10n', '1556993482', '1556936456', '1556989510', '10800', '2019-05-04 18:11:22', '2019-05-04 18:11:22');
INSERT INTO `current_weathers` VALUES ('2', '703448', '13.56', '800', '1009', '76', '1.00', '01n', '1556994913', '1556936907', '1556990455', '10800', '2019-05-04 18:43:40', '2019-05-04 18:43:40');
INSERT INTO `current_weathers` VALUES ('3', '703448', '13.56', '800', '1009', '76', '1.00', '01n', '1556994913', '1556936907', '1556990455', '10800', '2019-05-04 18:44:31', '2019-05-04 18:44:31');
INSERT INTO `current_weathers` VALUES ('4', '703448', '13.56', '800', '1009', '76', '1.00', '01n', '1556995474', '1556936907', '1556990455', '10800', '2019-05-04 18:46:18', '2019-05-04 18:46:18');
INSERT INTO `current_weathers` VALUES ('5', '703448', '13.56', '800', '1009', '76', '1.00', '01n', '1556995546', '1556936907', '1556990455', '10800', '2019-05-04 18:54:55', '2019-05-04 18:54:55');
INSERT INTO `current_weathers` VALUES ('6', '703448', '13.56', '800', '1009', '76', '1.00', '01n', '1556995546', '1556936907', '1556990455', '10800', '2019-05-04 18:57:03', '2019-05-04 18:57:03');
INSERT INTO `current_weathers` VALUES ('7', '703448', '12.77', '800', '1009', '81', '1.79', '01n', '1556996201', '1556936907', '1556990455', '10800', '2019-05-04 18:58:07', '2019-05-04 18:58:07');
INSERT INTO `current_weathers` VALUES ('8', '703448', '12.78', '800', '1009', '81', '1.79', '01n', '1556996201', '1556936907', '1556990455', '10800', '2019-05-04 19:06:11', '2019-05-04 19:06:11');
INSERT INTO `current_weathers` VALUES ('9', '703448', '12.78', '800', '1009', '81', '1.79', '01n', '1556996201', '1556936907', '1556990455', '10800', '2019-05-04 19:07:08', '2019-05-04 19:07:08');
INSERT INTO `current_weathers` VALUES ('10', '703448', '12.77', '800', '1009', '81', '1.79', '01n', '1556996201', '1556936907', '1556990455', '10800', '2019-05-04 19:07:29', '2019-05-04 19:07:29');
INSERT INTO `current_weathers` VALUES ('11', '703448', '12.78', '800', '1009', '81', '1.79', '01n', '1556996201', '1556936907', '1556990455', '10800', '2019-05-04 19:10:39', '2019-05-04 19:10:39');
INSERT INTO `current_weathers` VALUES ('12', '2643743', '7.43', '521', '1022', '66', '4.10', '09d', '1556997287', '1556944045', '1556998028', '10800', '2019-05-04 19:15:23', '2019-05-04 19:15:23');
INSERT INTO `current_weathers` VALUES ('13', '2643743', '7.43', '521', '1022', '66', '4.10', '09d', '1556997287', '1556944045', '1556998028', '10800', '2019-05-04 19:17:11', '2019-05-04 19:17:11');
INSERT INTO `current_weathers` VALUES ('14', '703448', '12.85', '800', '1009', '81', '2.00', '01n', '1556998663', '1556936907', '1556990455', '10800', '2019-05-04 19:41:17', '2019-05-04 19:41:17');
INSERT INTO `current_weathers` VALUES ('15', '703448', '12.85', '800', '1009', '81', '2.00', '01n', '1556998663', '1556936907', '1556990455', '10800', '2019-05-04 19:43:01', '2019-05-04 19:43:01');
INSERT INTO `current_weathers` VALUES ('16', '703448', '12.85', '800', '1009', '81', '2.00', '01n', '1556998663', '1556936907', '1556990455', '10800', '2019-05-04 19:43:17', '2019-05-04 19:43:17');
INSERT INTO `current_weathers` VALUES ('17', '703448', '12.85', '800', '1009', '81', '2.00', '01n', '1556998663', '1556936907', '1556990455', '10800', '2019-05-04 19:44:35', '2019-05-04 19:44:35');
INSERT INTO `current_weathers` VALUES ('18', '703448', '12.85', '800', '1009', '81', '2.00', '01n', '1556998663', '1556936907', '1556990455', '10800', '2019-05-04 19:44:49', '2019-05-04 19:44:49');
INSERT INTO `current_weathers` VALUES ('19', '703448', '12.85', '800', '1009', '81', '2.00', '01n', '1556998663', '1556936907', '1556990455', '10800', '2019-05-04 19:45:45', '2019-05-04 19:45:45');
INSERT INTO `current_weathers` VALUES ('20', '706448', '12.00', '800', '1012', '81', '5.00', '01n', '1556996400', '1556937060', '1556989299', '10800', '2019-05-04 19:48:45', '2019-05-04 19:48:45');
INSERT INTO `current_weathers` VALUES ('21', '710719', '11.81', '802', '1006', '93', '1.78', '03n', '1556999140', '1556938388', '1556991172', '10800', '2019-05-04 19:48:58', '2019-05-04 19:48:58');
INSERT INTO `current_weathers` VALUES ('22', '703448', '12.85', '800', '1009', '81', '2.00', '01n', '1556998663', '1556936907', '1556990455', '10800', '2019-05-04 19:49:05', '2019-05-04 19:49:05');
INSERT INTO `current_weathers` VALUES ('23', '703448', '11.86', '800', '1009', '93', '2.60', '01n', '1556999835', '1556936907', '1556990455', '10800', '2019-05-04 20:09:12', '2019-05-04 20:09:12');
INSERT INTO `current_weathers` VALUES ('24', '703448', '13.20', '800', '1009', '82', '2.00', '01n', '1557002016', '1556936907', '1556990455', '10800', '2019-05-04 20:38:36', '2019-05-04 20:38:36');
INSERT INTO `current_weathers` VALUES ('25', '709930', '12.85', '800', '1014', '67', '3.00', '01n', '1557000000', '1556936194', '1556989028', '10800', '2019-05-04 20:38:51', '2019-05-04 20:38:51');
INSERT INTO `current_weathers` VALUES ('26', '593871', '5.84', '800', '1007', '60', '1.50', '01n', '1557001882', '1556937423', '1556992675', '10800', '2019-05-04 20:42:29', '2019-05-04 20:42:29');
INSERT INTO `current_weathers` VALUES ('27', '593871', '5.50', '800', '1006', '65', '2.10', '01n', '1557002811', '1556937423', '1556992675', '10800', '2019-05-04 20:54:20', '2019-05-04 20:54:20');
INSERT INTO `current_weathers` VALUES ('28', '593871', '5.49', '800', '1006', '65', '2.10', '01n', '1557002811', '1556937423', '1556992675', '10800', '2019-05-04 20:57:47', '2019-05-04 20:57:47');
INSERT INTO `current_weathers` VALUES ('29', '593871', '5.49', '800', '1006', '65', '2.10', '01n', '1557002811', '1556937423', '1556992675', '10800', '2019-05-04 20:58:07', '2019-05-04 20:58:07');
INSERT INTO `current_weathers` VALUES ('30', '593871', '5.50', '800', '1006', '65', '2.10', '01n', '1557002811', '1556937423', '1556992675', '10800', '2019-05-04 21:00:54', '2019-05-04 21:00:54');
INSERT INTO `current_weathers` VALUES ('31', '593871', '5.49', '800', '1006', '65', '2.10', '01n', '1557002811', '1556937423', '1556992675', '10800', '2019-05-04 21:07:15', '2019-05-04 21:07:15');
INSERT INTO `current_weathers` VALUES ('32', '703448', '13.31', '800', '1009', '71', '3.00', '01n', '1557003700', '1557023204', '1557076948', '10800', '2019-05-04 21:07:30', '2019-05-04 21:07:30');
INSERT INTO `current_weathers` VALUES ('33', '703448', '13.41', '800', '1009', '71', '3.00', '01n', '1557004301', '1557023204', '1557076948', '10800', '2019-05-04 21:21:47', '2019-05-04 21:21:47');
INSERT INTO `current_weathers` VALUES ('34', '703448', '13.24', '520', '1009', '76', '4.00', '09n', '1557004922', '1557023204', '1557076948', '10800', '2019-05-04 21:31:35', '2019-05-04 21:31:35');
INSERT INTO `current_weathers` VALUES ('35', '703448', '13.24', '520', '1009', '76', '4.00', '09n', '1557004922', '1557023204', '1557076948', '10800', '2019-05-04 21:34:19', '2019-05-04 21:34:19');
INSERT INTO `current_weathers` VALUES ('36', '703448', '13.20', '520', '1009', '76', '4.00', '09n', '1557005447', '1557023204', '1557076948', '10800', '2019-05-04 21:34:23', '2019-05-04 21:34:23');
INSERT INTO `current_weathers` VALUES ('37', '593871', '5.52', '800', '1007', '65', '1.50', '01n', '1557005526', '1557023701', '1557079188', '10800', '2019-05-04 21:34:29', '2019-05-04 21:34:29');
INSERT INTO `current_weathers` VALUES ('38', '709930', '11.85', '800', '1014', '71', '1.00', '01n', '1557003600', '1557022498', '1557075514', '10800', '2019-05-04 21:34:34', '2019-05-04 21:34:34');
INSERT INTO `current_weathers` VALUES ('39', '703448', '13.20', '520', '1009', '76', '4.00', '09n', '1557005447', '1557023204', '1557076948', '10800', '2019-05-04 21:44:20', '2019-05-04 21:44:20');
INSERT INTO `current_weathers` VALUES ('40', '703448', '15.78', '500', '1009', '77', '4.00', '10d', '1557039190', '1557023204', '1557076948', '10800', '2019-05-05 06:55:48', '2019-05-05 06:55:48');
INSERT INTO `current_weathers` VALUES ('41', '703448', '15.68', '800', '1009', '77', '4.00', '01d', '1557038804', '1557023204', '1557076948', '10800', '2019-05-05 06:57:08', '2019-05-05 06:57:08');
INSERT INTO `current_weathers` VALUES ('42', '703448', '15.68', '800', '1009', '77', '4.00', '01d', '1557038804', '1557023204', '1557076948', '10800', '2019-05-05 06:57:17', '2019-05-05 06:57:17');
INSERT INTO `current_weathers` VALUES ('43', '593871', '8.21', '800', '1007', '66', '3.60', '01d', '1557038841', '1557023701', '1557079188', '10800', '2019-05-05 06:57:25', '2019-05-05 06:57:25');
INSERT INTO `current_weathers` VALUES ('44', '703448', '15.68', '800', '1009', '77', '4.00', '01d', '1557038804', '1557023204', '1557076948', '10800', '2019-05-05 06:58:19', '2019-05-05 06:58:19');
INSERT INTO `current_weathers` VALUES ('45', '704147', '15.98', '801', '1013', '65', '6.01', '02d', '1557039245', '1557022758', '1557075998', '10800', '2019-05-05 06:58:24', '2019-05-05 06:58:24');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('18', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('19', '2019_05_04_121356_create_current_weathers_table', '1');
INSERT INTO `migrations` VALUES ('20', '2019_05_04_121954_create_cities_table', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Marina', 'marina@test.com', null, '$2y$10$2iXYG.1m5dyVrQ/eYkk8Pu1xBLD/j1o44DKZTUt3gm4Gj0EnIq.6y', null, '2019-05-04 20:03:59', '2019-05-04 20:03:59');
SET FOREIGN_KEY_CHECKS=1;
