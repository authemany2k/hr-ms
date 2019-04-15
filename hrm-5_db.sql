/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : hrm-5_db

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-01-30 16:08:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for absences
-- ----------------------------
DROP TABLE IF EXISTS `absences`;
CREATE TABLE `absences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of absences
-- ----------------------------

-- ----------------------------
-- Table structure for attendances
-- ----------------------------
DROP TABLE IF EXISTS `attendances`;
CREATE TABLE `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of attendances
-- ----------------------------

-- ----------------------------
-- Table structure for awards
-- ----------------------------
DROP TABLE IF EXISTS `awards`;
CREATE TABLE `awards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `award_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gift_item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cash_price` decimal(10,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of awards
-- ----------------------------
INSERT INTO `awards` VALUES ('1', '40', 'Nihil ut et.', 'Repellendus commodi.', '3356.00', null, '2019-01-30 13:43:56', '2019-01-30 13:43:56');
INSERT INTO `awards` VALUES ('2', '48', 'Corrupti non.', 'Voluptas eaque.', '3978.00', null, '2019-01-30 13:43:56', '2019-01-30 13:43:56');
INSERT INTO `awards` VALUES ('3', '42', 'Facere ut dolor.', 'Non in earum.', '1157.00', null, '2019-01-30 13:43:57', '2019-01-30 13:43:57');
INSERT INTO `awards` VALUES ('4', '28', 'Impedit laborum.', 'Enim et sed officia.', '4854.00', null, '2019-01-30 13:43:57', '2019-01-30 13:43:57');
INSERT INTO `awards` VALUES ('5', '11', 'Libero voluptas.', 'Ut vel velit et.', '968.00', null, '2019-01-30 13:43:57', '2019-01-30 13:43:57');
INSERT INTO `awards` VALUES ('6', '8', 'Autem et modi.', 'Doloribus dolorem.', '2059.00', null, '2019-01-30 13:43:57', '2019-01-30 13:43:57');
INSERT INTO `awards` VALUES ('7', '35', 'Nostrum veniam ut.', 'Laudantium.', '704.00', null, '2019-01-30 13:43:57', '2019-01-30 13:43:57');
INSERT INTO `awards` VALUES ('8', '49', 'Est eius ipsam quas.', 'Sint ut repellat id.', '506.00', null, '2019-01-30 13:43:57', '2019-01-30 13:43:57');
INSERT INTO `awards` VALUES ('9', '9', 'Fugiat eum eius et.', 'Quam esse tempora.', '4429.00', null, '2019-01-30 13:43:57', '2019-01-30 13:43:57');
INSERT INTO `awards` VALUES ('10', '20', 'Sint et minus.', 'Neque qui dolores.', '1145.00', null, '2019-01-30 13:43:57', '2019-01-30 13:43:57');
INSERT INTO `awards` VALUES ('11', '48', 'Quisquam ullam.', 'Sint sint omnis.', '811.00', null, '2019-01-30 13:43:57', '2019-01-30 13:43:57');
INSERT INTO `awards` VALUES ('12', '27', 'Explicabo et alias.', 'A qui culpa.', '2852.00', null, '2019-01-30 13:43:57', '2019-01-30 13:43:57');
INSERT INTO `awards` VALUES ('13', '50', 'Aut doloribus vel.', 'Enim et voluptas.', '2775.00', null, '2019-01-30 13:43:57', '2019-01-30 13:43:57');
INSERT INTO `awards` VALUES ('14', '2', 'Asperiores eum.', 'Vero libero cum.', '2652.00', null, '2019-01-30 13:43:57', '2019-01-30 13:43:57');
INSERT INTO `awards` VALUES ('15', '9', 'Ad harum a unde.', 'Quia molestiae.', '1424.00', null, '2019-01-30 13:43:58', '2019-01-30 13:43:58');
INSERT INTO `awards` VALUES ('16', '1', 'Odit cumque nulla.', 'Quia ipsam id sed.', '4177.00', null, '2019-01-30 13:43:58', '2019-01-30 13:43:58');
INSERT INTO `awards` VALUES ('17', '41', 'Eius facilis.', 'Aliquid enim iste.', '3408.00', null, '2019-01-30 13:43:58', '2019-01-30 13:43:58');
INSERT INTO `awards` VALUES ('18', '22', 'Eos quibusdam ipsum.', 'Sit sequi ad.', '1506.00', null, '2019-01-30 13:43:58', '2019-01-30 13:43:58');
INSERT INTO `awards` VALUES ('19', '14', 'Nobis eius.', 'Ut voluptatem.', '2086.00', null, '2019-01-30 13:43:58', '2019-01-30 13:43:58');
INSERT INTO `awards` VALUES ('20', '19', 'Eligendi unde.', 'Quo aspernatur sint.', '3895.00', null, '2019-01-30 13:43:58', '2019-01-30 13:43:58');
INSERT INTO `awards` VALUES ('21', '39', 'Et itaque ut.', 'Sunt accusantium.', '1154.00', null, '2019-01-30 13:43:58', '2019-01-30 13:43:58');
INSERT INTO `awards` VALUES ('22', '49', 'Nihil praesentium.', 'Consequatur in.', '1829.00', null, '2019-01-30 13:43:58', '2019-01-30 13:43:58');
INSERT INTO `awards` VALUES ('23', '6', 'Ducimus delectus.', 'Est laborum.', '4931.00', null, '2019-01-30 13:43:58', '2019-01-30 13:43:58');
INSERT INTO `awards` VALUES ('24', '35', 'Et ut nobis iusto.', 'Aperiam aspernatur.', '2983.00', null, '2019-01-30 13:43:58', '2019-01-30 13:43:58');
INSERT INTO `awards` VALUES ('25', '12', 'Consequatur porro.', 'Reiciendis qui.', '4296.00', null, '2019-01-30 13:43:58', '2019-01-30 13:43:58');
INSERT INTO `awards` VALUES ('26', '20', 'Porro non id et.', 'Vel necessitatibus.', '2919.00', null, '2019-01-30 13:43:58', '2019-01-30 13:43:58');
INSERT INTO `awards` VALUES ('27', '47', 'Numquam autem.', 'Neque culpa velit.', '1438.00', null, '2019-01-30 13:43:59', '2019-01-30 13:43:59');
INSERT INTO `awards` VALUES ('28', '28', 'Rerum minus aut.', 'Quo voluptas.', '1255.00', null, '2019-01-30 13:43:59', '2019-01-30 13:43:59');
INSERT INTO `awards` VALUES ('29', '4', 'Harum ratione nam.', 'Assumenda natus.', '4502.00', null, '2019-01-30 13:43:59', '2019-01-30 13:43:59');
INSERT INTO `awards` VALUES ('30', '25', 'Rerum architecto.', 'Rerum aliquam vel.', '3215.00', null, '2019-01-30 13:43:59', '2019-01-30 13:43:59');
INSERT INTO `awards` VALUES ('31', '7', 'Qui odit.', 'Ut aut repudiandae.', '3474.00', null, '2019-01-30 13:43:59', '2019-01-30 13:43:59');
INSERT INTO `awards` VALUES ('32', '43', 'Temporibus illum.', 'Est modi fuga est.', '1754.00', null, '2019-01-30 13:43:59', '2019-01-30 13:43:59');
INSERT INTO `awards` VALUES ('33', '3', 'Aut officia.', 'Asperiores adipisci.', '1102.00', null, '2019-01-30 13:43:59', '2019-01-30 13:43:59');
INSERT INTO `awards` VALUES ('34', '43', 'Veniam cum voluptas.', 'Et consequatur est.', '4898.00', null, '2019-01-30 13:43:59', '2019-01-30 13:43:59');
INSERT INTO `awards` VALUES ('35', '45', 'Expedita quae aut.', 'Excepturi ut sed.', '4629.00', null, '2019-01-30 13:43:59', '2019-01-30 13:43:59');
INSERT INTO `awards` VALUES ('36', '33', 'Numquam sed cumque.', 'Aliquam quod rerum.', '3765.00', null, '2019-01-30 13:43:59', '2019-01-30 13:43:59');
INSERT INTO `awards` VALUES ('37', '14', 'Sunt quidem et.', 'Occaecati et sed.', '3536.00', null, '2019-01-30 13:43:59', '2019-01-30 13:43:59');
INSERT INTO `awards` VALUES ('38', '14', 'Asperiores.', 'Eos at recusandae.', '4018.00', null, '2019-01-30 13:43:59', '2019-01-30 13:43:59');
INSERT INTO `awards` VALUES ('39', '13', 'Cumque voluptatibus.', 'Ad ex et voluptatem.', '4375.00', null, '2019-01-30 13:44:00', '2019-01-30 13:44:00');
INSERT INTO `awards` VALUES ('40', '34', 'Doloribus sed sunt.', 'Exercitationem.', '1986.00', null, '2019-01-30 13:44:00', '2019-01-30 13:44:00');
INSERT INTO `awards` VALUES ('41', '17', 'Rerum saepe cumque.', 'Ducimus est quae.', '1770.00', null, '2019-01-30 13:44:00', '2019-01-30 13:44:00');
INSERT INTO `awards` VALUES ('42', '35', 'Ducimus delectus.', 'Est culpa.', '676.00', null, '2019-01-30 13:44:00', '2019-01-30 13:44:00');
INSERT INTO `awards` VALUES ('43', '48', 'Dicta et.', 'Nam fugit saepe.', '1428.00', null, '2019-01-30 13:44:00', '2019-01-30 13:44:00');
INSERT INTO `awards` VALUES ('44', '42', 'Sint quas totam.', 'Quo laborum et.', '2984.00', null, '2019-01-30 13:44:00', '2019-01-30 13:44:00');
INSERT INTO `awards` VALUES ('45', '47', 'Cupiditate quia.', 'Voluptatem nisi non.', '2357.00', null, '2019-01-30 13:44:00', '2019-01-30 13:44:00');
INSERT INTO `awards` VALUES ('46', '27', 'Velit ad molestias.', 'Quo ea et placeat.', '2303.00', null, '2019-01-30 13:44:00', '2019-01-30 13:44:00');
INSERT INTO `awards` VALUES ('47', '47', 'Voluptatum libero.', 'Quis accusantium.', '4370.00', null, '2019-01-30 13:44:01', '2019-01-30 13:44:01');
INSERT INTO `awards` VALUES ('48', '37', 'Ratione et.', 'Eveniet maxime.', '4820.00', null, '2019-01-30 13:44:01', '2019-01-30 13:44:01');
INSERT INTO `awards` VALUES ('49', '30', 'Dolor eos aperiam.', 'Rerum nostrum aut.', '1685.00', null, '2019-01-30 13:44:01', '2019-01-30 13:44:01');
INSERT INTO `awards` VALUES ('50', '1', 'Id minima ex illo.', 'Rerum repellat.', '3617.00', null, '2019-01-30 13:44:01', '2019-01-30 13:44:01');

-- ----------------------------
-- Table structure for bank_accounts
-- ----------------------------
DROP TABLE IF EXISTS `bank_accounts`;
CREATE TABLE `bank_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `account_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bank_accounts
-- ----------------------------
INSERT INTO `bank_accounts` VALUES ('1', '1', 'Quis magnam.', '56583848', 'EastWest', null, '2019-01-30 13:44:02', '2019-01-30 13:44:02');
INSERT INTO `bank_accounts` VALUES ('2', '2', 'Earum non nam minus.', '92306004', 'EastWest', null, '2019-01-30 13:44:02', '2019-01-30 13:44:02');
INSERT INTO `bank_accounts` VALUES ('3', '3', 'Ut aut voluptatem.', '51037295', 'EastWest', null, '2019-01-30 13:44:02', '2019-01-30 13:44:02');
INSERT INTO `bank_accounts` VALUES ('4', '4', 'Dolores omnis.', '73509123', 'EastWest', null, '2019-01-30 13:44:03', '2019-01-30 13:44:03');
INSERT INTO `bank_accounts` VALUES ('5', '5', 'Fuga tenetur.', '96100236', 'EastWest', null, '2019-01-30 13:44:03', '2019-01-30 13:44:03');
INSERT INTO `bank_accounts` VALUES ('6', '6', 'Occaecati et quia.', '10931923', 'EastWest', null, '2019-01-30 13:44:03', '2019-01-30 13:44:03');
INSERT INTO `bank_accounts` VALUES ('7', '7', 'Odio fugiat.', '55043411', 'EastWest', null, '2019-01-30 13:44:03', '2019-01-30 13:44:03');
INSERT INTO `bank_accounts` VALUES ('8', '8', 'Autem praesentium.', '30785800', 'EastWest', null, '2019-01-30 13:44:03', '2019-01-30 13:44:03');
INSERT INTO `bank_accounts` VALUES ('9', '9', 'Qui autem nihil.', '50225213', 'EastWest', null, '2019-01-30 13:44:03', '2019-01-30 13:44:03');
INSERT INTO `bank_accounts` VALUES ('10', '10', 'Est eos incidunt.', '9966422', 'EastWest', null, '2019-01-30 13:44:03', '2019-01-30 13:44:03');
INSERT INTO `bank_accounts` VALUES ('11', '11', 'Inventore molestias.', '9544788', 'EastWest', null, '2019-01-30 13:44:03', '2019-01-30 13:44:03');
INSERT INTO `bank_accounts` VALUES ('12', '12', 'Veritatis vel.', '4476058', 'EastWest', null, '2019-01-30 13:44:03', '2019-01-30 13:44:03');
INSERT INTO `bank_accounts` VALUES ('13', '13', 'Blanditiis ut.', '61236095', 'EastWest', null, '2019-01-30 13:44:03', '2019-01-30 13:44:03');
INSERT INTO `bank_accounts` VALUES ('14', '14', 'Nulla et ea et.', '27222803', 'EastWest', null, '2019-01-30 13:44:03', '2019-01-30 13:44:03');
INSERT INTO `bank_accounts` VALUES ('15', '15', 'Consectetur ex quia.', '89292206', 'EastWest', null, '2019-01-30 13:44:03', '2019-01-30 13:44:03');
INSERT INTO `bank_accounts` VALUES ('16', '16', 'Libero omnis culpa.', '15773312', 'EastWest', null, '2019-01-30 13:44:03', '2019-01-30 13:44:03');
INSERT INTO `bank_accounts` VALUES ('17', '17', 'Animi aliquid ipsa.', '53847170', 'EastWest', null, '2019-01-30 13:44:04', '2019-01-30 13:44:04');
INSERT INTO `bank_accounts` VALUES ('18', '18', 'Expedita eos.', '46622302', 'EastWest', null, '2019-01-30 13:44:04', '2019-01-30 13:44:04');
INSERT INTO `bank_accounts` VALUES ('19', '19', 'Dolorem iste.', '99558992', 'EastWest', null, '2019-01-30 13:44:04', '2019-01-30 13:44:04');
INSERT INTO `bank_accounts` VALUES ('20', '20', 'Voluptatem sapiente.', '24133437', 'EastWest', null, '2019-01-30 13:44:04', '2019-01-30 13:44:04');
INSERT INTO `bank_accounts` VALUES ('21', '21', 'Blanditiis eum.', '51912909', 'EastWest', null, '2019-01-30 13:44:04', '2019-01-30 13:44:04');
INSERT INTO `bank_accounts` VALUES ('22', '22', 'Maiores impedit.', '64157634', 'EastWest', null, '2019-01-30 13:44:04', '2019-01-30 13:44:04');
INSERT INTO `bank_accounts` VALUES ('23', '23', 'Nulla ipsam neque.', '56916190', 'EastWest', null, '2019-01-30 13:44:04', '2019-01-30 13:44:04');
INSERT INTO `bank_accounts` VALUES ('24', '24', 'Quibusdam velit rem.', '99800744', 'EastWest', null, '2019-01-30 13:44:04', '2019-01-30 13:44:04');
INSERT INTO `bank_accounts` VALUES ('25', '25', 'Ipsam hic ipsam ut.', '57210374', 'EastWest', null, '2019-01-30 13:44:04', '2019-01-30 13:44:04');
INSERT INTO `bank_accounts` VALUES ('26', '26', 'Ab facilis.', '68138357', 'EastWest', null, '2019-01-30 13:44:04', '2019-01-30 13:44:04');
INSERT INTO `bank_accounts` VALUES ('27', '27', 'Deleniti culpa.', '44962337', 'EastWest', null, '2019-01-30 13:44:04', '2019-01-30 13:44:04');
INSERT INTO `bank_accounts` VALUES ('28', '28', 'Et quisquam cumque.', '99112871', 'EastWest', null, '2019-01-30 13:44:05', '2019-01-30 13:44:05');
INSERT INTO `bank_accounts` VALUES ('29', '29', 'Et rerum quia.', '92044871', 'EastWest', null, '2019-01-30 13:44:05', '2019-01-30 13:44:05');
INSERT INTO `bank_accounts` VALUES ('30', '30', 'Ea molestiae.', '62466029', 'EastWest', null, '2019-01-30 13:44:05', '2019-01-30 13:44:05');
INSERT INTO `bank_accounts` VALUES ('31', '31', 'Eum occaecati non.', '74311288', 'EastWest', null, '2019-01-30 13:44:05', '2019-01-30 13:44:05');
INSERT INTO `bank_accounts` VALUES ('32', '32', 'In rerum fugit.', '66197625', 'EastWest', null, '2019-01-30 13:44:05', '2019-01-30 13:44:05');
INSERT INTO `bank_accounts` VALUES ('33', '33', 'Officiis maxime.', '51668509', 'EastWest', null, '2019-01-30 13:44:05', '2019-01-30 13:44:05');
INSERT INTO `bank_accounts` VALUES ('34', '34', 'Non suscipit esse.', '88161828', 'EastWest', null, '2019-01-30 13:44:05', '2019-01-30 13:44:05');
INSERT INTO `bank_accounts` VALUES ('35', '35', 'Nostrum rerum est.', '81485777', 'EastWest', null, '2019-01-30 13:44:05', '2019-01-30 13:44:05');
INSERT INTO `bank_accounts` VALUES ('36', '36', 'Aperiam incidunt ut.', '21148874', 'EastWest', null, '2019-01-30 13:44:05', '2019-01-30 13:44:05');
INSERT INTO `bank_accounts` VALUES ('37', '37', 'Aut sunt rem ex.', '81822424', 'EastWest', null, '2019-01-30 13:44:05', '2019-01-30 13:44:05');
INSERT INTO `bank_accounts` VALUES ('38', '38', 'Rem laudantium qui.', '10388722', 'EastWest', null, '2019-01-30 13:44:05', '2019-01-30 13:44:05');
INSERT INTO `bank_accounts` VALUES ('39', '39', 'Placeat qui.', '35175046', 'EastWest', null, '2019-01-30 13:44:05', '2019-01-30 13:44:05');
INSERT INTO `bank_accounts` VALUES ('40', '40', 'Qui aut voluptates.', '48543507', 'EastWest', null, '2019-01-30 13:44:06', '2019-01-30 13:44:06');
INSERT INTO `bank_accounts` VALUES ('41', '41', 'Quia molestiae.', '68523872', 'EastWest', null, '2019-01-30 13:44:06', '2019-01-30 13:44:06');
INSERT INTO `bank_accounts` VALUES ('42', '42', 'Dignissimos autem.', '19265326', 'EastWest', null, '2019-01-30 13:44:06', '2019-01-30 13:44:06');
INSERT INTO `bank_accounts` VALUES ('43', '43', 'Doloremque iure quo.', '29272317', 'EastWest', null, '2019-01-30 13:44:06', '2019-01-30 13:44:06');
INSERT INTO `bank_accounts` VALUES ('44', '44', 'Sunt totam aut.', '24479090', 'EastWest', null, '2019-01-30 13:44:06', '2019-01-30 13:44:06');
INSERT INTO `bank_accounts` VALUES ('45', '45', 'Est voluptates non.', '57285655', 'EastWest', null, '2019-01-30 13:44:06', '2019-01-30 13:44:06');
INSERT INTO `bank_accounts` VALUES ('46', '46', 'Autem qui aperiam.', '86473645', 'EastWest', null, '2019-01-30 13:44:06', '2019-01-30 13:44:06');
INSERT INTO `bank_accounts` VALUES ('47', '47', 'Repellendus tempora.', '65544863', 'EastWest', null, '2019-01-30 13:44:06', '2019-01-30 13:44:06');
INSERT INTO `bank_accounts` VALUES ('48', '48', 'Debitis ex sed.', '64762156', 'EastWest', null, '2019-01-30 13:44:06', '2019-01-30 13:44:06');
INSERT INTO `bank_accounts` VALUES ('49', '49', 'Aut dicta minima.', '29117768', 'EastWest', null, '2019-01-30 13:44:06', '2019-01-30 13:44:06');
INSERT INTO `bank_accounts` VALUES ('50', '50', 'Similique excepturi.', '30127197', 'EastWest', null, '2019-01-30 13:44:06', '2019-01-30 13:44:06');

-- ----------------------------
-- Table structure for candidates
-- ----------------------------
DROP TABLE IF EXISTS `candidates`;
CREATE TABLE `candidates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_vacancy_id` int(11) NOT NULL,
  `resume` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `application_date` date NOT NULL,
  `status` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `candidates_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of candidates
-- ----------------------------

-- ----------------------------
-- Table structure for cut_offs
-- ----------------------------
DROP TABLE IF EXISTS `cut_offs`;
CREATE TABLE `cut_offs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cut_offs
-- ----------------------------

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('1', 'Web Development', '0', null, '2019-01-30 13:43:52', '2019-01-30 13:43:52');
INSERT INTO `departments` VALUES ('2', 'Marketing', '0', null, '2019-01-30 13:43:52', '2019-01-30 13:43:52');
INSERT INTO `departments` VALUES ('3', 'Sales', '0', null, '2019-01-30 13:43:52', '2019-01-30 13:43:52');
INSERT INTO `departments` VALUES ('4', 'Admin', '0', null, '2019-01-30 13:43:52', '2019-01-30 13:43:52');
INSERT INTO `departments` VALUES ('5', 'Content', '0', null, '2019-01-30 13:43:52', '2019-01-30 13:43:52');

-- ----------------------------
-- Table structure for designations
-- ----------------------------
DROP TABLE IF EXISTS `designations`;
CREATE TABLE `designations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `designation_item_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of designations
-- ----------------------------
INSERT INTO `designations` VALUES ('1', '1', '7', '2015-11-01', null, null, '2019-01-30 13:44:07', '2019-01-30 13:44:07');
INSERT INTO `designations` VALUES ('2', '2', '4', '2015-06-20', null, null, '2019-01-30 13:44:07', '2019-01-30 13:44:07');
INSERT INTO `designations` VALUES ('3', '3', '10', '2015-07-05', null, null, '2019-01-30 13:44:07', '2019-01-30 13:44:07');
INSERT INTO `designations` VALUES ('4', '4', '2', '2015-06-08', null, null, '2019-01-30 13:44:07', '2019-01-30 13:44:07');
INSERT INTO `designations` VALUES ('5', '5', '2', '2015-09-15', null, null, '2019-01-30 13:44:07', '2019-01-30 13:44:07');
INSERT INTO `designations` VALUES ('6', '6', '10', '2015-10-16', null, null, '2019-01-30 13:44:08', '2019-01-30 13:44:08');
INSERT INTO `designations` VALUES ('7', '7', '10', '2015-05-25', null, null, '2019-01-30 13:44:08', '2019-01-30 13:44:08');
INSERT INTO `designations` VALUES ('8', '8', '10', '2015-09-04', null, null, '2019-01-30 13:44:08', '2019-01-30 13:44:08');
INSERT INTO `designations` VALUES ('9', '9', '5', '2015-05-02', null, null, '2019-01-30 13:44:08', '2019-01-30 13:44:08');
INSERT INTO `designations` VALUES ('10', '10', '1', '2015-09-28', null, null, '2019-01-30 13:44:08', '2019-01-30 13:44:08');
INSERT INTO `designations` VALUES ('11', '11', '1', '2015-04-29', null, null, '2019-01-30 13:44:08', '2019-01-30 13:44:08');
INSERT INTO `designations` VALUES ('12', '12', '11', '2015-08-21', null, null, '2019-01-30 13:44:08', '2019-01-30 13:44:08');
INSERT INTO `designations` VALUES ('13', '13', '11', '2015-10-23', null, null, '2019-01-30 13:44:08', '2019-01-30 13:44:08');
INSERT INTO `designations` VALUES ('14', '14', '7', '2015-07-31', null, null, '2019-01-30 13:44:08', '2019-01-30 13:44:08');
INSERT INTO `designations` VALUES ('15', '15', '4', '2015-12-04', null, null, '2019-01-30 13:44:08', '2019-01-30 13:44:08');
INSERT INTO `designations` VALUES ('16', '16', '6', '2015-09-13', null, null, '2019-01-30 13:44:08', '2019-01-30 13:44:08');
INSERT INTO `designations` VALUES ('17', '17', '8', '2015-06-08', null, null, '2019-01-30 13:44:08', '2019-01-30 13:44:08');
INSERT INTO `designations` VALUES ('18', '18', '11', '2015-06-28', null, null, '2019-01-30 13:44:09', '2019-01-30 13:44:09');
INSERT INTO `designations` VALUES ('19', '19', '7', '2015-07-29', null, null, '2019-01-30 13:44:09', '2019-01-30 13:44:09');
INSERT INTO `designations` VALUES ('20', '20', '3', '2015-08-15', null, null, '2019-01-30 13:44:09', '2019-01-30 13:44:09');
INSERT INTO `designations` VALUES ('21', '21', '9', '2015-07-14', null, null, '2019-01-30 13:44:09', '2019-01-30 13:44:09');
INSERT INTO `designations` VALUES ('22', '22', '5', '2015-05-06', null, null, '2019-01-30 13:44:09', '2019-01-30 13:44:09');
INSERT INTO `designations` VALUES ('23', '23', '3', '2015-10-18', null, null, '2019-01-30 13:44:09', '2019-01-30 13:44:09');
INSERT INTO `designations` VALUES ('24', '24', '4', '2015-11-16', null, null, '2019-01-30 13:44:09', '2019-01-30 13:44:09');
INSERT INTO `designations` VALUES ('25', '25', '2', '2015-06-13', null, null, '2019-01-30 13:44:09', '2019-01-30 13:44:09');
INSERT INTO `designations` VALUES ('26', '26', '9', '2015-07-25', null, null, '2019-01-30 13:44:09', '2019-01-30 13:44:09');
INSERT INTO `designations` VALUES ('27', '27', '5', '2015-07-04', null, null, '2019-01-30 13:44:09', '2019-01-30 13:44:09');
INSERT INTO `designations` VALUES ('28', '28', '5', '2015-05-25', null, null, '2019-01-30 13:44:09', '2019-01-30 13:44:09');
INSERT INTO `designations` VALUES ('29', '29', '2', '2015-08-09', null, null, '2019-01-30 13:44:09', '2019-01-30 13:44:09');
INSERT INTO `designations` VALUES ('30', '30', '5', '2015-12-03', null, null, '2019-01-30 13:44:09', '2019-01-30 13:44:09');
INSERT INTO `designations` VALUES ('31', '31', '7', '2015-08-16', null, null, '2019-01-30 13:44:10', '2019-01-30 13:44:10');
INSERT INTO `designations` VALUES ('32', '32', '10', '2015-07-29', null, null, '2019-01-30 13:44:10', '2019-01-30 13:44:10');
INSERT INTO `designations` VALUES ('33', '33', '10', '2015-10-27', null, null, '2019-01-30 13:44:10', '2019-01-30 13:44:10');
INSERT INTO `designations` VALUES ('34', '34', '11', '2015-06-06', null, null, '2019-01-30 13:44:10', '2019-01-30 13:44:10');
INSERT INTO `designations` VALUES ('35', '35', '9', '2015-08-20', null, null, '2019-01-30 13:44:10', '2019-01-30 13:44:10');
INSERT INTO `designations` VALUES ('36', '36', '3', '2015-08-09', null, null, '2019-01-30 13:44:10', '2019-01-30 13:44:10');
INSERT INTO `designations` VALUES ('37', '37', '3', '2015-06-29', null, null, '2019-01-30 13:44:10', '2019-01-30 13:44:10');
INSERT INTO `designations` VALUES ('38', '38', '6', '2015-05-22', null, null, '2019-01-30 13:44:10', '2019-01-30 13:44:10');
INSERT INTO `designations` VALUES ('39', '39', '6', '2015-08-26', null, null, '2019-01-30 13:44:10', '2019-01-30 13:44:10');
INSERT INTO `designations` VALUES ('40', '40', '11', '2015-11-15', null, null, '2019-01-30 13:44:10', '2019-01-30 13:44:10');
INSERT INTO `designations` VALUES ('41', '41', '7', '2015-10-25', null, null, '2019-01-30 13:44:10', '2019-01-30 13:44:10');
INSERT INTO `designations` VALUES ('42', '42', '2', '2015-06-28', null, null, '2019-01-30 13:44:11', '2019-01-30 13:44:11');
INSERT INTO `designations` VALUES ('43', '43', '4', '2015-10-31', null, null, '2019-01-30 13:44:11', '2019-01-30 13:44:11');
INSERT INTO `designations` VALUES ('44', '44', '9', '2015-08-21', null, null, '2019-01-30 13:44:11', '2019-01-30 13:44:11');
INSERT INTO `designations` VALUES ('45', '45', '5', '2015-06-24', null, null, '2019-01-30 13:44:11', '2019-01-30 13:44:11');
INSERT INTO `designations` VALUES ('46', '46', '11', '2015-08-16', null, null, '2019-01-30 13:44:11', '2019-01-30 13:44:11');
INSERT INTO `designations` VALUES ('47', '47', '3', '2015-07-15', null, null, '2019-01-30 13:44:11', '2019-01-30 13:44:11');
INSERT INTO `designations` VALUES ('48', '48', '5', '2015-05-13', null, null, '2019-01-30 13:44:11', '2019-01-30 13:44:11');
INSERT INTO `designations` VALUES ('49', '49', '6', '2015-10-14', null, null, '2019-01-30 13:44:11', '2019-01-30 13:44:11');
INSERT INTO `designations` VALUES ('50', '50', '5', '2015-07-30', null, null, '2019-01-30 13:44:11', '2019-01-30 13:44:11');
INSERT INTO `designations` VALUES ('51', '5', '10', '2014-05-25', '2014-10-14', null, '2019-01-30 13:44:11', '2019-01-30 13:44:11');
INSERT INTO `designations` VALUES ('52', '26', '7', '2015-01-16', '2015-04-10', null, '2019-01-30 13:44:11', '2019-01-30 13:44:11');
INSERT INTO `designations` VALUES ('53', '20', '6', '2014-10-05', '2014-11-30', null, '2019-01-30 13:44:11', '2019-01-30 13:44:11');
INSERT INTO `designations` VALUES ('54', '34', '1', '2014-12-09', '2015-02-05', null, '2019-01-30 13:44:12', '2019-01-30 13:44:12');
INSERT INTO `designations` VALUES ('55', '17', '7', '2015-01-13', '2015-03-04', null, '2019-01-30 13:44:12', '2019-01-30 13:44:12');
INSERT INTO `designations` VALUES ('56', '4', '4', '2014-10-07', '2015-02-17', null, '2019-01-30 13:44:12', '2019-01-30 13:44:12');
INSERT INTO `designations` VALUES ('57', '34', '6', '2014-12-23', '2015-04-09', null, '2019-01-30 13:44:12', '2019-01-30 13:44:12');
INSERT INTO `designations` VALUES ('58', '38', '11', '2014-07-30', '2014-11-29', null, '2019-01-30 13:44:12', '2019-01-30 13:44:12');
INSERT INTO `designations` VALUES ('59', '36', '9', '2014-11-11', '2015-02-17', null, '2019-01-30 13:44:12', '2019-01-30 13:44:12');
INSERT INTO `designations` VALUES ('60', '20', '3', '2014-12-05', '2015-02-05', null, '2019-01-30 13:44:12', '2019-01-30 13:44:12');
INSERT INTO `designations` VALUES ('61', '13', '4', '2014-09-21', '2014-12-01', null, '2019-01-30 13:44:12', '2019-01-30 13:44:12');
INSERT INTO `designations` VALUES ('62', '23', '5', '2015-01-04', '2015-04-14', null, '2019-01-30 13:44:12', '2019-01-30 13:44:12');
INSERT INTO `designations` VALUES ('63', '29', '8', '2014-08-08', '2014-10-12', null, '2019-01-30 13:44:12', '2019-01-30 13:44:12');
INSERT INTO `designations` VALUES ('64', '33', '7', '2014-12-29', '2015-04-21', null, '2019-01-30 13:44:13', '2019-01-30 13:44:13');
INSERT INTO `designations` VALUES ('65', '25', '1', '2015-01-12', '2015-04-08', null, '2019-01-30 13:44:13', '2019-01-30 13:44:13');
INSERT INTO `designations` VALUES ('66', '12', '3', '2014-09-29', '2014-12-27', null, '2019-01-30 13:44:13', '2019-01-30 13:44:13');
INSERT INTO `designations` VALUES ('67', '44', '4', '2014-10-28', '2014-12-18', null, '2019-01-30 13:44:13', '2019-01-30 13:44:13');
INSERT INTO `designations` VALUES ('68', '26', '11', '2014-05-07', '2014-09-14', null, '2019-01-30 13:44:13', '2019-01-30 13:44:13');
INSERT INTO `designations` VALUES ('69', '17', '3', '2014-09-29', '2014-12-27', null, '2019-01-30 13:44:13', '2019-01-30 13:44:13');
INSERT INTO `designations` VALUES ('70', '45', '7', '2014-12-07', '2015-02-16', null, '2019-01-30 13:44:13', '2019-01-30 13:44:13');
INSERT INTO `designations` VALUES ('71', '30', '9', '2014-10-14', '2015-01-12', null, '2019-01-30 13:44:13', '2019-01-30 13:44:13');
INSERT INTO `designations` VALUES ('72', '38', '8', '2014-10-12', '2015-01-15', null, '2019-01-30 13:44:13', '2019-01-30 13:44:13');
INSERT INTO `designations` VALUES ('73', '41', '6', '2014-07-26', '2014-11-06', null, '2019-01-30 13:44:13', '2019-01-30 13:44:13');
INSERT INTO `designations` VALUES ('74', '6', '11', '2015-02-16', '2015-04-22', null, '2019-01-30 13:44:13', '2019-01-30 13:44:13');
INSERT INTO `designations` VALUES ('75', '12', '5', '2014-10-22', '2015-01-18', null, '2019-01-30 13:44:13', '2019-01-30 13:44:13');
INSERT INTO `designations` VALUES ('76', '21', '1', '2014-09-10', '2014-11-23', null, '2019-01-30 13:44:14', '2019-01-30 13:44:14');
INSERT INTO `designations` VALUES ('77', '25', '11', '2014-09-25', '2014-11-20', null, '2019-01-30 13:44:14', '2019-01-30 13:44:14');
INSERT INTO `designations` VALUES ('78', '27', '10', '2014-05-29', '2014-09-01', null, '2019-01-30 13:44:14', '2019-01-30 13:44:14');
INSERT INTO `designations` VALUES ('79', '47', '3', '2015-01-18', '2015-03-30', null, '2019-01-30 13:44:14', '2019-01-30 13:44:14');
INSERT INTO `designations` VALUES ('80', '33', '5', '2014-05-25', '2014-09-06', null, '2019-01-30 13:44:14', '2019-01-30 13:44:14');
INSERT INTO `designations` VALUES ('81', '18', '10', '2014-08-03', '2014-09-26', null, '2019-01-30 13:44:14', '2019-01-30 13:44:14');
INSERT INTO `designations` VALUES ('82', '19', '4', '2014-06-28', '2014-09-25', null, '2019-01-30 13:44:14', '2019-01-30 13:44:14');
INSERT INTO `designations` VALUES ('83', '39', '11', '2014-05-30', '2014-10-26', null, '2019-01-30 13:44:14', '2019-01-30 13:44:14');
INSERT INTO `designations` VALUES ('84', '46', '10', '2014-11-04', '2015-03-24', null, '2019-01-30 13:44:14', '2019-01-30 13:44:14');
INSERT INTO `designations` VALUES ('85', '40', '2', '2015-02-06', '2015-04-08', null, '2019-01-30 13:44:14', '2019-01-30 13:44:14');
INSERT INTO `designations` VALUES ('86', '25', '1', '2014-06-21', '2014-11-10', null, '2019-01-30 13:44:14', '2019-01-30 13:44:14');
INSERT INTO `designations` VALUES ('87', '7', '10', '2014-11-03', '2014-12-29', null, '2019-01-30 13:44:14', '2019-01-30 13:44:14');
INSERT INTO `designations` VALUES ('88', '46', '10', '2014-11-26', '2015-01-15', null, '2019-01-30 13:44:14', '2019-01-30 13:44:14');
INSERT INTO `designations` VALUES ('89', '8', '4', '2014-10-20', '2014-12-29', null, '2019-01-30 13:44:15', '2019-01-30 13:44:15');
INSERT INTO `designations` VALUES ('90', '12', '8', '2014-08-09', '2014-10-10', null, '2019-01-30 13:44:15', '2019-01-30 13:44:15');
INSERT INTO `designations` VALUES ('91', '4', '4', '2014-07-13', '2014-10-09', null, '2019-01-30 13:44:15', '2019-01-30 13:44:15');
INSERT INTO `designations` VALUES ('92', '4', '11', '2014-03-25', '2014-08-19', null, '2019-01-30 13:44:15', '2019-01-30 13:44:15');
INSERT INTO `designations` VALUES ('93', '40', '10', '2014-07-14', '2014-10-08', null, '2019-01-30 13:44:15', '2019-01-30 13:44:15');
INSERT INTO `designations` VALUES ('94', '50', '3', '2014-11-27', '2015-02-24', null, '2019-01-30 13:44:15', '2019-01-30 13:44:15');
INSERT INTO `designations` VALUES ('95', '26', '6', '2014-12-11', '2015-03-28', null, '2019-01-30 13:44:15', '2019-01-30 13:44:15');
INSERT INTO `designations` VALUES ('96', '39', '4', '2014-06-24', '2014-10-02', null, '2019-01-30 13:44:15', '2019-01-30 13:44:15');
INSERT INTO `designations` VALUES ('97', '41', '1', '2014-08-21', '2014-10-13', null, '2019-01-30 13:44:15', '2019-01-30 13:44:15');
INSERT INTO `designations` VALUES ('98', '47', '1', '2014-07-17', '2014-09-25', null, '2019-01-30 13:44:15', '2019-01-30 13:44:15');
INSERT INTO `designations` VALUES ('99', '50', '7', '2014-07-26', '2014-09-26', null, '2019-01-30 13:44:15', '2019-01-30 13:44:15');
INSERT INTO `designations` VALUES ('100', '39', '4', '2015-01-10', '2015-03-15', null, '2019-01-30 13:44:15', '2019-01-30 13:44:15');

-- ----------------------------
-- Table structure for designation_items
-- ----------------------------
DROP TABLE IF EXISTS `designation_items`;
CREATE TABLE `designation_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation_item` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of designation_items
-- ----------------------------
INSERT INTO `designation_items` VALUES ('1', 'Junior Web Developer', '1', null, '2019-01-30 13:43:53', '2019-01-30 13:43:53');
INSERT INTO `designation_items` VALUES ('2', 'Senior Web Developer', '1', null, '2019-01-30 13:43:53', '2019-01-30 13:43:53');
INSERT INTO `designation_items` VALUES ('3', 'Web Development Manager', '1', null, '2019-01-30 13:43:53', '2019-01-30 13:43:53');
INSERT INTO `designation_items` VALUES ('4', 'Marketing Manager', '2', null, '2019-01-30 13:43:53', '2019-01-30 13:43:53');
INSERT INTO `designation_items` VALUES ('5', 'Marketing Associate', '2', null, '2019-01-30 13:43:53', '2019-01-30 13:43:53');
INSERT INTO `designation_items` VALUES ('6', 'Sales Manager', '3', null, '2019-01-30 13:43:53', '2019-01-30 13:43:53');
INSERT INTO `designation_items` VALUES ('7', 'Sales Associate', '3', null, '2019-01-30 13:43:53', '2019-01-30 13:43:53');
INSERT INTO `designation_items` VALUES ('8', 'Admin Associate', '4', null, '2019-01-30 13:43:53', '2019-01-30 13:43:53');
INSERT INTO `designation_items` VALUES ('9', 'Content Manager', '5', null, '2019-01-30 13:43:54', '2019-01-30 13:43:54');
INSERT INTO `designation_items` VALUES ('10', 'Content Junior Writer', '5', null, '2019-01-30 13:43:54', '2019-01-30 13:43:54');
INSERT INTO `designation_items` VALUES ('11', 'Content Senior Writer', '5', null, '2019-01-30 13:43:54', '2019-01-30 13:43:54');

-- ----------------------------
-- Table structure for documents
-- ----------------------------
DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `document_type_id` int(11) NOT NULL,
  `document` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of documents
-- ----------------------------

-- ----------------------------
-- Table structure for document_types
-- ----------------------------
DROP TABLE IF EXISTS `document_types`;
CREATE TABLE `document_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of document_types
-- ----------------------------
INSERT INTO `document_types` VALUES ('1', 'Resume', null, '2019-01-30 13:43:54', '2019-01-30 13:43:54');
INSERT INTO `document_types` VALUES ('2', 'Application Letter', null, '2019-01-30 13:43:54', '2019-01-30 13:43:54');
INSERT INTO `document_types` VALUES ('3', 'Admission', null, '2019-01-30 13:43:55', '2019-01-30 13:43:55');

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO `events` VALUES ('1', 'Saepe quia incidunt.', 'Nobis vel autem quisquam illo tempora mollitia. Et et unde enim quam. Amet consequuntur nulla a temporibus. Quas rerum rem veritatis voluptas.', '2016-02-04', '2016-02-07', '', null, '2019-01-30 13:44:16', '2019-01-30 13:44:16');
INSERT INTO `events` VALUES ('2', 'Quam id soluta.', 'Est velit veritatis accusantium voluptate libero et voluptates. Sapiente quod natus qui voluptas velit et corrupti.', '2016-05-23', '2016-05-27', '', null, '2019-01-30 13:44:16', '2019-01-30 13:44:16');
INSERT INTO `events` VALUES ('3', 'Recusandae non quia.', 'Aliquam cupiditate ducimus quia est deserunt voluptatem laboriosam aut. Non vel doloremque adipisci. Cupiditate ipsum eos voluptas consequatur praesentium beatae.', '2016-02-14', '2016-02-15', '', null, '2019-01-30 13:44:16', '2019-01-30 13:44:16');
INSERT INTO `events` VALUES ('4', 'Ut qui illo dicta.', 'Iste voluptas quis quam quod similique. Odio autem in eum sed. In accusamus maiores ad. Quia qui eius magnam qui voluptatem nesciunt.', '2016-04-09', '2016-04-11', '', null, '2019-01-30 13:44:17', '2019-01-30 13:44:17');
INSERT INTO `events` VALUES ('5', 'Occaecati incidunt.', 'Voluptas ut est mollitia autem. Autem quo ut labore vel voluptas dolores. Laboriosam molestiae est veniam blanditiis laborum quae.', '2016-04-16', '2016-04-16', '', null, '2019-01-30 13:44:17', '2019-01-30 13:44:17');
INSERT INTO `events` VALUES ('6', 'Autem est est aut.', 'Sit similique velit soluta perferendis labore magni. Quae velit est dolore quo qui animi. Ut fugit dolorem et eum aut et voluptatum dolor.', '2015-12-09', '2015-12-12', '', null, '2019-01-30 13:44:17', '2019-01-30 13:44:17');
INSERT INTO `events` VALUES ('7', 'Consequatur iste et.', 'Quaerat officiis quis dolore aut. Enim fugit non quia enim natus. Provident ea quae rem exercitationem quo nesciunt.', '2016-01-01', '2016-01-01', '', null, '2019-01-30 13:44:17', '2019-01-30 13:44:17');
INSERT INTO `events` VALUES ('8', 'Soluta deserunt.', 'Omnis id veniam distinctio magnam minima illo itaque. Esse similique qui quis sequi voluptate neque. Placeat dicta voluptatibus exercitationem occaecati sed recusandae.', '2015-11-27', '2015-11-29', '', null, '2019-01-30 13:44:17', '2019-01-30 13:44:17');
INSERT INTO `events` VALUES ('9', 'Dolor et culpa ut.', 'Quis ut repudiandae quam ipsum eum ut. Qui suscipit cumque placeat reprehenderit unde. Nulla ut maxime cupiditate tempore fugit totam. Natus quae ab quo dolor.', '2016-04-13', '2016-04-17', '', null, '2019-01-30 13:44:17', '2019-01-30 13:44:17');
INSERT INTO `events` VALUES ('10', 'Neque dolor non.', 'Iusto aut est velit aut dignissimos recusandae voluptatum. Necessitatibus fuga qui ut ut. Culpa numquam eligendi et iste.', '2015-11-14', '2015-11-18', '', null, '2019-01-30 13:44:17', '2019-01-30 13:44:17');
INSERT INTO `events` VALUES ('11', 'Aliquid ratione.', 'Sed magni provident corrupti fugiat. Non voluptate non aliquid et voluptatem rem. Accusamus voluptatem optio sunt ut et dolorem quas.', '2016-06-24', '2016-06-24', '', null, '2019-01-30 13:44:18', '2019-01-30 13:44:18');
INSERT INTO `events` VALUES ('12', 'Laboriosam ut ut.', 'Exercitationem qui quaerat eaque. Totam voluptatem qui nobis hic consequuntur sint inventore. Deleniti dicta vero sit quo cumque repudiandae.', '2016-03-28', '2016-03-31', '', null, '2019-01-30 13:44:18', '2019-01-30 13:44:18');
INSERT INTO `events` VALUES ('13', 'Voluptatem rerum et.', 'Aut ut autem qui sed et alias possimus. Rerum quia molestiae magnam. Officiis vero qui porro consequuntur. Quisquam eaque rerum nisi.', '2016-03-27', '2016-03-28', '', null, '2019-01-30 13:44:18', '2019-01-30 13:44:18');
INSERT INTO `events` VALUES ('14', 'Repellat assumenda.', 'Occaecati provident pariatur asperiores in. Quia iure velit nemo blanditiis voluptatem non deleniti. Qui possimus odio consequatur velit. Ea doloremque eaque sit rerum.', '2016-02-17', '2016-02-17', '', null, '2019-01-30 13:44:18', '2019-01-30 13:44:18');
INSERT INTO `events` VALUES ('15', 'Quaerat minima.', 'Rerum quidem recusandae non qui eos. Debitis in dolorem ut et. Nemo rerum cum cupiditate alias minus. Aut quis et ducimus laboriosam ex. Pariatur dolor nobis voluptas repudiandae ipsam.', '2016-05-21', '2016-05-21', '', null, '2019-01-30 13:44:18', '2019-01-30 13:44:18');
INSERT INTO `events` VALUES ('16', 'Corporis accusamus.', 'Quos debitis dicta architecto occaecati. Voluptatibus vitae ut in est optio vitae rerum. Voluptate ea ab eos. Rem sunt molestias et enim.', '2015-12-25', '2015-12-28', '', null, '2019-01-30 13:44:18', '2019-01-30 13:44:18');
INSERT INTO `events` VALUES ('17', 'Et aut delectus.', 'Blanditiis repellendus vero quia voluptatem aliquid. Quo est alias odio earum ex ut laborum. Velit aspernatur voluptatem suscipit quo.', '2016-04-15', '2016-04-16', '', null, '2019-01-30 13:44:18', '2019-01-30 13:44:18');
INSERT INTO `events` VALUES ('18', 'Et reiciendis.', 'Voluptatem consequuntur aut autem quas. Est ab tenetur beatae et aliquid. Quo nobis perferendis velit fuga reiciendis voluptatem qui. Qui est nesciunt sit rerum eos ut placeat.', '2015-11-16', '2015-11-17', '', null, '2019-01-30 13:44:18', '2019-01-30 13:44:18');
INSERT INTO `events` VALUES ('19', 'Dolorem suscipit.', 'Repellat laudantium et ab dolorem voluptatem aut sunt. Dolores molestiae eaque sed blanditiis. Deserunt ullam rem saepe et aspernatur nam. Hic velit unde labore incidunt.', '2016-03-14', '2016-03-14', '', null, '2019-01-30 13:44:18', '2019-01-30 13:44:18');
INSERT INTO `events` VALUES ('20', 'Harum et dolores.', 'Doloremque qui odit sit ipsum iure voluptatem suscipit. Nam modi eaque at consectetur ut. Sunt velit ea delectus. Alias alias id pariatur corporis similique dolores.', '2016-06-10', '2016-06-10', '', null, '2019-01-30 13:44:18', '2019-01-30 13:44:18');
INSERT INTO `events` VALUES ('21', 'Laboriosam eveniet.', 'Laudantium est qui dicta iusto dolor dolores enim. Asperiores asperiores voluptate et reprehenderit odio repudiandae. Consectetur voluptas ea dicta. Cumque minus ad officiis aspernatur voluptas.', '2015-12-09', '2015-12-11', '', null, '2019-01-30 13:44:18', '2019-01-30 13:44:18');
INSERT INTO `events` VALUES ('22', 'Et consequuntur.', 'Libero numquam tenetur ut quos aut hic sed minus. Consequatur deleniti molestias tempore dicta totam qui. Non nam asperiores repellendus voluptatum vero veritatis.', '2016-05-30', '2016-06-02', '', null, '2019-01-30 13:44:19', '2019-01-30 13:44:19');
INSERT INTO `events` VALUES ('23', 'Numquam rerum.', 'Ut reiciendis molestiae iure dolor. Consequatur vel velit cum id dolorem. Architecto dignissimos minus vel voluptatem quidem molestiae corrupti.', '2016-04-21', '2016-04-22', '', null, '2019-01-30 13:44:19', '2019-01-30 13:44:19');
INSERT INTO `events` VALUES ('24', 'Maiores neque nobis.', 'Consequatur commodi sunt eaque et. Natus qui alias aut quibusdam rerum velit facilis. Ea reprehenderit quidem qui alias voluptatem commodi dolores.', '2015-11-06', '2015-11-08', '', null, '2019-01-30 13:44:19', '2019-01-30 13:44:19');
INSERT INTO `events` VALUES ('25', 'Explicabo.', 'Magni esse omnis molestias et. Eius non voluptas sunt molestiae quos et ea. Soluta ut nam enim.', '2016-01-10', '2016-01-10', '', null, '2019-01-30 13:44:19', '2019-01-30 13:44:19');
INSERT INTO `events` VALUES ('26', 'Non qui sint.', 'Modi voluptates et at perspiciatis et et optio. Aut consequuntur qui inventore. Omnis neque rerum cumque ea dolorem enim qui voluptatem. Aut repellat veniam similique culpa provident eveniet.', '2015-12-20', '2015-12-24', '', null, '2019-01-30 13:44:19', '2019-01-30 13:44:19');
INSERT INTO `events` VALUES ('27', 'Nesciunt quo ex.', 'Laudantium eum veritatis illum corrupti. Repellat accusantium est vitae accusantium itaque autem. Est saepe corporis natus perspiciatis quia odit. Culpa pariatur ex et cumque molestiae.', '2016-06-24', '2016-06-24', '', null, '2019-01-30 13:44:19', '2019-01-30 13:44:19');
INSERT INTO `events` VALUES ('28', 'Reiciendis id quia.', 'Nisi consequuntur cumque et nesciunt. Est nihil natus doloremque velit molestias. Iste incidunt nemo quo saepe.', '2016-06-16', '2016-06-16', '', null, '2019-01-30 13:44:19', '2019-01-30 13:44:19');
INSERT INTO `events` VALUES ('29', 'Enim excepturi.', 'Reiciendis autem eum qui illo commodi quam id. Ducimus excepturi culpa quis et animi et. Officia minima accusamus adipisci ea et.', '2016-03-09', '2016-03-13', '', null, '2019-01-30 13:44:19', '2019-01-30 13:44:19');
INSERT INTO `events` VALUES ('30', 'Est voluptatem.', 'Aliquam dolores tempore quos eum. Quia quas laborum debitis dolor. Dolores maxime quos excepturi eos. Earum corporis laboriosam debitis hic occaecati eaque.', '2016-03-28', '2016-03-31', '', null, '2019-01-30 13:44:19', '2019-01-30 13:44:19');
INSERT INTO `events` VALUES ('31', 'Consequuntur.', 'Est ut ea ut. Sit perferendis nesciunt iure natus nulla amet. Mollitia dolorem modi deleniti quibusdam. Perferendis ea similique quod nihil.', '2016-02-22', '2016-02-22', '', null, '2019-01-30 13:44:19', '2019-01-30 13:44:19');
INSERT INTO `events` VALUES ('32', 'Expedita similique.', 'Id dolore iste corporis ut occaecati est. Culpa qui explicabo aut officiis odit libero aut. Beatae et iure sit.', '2016-05-13', '2016-05-14', '', null, '2019-01-30 13:44:19', '2019-01-30 13:44:19');
INSERT INTO `events` VALUES ('33', 'Quia maiores.', 'Autem explicabo quae voluptatem consequuntur. Quae molestias sunt laudantium recusandae impedit. Consequatur vero aut suscipit explicabo. Nesciunt est laboriosam nostrum accusantium nisi voluptas.', '2016-01-02', '2016-01-04', '', null, '2019-01-30 13:44:19', '2019-01-30 13:44:19');
INSERT INTO `events` VALUES ('34', 'Dignissimos iusto.', 'Quia nesciunt fugit adipisci. Porro porro iusto id delectus commodi. Nemo consequatur sunt cum aut praesentium.', '2016-01-03', '2016-01-06', '', null, '2019-01-30 13:44:20', '2019-01-30 13:44:20');
INSERT INTO `events` VALUES ('35', 'Est sed omnis.', 'In fugiat hic nihil repellendus quia voluptatem. Labore quisquam eligendi accusamus ut.', '2016-03-25', '2016-03-27', '', null, '2019-01-30 13:44:20', '2019-01-30 13:44:20');
INSERT INTO `events` VALUES ('36', 'Magni officia.', 'Mollitia numquam est modi quae. Non est quibusdam laboriosam autem et. Fugit fuga et sed consequatur quis.', '2015-11-18', '2015-11-19', '', null, '2019-01-30 13:44:20', '2019-01-30 13:44:20');
INSERT INTO `events` VALUES ('37', 'Sunt sint esse.', 'Omnis quia libero quo quae tenetur quia deserunt. Assumenda officia ab velit non. Voluptas ut quia dolorem sunt enim dolores. Sed est nobis voluptates dolore et.', '2016-04-07', '2016-04-08', '', null, '2019-01-30 13:44:20', '2019-01-30 13:44:20');
INSERT INTO `events` VALUES ('38', 'Ipsam accusantium.', 'Porro et dolorem voluptatem aut repellat suscipit. Est quos aspernatur est corrupti. Accusantium mollitia ullam itaque eos perferendis reiciendis.', '2016-03-13', '2016-03-16', '', null, '2019-01-30 13:44:20', '2019-01-30 13:44:20');
INSERT INTO `events` VALUES ('39', 'Accusamus.', 'Atque voluptates impedit molestias sed cum. Rerum assumenda vel et distinctio. Id perspiciatis et quis esse iure eveniet.', '2016-03-02', '2016-03-03', '', null, '2019-01-30 13:44:20', '2019-01-30 13:44:20');
INSERT INTO `events` VALUES ('40', 'Neque nostrum non.', 'Et omnis ratione iste nihil. Dicta neque est quod ipsa. Omnis temporibus vel ipsum consequuntur laborum quos. Ducimus natus omnis voluptates quia sapiente.', '2016-04-14', '2016-04-18', '', null, '2019-01-30 13:44:20', '2019-01-30 13:44:20');
INSERT INTO `events` VALUES ('41', 'Error harum aut.', 'Error tempore optio libero inventore debitis. Voluptatem mollitia qui unde voluptas velit quas minus. Eveniet omnis illum inventore et. Suscipit non corporis a aut consequatur exercitationem.', '2015-12-08', '2015-12-12', '', null, '2019-01-30 13:44:20', '2019-01-30 13:44:20');
INSERT INTO `events` VALUES ('42', 'Sapiente voluptas.', 'Officiis voluptates dolorum magnam similique earum blanditiis. Id consequatur consequatur esse omnis et dolorum.', '2015-12-18', '2015-12-22', '', null, '2019-01-30 13:44:20', '2019-01-30 13:44:20');
INSERT INTO `events` VALUES ('43', 'Pariatur illo.', 'Omnis in sit impedit natus. Molestias accusantium exercitationem amet aut quis. Error deserunt quidem aut quia. Fugiat sed est nihil necessitatibus iure placeat fugit.', '2016-06-05', '2016-06-09', '', null, '2019-01-30 13:44:20', '2019-01-30 13:44:20');
INSERT INTO `events` VALUES ('44', 'Magnam omnis quis.', 'Atque perspiciatis occaecati ex sit minima provident sunt. Quia dolor sint rerum aut velit quo. Minus repellendus cupiditate laborum.', '2016-02-23', '2016-02-24', '', null, '2019-01-30 13:44:21', '2019-01-30 13:44:21');
INSERT INTO `events` VALUES ('45', 'Voluptatem non.', 'Velit officia vel nihil commodi dolorem laboriosam. Voluptatibus animi et delectus et est quae ea. Rerum voluptatem dolore facilis mollitia.', '2016-03-29', '2016-03-29', '', null, '2019-01-30 13:44:21', '2019-01-30 13:44:21');
INSERT INTO `events` VALUES ('46', 'Praesentium et.', 'Omnis autem sed animi commodi. Esse ut facilis voluptatum dignissimos. Magni autem cum animi laudantium incidunt consequuntur.', '2016-05-09', '2016-05-14', '', null, '2019-01-30 13:44:21', '2019-01-30 13:44:21');
INSERT INTO `events` VALUES ('47', 'Incidunt qui ullam.', 'Magni et sit voluptas. Illo atque debitis vel ut. Velit similique dolorem dolores facilis ipsam iure saepe. Assumenda velit ratione voluptatibus est et.', '2016-01-12', '2016-01-17', '', null, '2019-01-30 13:44:21', '2019-01-30 13:44:21');
INSERT INTO `events` VALUES ('48', 'Quidem ipsum cum.', 'At quo dolorem nulla veritatis. Nulla sint ipsum quia accusantium. Rerum veniam autem qui qui. Aut laboriosam iste iure vel tempore placeat ut.', '2016-05-15', '2016-05-18', '', null, '2019-01-30 13:44:21', '2019-01-30 13:44:21');
INSERT INTO `events` VALUES ('49', 'Aut blanditiis sunt.', 'Quae voluptatibus eum ratione reiciendis maiores ut. Officiis distinctio in minus nihil. Sit eum aut ab nisi rerum ab sed.', '2016-03-28', '2016-04-01', '', null, '2019-01-30 13:44:21', '2019-01-30 13:44:21');
INSERT INTO `events` VALUES ('50', 'Adipisci atque.', 'Facilis inventore dolorem molestiae ullam in corporis similique. Veniam sunt consequatur quis ut alias quia quia. Amet ducimus enim iure.', '2016-04-08', '2016-04-09', '', null, '2019-01-30 13:44:21', '2019-01-30 13:44:21');

-- ----------------------------
-- Table structure for expenses
-- ----------------------------
DROP TABLE IF EXISTS `expenses`;
CREATE TABLE `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `attachment` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of expenses
-- ----------------------------

-- ----------------------------
-- Table structure for holidays
-- ----------------------------
DROP TABLE IF EXISTS `holidays`;
CREATE TABLE `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `occasion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of holidays
-- ----------------------------

-- ----------------------------
-- Table structure for job_vacancies
-- ----------------------------
DROP TABLE IF EXISTS `job_vacancies`;
CREATE TABLE `job_vacancies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of job_vacancies
-- ----------------------------

-- ----------------------------
-- Table structure for leaves
-- ----------------------------
DROP TABLE IF EXISTS `leaves`;
CREATE TABLE `leaves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `applied_on` date NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of leaves
-- ----------------------------

-- ----------------------------
-- Table structure for leave_types
-- ----------------------------
DROP TABLE IF EXISTS `leave_types`;
CREATE TABLE `leave_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `leave_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of leave_types
-- ----------------------------
INSERT INTO `leave_types` VALUES ('1', 'Vacation Leave', null, '2019-01-30 13:43:55', '2019-01-30 13:43:55');
INSERT INTO `leave_types` VALUES ('2', 'Sick Leave', null, '2019-01-30 13:43:55', '2019-01-30 13:43:55');
INSERT INTO `leave_types` VALUES ('3', 'Maternal Leave', null, '2019-01-30 13:43:55', '2019-01-30 13:43:55');
INSERT INTO `leave_types` VALUES ('4', 'Paternal Leave', null, '2019-01-30 13:43:55', '2019-01-30 13:43:55');
INSERT INTO `leave_types` VALUES ('5', 'Birthday Leave', null, '2019-01-30 13:43:56', '2019-01-30 13:43:56');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_14_025419_create_departments_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_14_053708_create_bank_accounts_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_14_053728_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_14_053811_create_document_types_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_14_053926_create_expenses_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_14_054052_create_leave_types_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_14_054950_create_events_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_15_043254_create_holidays_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_19_084359_create_notices_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_19_101239_create_designation_items_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_19_101350_create_designations_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_19_101452_create_leaves_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_19_101544_create_absences_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_19_101626_create_documents_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_19_101709_create_awards_table', '1');
INSERT INTO `migrations` VALUES ('2016_04_04_060813_create_permissions_table', '1');
INSERT INTO `migrations` VALUES ('2016_04_04_061152_create_role_permissions_table', '1');
INSERT INTO `migrations` VALUES ('2016_04_13_025653_create_job_vacancies_table', '1');
INSERT INTO `migrations` VALUES ('2016_04_13_031905_create_candidates_table', '1');
INSERT INTO `migrations` VALUES ('2016_05_02_080304_create_attendances_table', '1');
INSERT INTO `migrations` VALUES ('2016_05_02_081949_create_cut_offs_table', '1');

-- ----------------------------
-- Table structure for notices
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of notices
-- ----------------------------
INSERT INTO `notices` VALUES ('1', '1', 'Illum iure et.', 'Voluptatum cumque quam neque qui ducimus. Sequi debitis similique sit in. Est voluptate quidem laboriosam sit eos itaque suscipit.', '', null, '2016-03-08 00:00:00', '2016-03-08 00:00:00');
INSERT INTO `notices` VALUES ('2', '1', 'Hic est porro optio.', 'Voluptas sunt et vero nemo eos nam id. Dolorem qui optio dolorem reprehenderit ipsum dolore. Quibusdam iure id exercitationem.', '', null, '2016-03-13 00:00:00', '2016-03-13 00:00:00');
INSERT INTO `notices` VALUES ('3', '1', 'Ex dolores.', 'Corrupti iure asperiores itaque tempora ullam. Quisquam non sed nesciunt totam distinctio voluptatem est quo. Voluptate in voluptatem aut et.', '', null, '2016-03-03 00:00:00', '2016-03-03 00:00:00');
INSERT INTO `notices` VALUES ('4', '1', 'Nulla laborum.', 'Officiis dicta consequatur voluptas omnis. Labore voluptas alias aut accusamus. Cum sunt dolor aliquam. Ut corrupti accusamus repellendus voluptatem veniam ullam.', '', null, '2016-02-11 00:00:00', '2016-02-11 00:00:00');
INSERT INTO `notices` VALUES ('5', '1', 'Voluptas laboriosam.', 'Id cum libero numquam suscipit voluptatem et qui recusandae. Dolore aspernatur quibusdam aut exercitationem sunt saepe nesciunt. Aspernatur omnis voluptatem cupiditate.', '', null, '2016-02-08 00:00:00', '2016-02-08 00:00:00');
INSERT INTO `notices` VALUES ('6', '1', 'Exercitationem.', 'Placeat deleniti sint qui. Corporis aut odio perspiciatis. Aut voluptate neque qui nihil.', '', null, '2016-02-15 00:00:00', '2016-02-15 00:00:00');
INSERT INTO `notices` VALUES ('7', '1', 'Ut autem aut totam.', 'Accusamus qui inventore repudiandae eligendi consequatur explicabo. Enim est ut enim. Dolor quia eligendi veniam maiores enim.', '', null, '2016-02-11 00:00:00', '2016-02-11 00:00:00');
INSERT INTO `notices` VALUES ('8', '1', 'Laboriosam ea minus.', 'Et sed dolores ad ut officia. Ab dolorem dolorem tenetur beatae facilis. Consectetur omnis sit ratione aut veniam fugiat nulla.', '', null, '2016-02-23 00:00:00', '2016-02-23 00:00:00');
INSERT INTO `notices` VALUES ('9', '1', 'Necessitatibus vel.', 'Quia sit ducimus adipisci magnam sit qui. Sed magnam ipsa autem ea. Est quisquam aut perferendis voluptatem nihil omnis. Laborum et cum sunt expedita ducimus aliquid dolore.', '', null, '2016-02-20 00:00:00', '2016-02-20 00:00:00');
INSERT INTO `notices` VALUES ('10', '1', 'Dicta ut nulla modi.', 'At repudiandae aspernatur quibusdam aut voluptatem necessitatibus. Repudiandae est est quod consequatur quia dolores. Hic possimus impedit qui sunt. Quo doloribus aperiam illo aut corporis numquam.', '', null, '2016-03-22 00:00:00', '2016-03-22 00:00:00');
INSERT INTO `notices` VALUES ('11', '1', 'Ducimus doloremque.', 'Aliquid quis repellat dignissimos consequatur eaque itaque rerum ipsum. Pariatur magni laudantium delectus aut. Architecto quibusdam minus sed enim veritatis.', '', null, '2016-03-12 00:00:00', '2016-03-12 00:00:00');
INSERT INTO `notices` VALUES ('12', '1', 'Ut recusandae neque.', 'Beatae et in alias deleniti. Eos cupiditate quia est. Dolores sunt qui in quam accusantium laborum accusamus.', '', null, '2016-03-23 00:00:00', '2016-03-23 00:00:00');
INSERT INTO `notices` VALUES ('13', '1', 'Sed placeat.', 'Aut occaecati necessitatibus voluptatum odio sit enim. Porro hic et omnis quo. Consequatur consequatur fugiat iste ut laudantium quae.', '', null, '2016-02-20 00:00:00', '2016-02-20 00:00:00');
INSERT INTO `notices` VALUES ('14', '1', 'Eligendi iusto ea.', 'Debitis deleniti praesentium quas quia maxime. Dolores aut perspiciatis officia voluptas dolorem. Magni voluptatem ducimus et a inventore aut.', '', null, '2016-03-06 00:00:00', '2016-03-06 00:00:00');
INSERT INTO `notices` VALUES ('15', '1', 'Sit ad distinctio.', 'Consequatur eligendi delectus placeat nostrum repellendus aut modi accusantium. Velit repellat quod minima temporibus ratione. Impedit provident nesciunt ut dolor eos.', '', null, '2016-02-22 00:00:00', '2016-02-22 00:00:00');
INSERT INTO `notices` VALUES ('16', '1', 'Cupiditate quo et.', 'At officiis ut mollitia. Consequatur inventore et et tempore molestias quo recusandae. Impedit doloremque ea harum eos. Et et enim officiis accusantium hic.', '', null, '2016-02-10 00:00:00', '2016-02-10 00:00:00');
INSERT INTO `notices` VALUES ('17', '1', 'Et libero at.', 'Quam quod praesentium aut delectus. Temporibus ut quia qui perferendis nisi quia et. Rem fugit est nobis iusto.', '', null, '2016-03-24 00:00:00', '2016-03-24 00:00:00');
INSERT INTO `notices` VALUES ('18', '1', 'Id quo nemo.', 'Reprehenderit quae eos et neque soluta sint. Cupiditate libero voluptas pariatur sapiente in deserunt sed non. Eaque voluptas labore sunt cum et. Nemo porro eum quod doloremque ab.', '', null, '2016-03-23 00:00:00', '2016-03-23 00:00:00');
INSERT INTO `notices` VALUES ('19', '1', 'In quidem ut.', 'Nostrum quia dolor eum atque dolores quaerat error. Perferendis dolorum fuga iusto.', '', null, '2016-02-23 00:00:00', '2016-02-23 00:00:00');
INSERT INTO `notices` VALUES ('20', '1', 'Voluptas ex et.', 'Aut vel vel ut earum nulla consequatur accusamus. Aut dolorem quia est eveniet. Et aut praesentium soluta libero occaecati quas veniam. Ut voluptatibus omnis ratione nisi et.', '', null, '2016-02-15 00:00:00', '2016-02-15 00:00:00');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'view_absences', 'View Absences', '1', null, '2019-01-30 13:44:27', '2019-01-30 13:44:27');
INSERT INTO `permissions` VALUES ('2', 'create_absences', 'Create Absences', '1', null, '2019-01-30 13:44:27', '2019-01-30 13:44:27');
INSERT INTO `permissions` VALUES ('3', 'edit_absences', 'Edit Absences', '1', null, '2019-01-30 13:44:27', '2019-01-30 13:44:27');
INSERT INTO `permissions` VALUES ('4', 'delete_absences', 'Delete Absences', '1', null, '2019-01-30 13:44:28', '2019-01-30 13:44:28');
INSERT INTO `permissions` VALUES ('5', 'view_awards', 'View Awards', '1', null, '2019-01-30 13:44:28', '2019-01-30 13:44:28');
INSERT INTO `permissions` VALUES ('6', 'create_awards', 'Create Awards', '1', null, '2019-01-30 13:44:28', '2019-01-30 13:44:28');
INSERT INTO `permissions` VALUES ('7', 'edit_awards', 'Edit Awards', '1', null, '2019-01-30 13:44:28', '2019-01-30 13:44:28');
INSERT INTO `permissions` VALUES ('8', 'delete_awards', 'Delete Awards', '1', null, '2019-01-30 13:44:28', '2019-01-30 13:44:28');
INSERT INTO `permissions` VALUES ('9', 'view_bank_accounts', 'View Bank Accounts', '0', null, '2019-01-30 13:44:29', '2019-01-30 13:44:29');
INSERT INTO `permissions` VALUES ('10', 'create_bank_accounts', 'Create Bank Accounts', '0', null, '2019-01-30 13:44:29', '2019-01-30 13:44:29');
INSERT INTO `permissions` VALUES ('11', 'edit_bank_accounts', 'Edit Bank Accounts', '0', null, '2019-01-30 13:44:29', '2019-01-30 13:44:29');
INSERT INTO `permissions` VALUES ('12', 'delete_bank_accounts', 'Delete Bank Accounts', '0', null, '2019-01-30 13:44:29', '2019-01-30 13:44:29');
INSERT INTO `permissions` VALUES ('13', 'view_departments', 'View Departments', '0', null, '2019-01-30 13:44:29', '2019-01-30 13:44:29');
INSERT INTO `permissions` VALUES ('14', 'create_departments', 'Create Departments', '0', null, '2019-01-30 13:44:29', '2019-01-30 13:44:29');
INSERT INTO `permissions` VALUES ('15', 'edit_departments', 'Edit Departments', '0', null, '2019-01-30 13:44:29', '2019-01-30 13:44:29');
INSERT INTO `permissions` VALUES ('16', 'delete_departments', 'Delete Departments', '0', null, '2019-01-30 13:44:30', '2019-01-30 13:44:30');
INSERT INTO `permissions` VALUES ('17', 'view_designations', 'View Designations', '1', null, '2019-01-30 13:44:30', '2019-01-30 13:44:30');
INSERT INTO `permissions` VALUES ('18', 'create_designations', 'Create Designations', '1', null, '2019-01-30 13:44:30', '2019-01-30 13:44:30');
INSERT INTO `permissions` VALUES ('19', 'edit_designations', 'Edit Designations', '1', null, '2019-01-30 13:44:30', '2019-01-30 13:44:30');
INSERT INTO `permissions` VALUES ('20', 'delete_designations', 'Delete Designations', '1', null, '2019-01-30 13:44:30', '2019-01-30 13:44:30');
INSERT INTO `permissions` VALUES ('21', 'view_designation_items', 'View Designation Items', '0', null, '2019-01-30 13:44:30', '2019-01-30 13:44:30');
INSERT INTO `permissions` VALUES ('22', 'create_designation_items', 'Create Designation Items', '0', null, '2019-01-30 13:44:30', '2019-01-30 13:44:30');
INSERT INTO `permissions` VALUES ('23', 'edit_designation_items', 'Edit Designation Items', '0', null, '2019-01-30 13:44:31', '2019-01-30 13:44:31');
INSERT INTO `permissions` VALUES ('24', 'delete_designation_items', 'Delete Designation Items', '0', null, '2019-01-30 13:44:31', '2019-01-30 13:44:31');
INSERT INTO `permissions` VALUES ('25', 'view_documents', 'View Documents', '1', null, '2019-01-30 13:44:31', '2019-01-30 13:44:31');
INSERT INTO `permissions` VALUES ('26', 'create_documents', 'Create Documents', '1', null, '2019-01-30 13:44:31', '2019-01-30 13:44:31');
INSERT INTO `permissions` VALUES ('27', 'edit_documents', 'Edit Documents', '1', null, '2019-01-30 13:44:31', '2019-01-30 13:44:31');
INSERT INTO `permissions` VALUES ('28', 'delete_documents', 'Delete Documents', '1', null, '2019-01-30 13:44:31', '2019-01-30 13:44:31');
INSERT INTO `permissions` VALUES ('29', 'view_document_types', 'View Document Types', '0', null, '2019-01-30 13:44:31', '2019-01-30 13:44:31');
INSERT INTO `permissions` VALUES ('30', 'create_document_types', 'Create Document Types', '0', null, '2019-01-30 13:44:32', '2019-01-30 13:44:32');
INSERT INTO `permissions` VALUES ('31', 'edit_document_types', 'Edit Document Types', '0', null, '2019-01-30 13:44:32', '2019-01-30 13:44:32');
INSERT INTO `permissions` VALUES ('32', 'delete_document_types', 'Delete Document Types', '0', null, '2019-01-30 13:44:32', '2019-01-30 13:44:32');
INSERT INTO `permissions` VALUES ('33', 'view_events', 'View Events', '0', null, '2019-01-30 13:44:32', '2019-01-30 13:44:32');
INSERT INTO `permissions` VALUES ('34', 'create_events', 'Create Events', '0', null, '2019-01-30 13:44:32', '2019-01-30 13:44:32');
INSERT INTO `permissions` VALUES ('35', 'edit_events', 'Edit Events', '0', null, '2019-01-30 13:44:32', '2019-01-30 13:44:32');
INSERT INTO `permissions` VALUES ('36', 'delete_events', 'Delete Events', '0', null, '2019-01-30 13:44:32', '2019-01-30 13:44:32');
INSERT INTO `permissions` VALUES ('37', 'view_expenses', 'View Expenses', '1', null, '2019-01-30 13:44:32', '2019-01-30 13:44:32');
INSERT INTO `permissions` VALUES ('38', 'create_expenses', 'Create Expenses', '1', null, '2019-01-30 13:44:32', '2019-01-30 13:44:32');
INSERT INTO `permissions` VALUES ('39', 'edit_expenses', 'Edit Expenses', '1', null, '2019-01-30 13:44:32', '2019-01-30 13:44:32');
INSERT INTO `permissions` VALUES ('40', 'delete_expenses', 'Delete Expenses', '1', null, '2019-01-30 13:44:33', '2019-01-30 13:44:33');
INSERT INTO `permissions` VALUES ('41', 'view_holidays', 'View Holidays', '0', null, '2019-01-30 13:44:33', '2019-01-30 13:44:33');
INSERT INTO `permissions` VALUES ('42', 'create_holidays', 'Create Holidays', '0', null, '2019-01-30 13:44:33', '2019-01-30 13:44:33');
INSERT INTO `permissions` VALUES ('43', 'edit_holidays', 'Edit Holidays', '0', null, '2019-01-30 13:44:33', '2019-01-30 13:44:33');
INSERT INTO `permissions` VALUES ('44', 'delete_holidays', 'Delete Holidays', '0', null, '2019-01-30 13:44:33', '2019-01-30 13:44:33');
INSERT INTO `permissions` VALUES ('45', 'view_leaves', 'View Leaves', '1', null, '2019-01-30 13:44:33', '2019-01-30 13:44:33');
INSERT INTO `permissions` VALUES ('46', 'create_leaves', 'Create Leaves', '1', null, '2019-01-30 13:44:33', '2019-01-30 13:44:33');
INSERT INTO `permissions` VALUES ('47', 'edit_leaves', 'Edit Leaves', '1', null, '2019-01-30 13:44:34', '2019-01-30 13:44:34');
INSERT INTO `permissions` VALUES ('48', 'delete_leaves', 'Delete Leaves', '1', null, '2019-01-30 13:44:34', '2019-01-30 13:44:34');
INSERT INTO `permissions` VALUES ('49', 'view_leave_types', 'View Leave Types', '0', null, '2019-01-30 13:44:34', '2019-01-30 13:44:34');
INSERT INTO `permissions` VALUES ('50', 'create_leave_types', 'Create Leave Types', '0', null, '2019-01-30 13:44:34', '2019-01-30 13:44:34');
INSERT INTO `permissions` VALUES ('51', 'edit_leave_types', 'Edit Leave Types', '0', null, '2019-01-30 13:44:34', '2019-01-30 13:44:34');
INSERT INTO `permissions` VALUES ('52', 'delete_leave_types', 'Delete Leave Types', '0', null, '2019-01-30 13:44:34', '2019-01-30 13:44:34');
INSERT INTO `permissions` VALUES ('53', 'view_notices', 'View Notices', '0', null, '2019-01-30 13:44:34', '2019-01-30 13:44:34');
INSERT INTO `permissions` VALUES ('54', 'create_notices', 'Create Notices', '0', null, '2019-01-30 13:44:35', '2019-01-30 13:44:35');
INSERT INTO `permissions` VALUES ('55', 'edit_notices', 'Edit Notices', '0', null, '2019-01-30 13:44:35', '2019-01-30 13:44:35');
INSERT INTO `permissions` VALUES ('56', 'delete_notices', 'Delete Notices', '0', null, '2019-01-30 13:44:35', '2019-01-30 13:44:35');
INSERT INTO `permissions` VALUES ('57', 'view_users', 'View Users', '1', null, '2019-01-30 13:44:35', '2019-01-30 13:44:35');
INSERT INTO `permissions` VALUES ('58', 'create_users', 'Create Users', '1', null, '2019-01-30 13:44:35', '2019-01-30 13:44:35');
INSERT INTO `permissions` VALUES ('59', 'edit_users', 'Edit Users', '1', null, '2019-01-30 13:44:35', '2019-01-30 13:44:35');
INSERT INTO `permissions` VALUES ('60', 'delete_users', 'Delete Users', '1', null, '2019-01-30 13:44:35', '2019-01-30 13:44:35');
INSERT INTO `permissions` VALUES ('61', 'view_job_vacancies', 'View Job Vacancies', '0', null, '2019-01-30 13:44:35', '2019-01-30 13:44:35');
INSERT INTO `permissions` VALUES ('62', 'create_job_vacancies', 'Create Job Vacancies', '0', null, '2019-01-30 13:44:35', '2019-01-30 13:44:35');
INSERT INTO `permissions` VALUES ('63', 'edit_job_vacancies', 'Edit Job Vacancies', '0', null, '2019-01-30 13:44:36', '2019-01-30 13:44:36');
INSERT INTO `permissions` VALUES ('64', 'delete_job_vacancies', 'Delete Job Vacancies', '0', null, '2019-01-30 13:44:36', '2019-01-30 13:44:36');
INSERT INTO `permissions` VALUES ('65', 'view_candidates', 'View Candidates', '0', null, '2019-01-30 13:44:36', '2019-01-30 13:44:36');
INSERT INTO `permissions` VALUES ('66', 'create_candidates', 'Create Candidates', '0', null, '2019-01-30 13:44:36', '2019-01-30 13:44:36');
INSERT INTO `permissions` VALUES ('67', 'edit_candidates', 'Edit Candidates', '0', null, '2019-01-30 13:44:36', '2019-01-30 13:44:36');
INSERT INTO `permissions` VALUES ('68', 'delete_candidates', 'Delete Candidates', '0', null, '2019-01-30 13:44:36', '2019-01-30 13:44:36');
INSERT INTO `permissions` VALUES ('69', 'view_attendances', 'View Attendances', '1', null, '2019-01-30 13:44:36', '2019-01-30 13:44:36');
INSERT INTO `permissions` VALUES ('70', 'create_attendances', 'Create Attendances', '1', null, '2019-01-30 13:44:36', '2019-01-30 13:44:36');
INSERT INTO `permissions` VALUES ('71', 'edit_attendances', 'Edit Attendances', '1', null, '2019-01-30 13:44:36', '2019-01-30 13:44:36');
INSERT INTO `permissions` VALUES ('72', 'delete_attendances', 'Delete Attendances', '1', null, '2019-01-30 13:44:36', '2019-01-30 13:44:36');
INSERT INTO `permissions` VALUES ('73', 'view_cut_offs', 'View Cut Offs', '1', null, '2019-01-30 13:44:36', '2019-01-30 13:44:36');
INSERT INTO `permissions` VALUES ('74', 'create_cut_offs', 'Create Cut Offs', '1', null, '2019-01-30 13:44:37', '2019-01-30 13:44:37');
INSERT INTO `permissions` VALUES ('75', 'edit_cut_offs', 'Edit Cut Offs', '1', null, '2019-01-30 13:44:37', '2019-01-30 13:44:37');
INSERT INTO `permissions` VALUES ('76', 'delete_cut_offs', 'Delete Cut Offs', '1', null, '2019-01-30 13:44:37', '2019-01-30 13:44:37');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `layout` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Administrator', '1', null, '2019-01-30 13:43:51', '2019-01-30 13:43:51');
INSERT INTO `roles` VALUES ('2', 'Employee', '0', null, '2019-01-30 13:43:51', '2019-01-30 13:43:51');
INSERT INTO `roles` VALUES ('3', 'Team Leader/Manager', '0', null, '2019-01-30 13:43:51', '2019-01-30 13:43:51');

-- ----------------------------
-- Table structure for role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE `role_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `level` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role_permissions
-- ----------------------------
INSERT INTO `role_permissions` VALUES ('1', '1', '1', 'all', null, '2019-01-30 13:44:38', '2019-01-30 13:44:38');
INSERT INTO `role_permissions` VALUES ('2', '2', '1', 'all', null, '2019-01-30 13:44:38', '2019-01-30 13:44:38');
INSERT INTO `role_permissions` VALUES ('3', '3', '1', 'all', null, '2019-01-30 13:44:39', '2019-01-30 13:44:39');
INSERT INTO `role_permissions` VALUES ('4', '4', '1', 'all', null, '2019-01-30 13:44:39', '2019-01-30 13:44:39');
INSERT INTO `role_permissions` VALUES ('5', '5', '1', 'all', null, '2019-01-30 13:44:39', '2019-01-30 13:44:39');
INSERT INTO `role_permissions` VALUES ('6', '6', '1', 'all', null, '2019-01-30 13:44:39', '2019-01-30 13:44:39');
INSERT INTO `role_permissions` VALUES ('7', '7', '1', 'all', null, '2019-01-30 13:44:39', '2019-01-30 13:44:39');
INSERT INTO `role_permissions` VALUES ('8', '8', '1', 'all', null, '2019-01-30 13:44:39', '2019-01-30 13:44:39');
INSERT INTO `role_permissions` VALUES ('9', '9', '1', null, null, '2019-01-30 13:44:39', '2019-01-30 13:44:39');
INSERT INTO `role_permissions` VALUES ('10', '10', '1', null, null, '2019-01-30 13:44:39', '2019-01-30 13:44:39');
INSERT INTO `role_permissions` VALUES ('11', '11', '1', null, null, '2019-01-30 13:44:39', '2019-01-30 13:44:39');
INSERT INTO `role_permissions` VALUES ('12', '12', '1', null, null, '2019-01-30 13:44:39', '2019-01-30 13:44:39');
INSERT INTO `role_permissions` VALUES ('13', '13', '1', null, null, '2019-01-30 13:44:40', '2019-01-30 13:44:40');
INSERT INTO `role_permissions` VALUES ('14', '14', '1', null, null, '2019-01-30 13:44:40', '2019-01-30 13:44:40');
INSERT INTO `role_permissions` VALUES ('15', '15', '1', null, null, '2019-01-30 13:44:40', '2019-01-30 13:44:40');
INSERT INTO `role_permissions` VALUES ('16', '16', '1', null, null, '2019-01-30 13:44:40', '2019-01-30 13:44:40');
INSERT INTO `role_permissions` VALUES ('17', '17', '1', 'all', null, '2019-01-30 13:44:40', '2019-01-30 13:44:40');
INSERT INTO `role_permissions` VALUES ('18', '18', '1', 'all', null, '2019-01-30 13:44:40', '2019-01-30 13:44:40');
INSERT INTO `role_permissions` VALUES ('19', '19', '1', 'all', null, '2019-01-30 13:44:40', '2019-01-30 13:44:40');
INSERT INTO `role_permissions` VALUES ('20', '20', '1', 'all', null, '2019-01-30 13:44:40', '2019-01-30 13:44:40');
INSERT INTO `role_permissions` VALUES ('21', '21', '1', null, null, '2019-01-30 13:44:41', '2019-01-30 13:44:41');
INSERT INTO `role_permissions` VALUES ('22', '22', '1', null, null, '2019-01-30 13:44:41', '2019-01-30 13:44:41');
INSERT INTO `role_permissions` VALUES ('23', '23', '1', null, null, '2019-01-30 13:44:41', '2019-01-30 13:44:41');
INSERT INTO `role_permissions` VALUES ('24', '24', '1', null, null, '2019-01-30 13:44:41', '2019-01-30 13:44:41');
INSERT INTO `role_permissions` VALUES ('25', '25', '1', 'all', null, '2019-01-30 13:44:41', '2019-01-30 13:44:41');
INSERT INTO `role_permissions` VALUES ('26', '26', '1', 'all', null, '2019-01-30 13:44:41', '2019-01-30 13:44:41');
INSERT INTO `role_permissions` VALUES ('27', '27', '1', 'all', null, '2019-01-30 13:44:41', '2019-01-30 13:44:41');
INSERT INTO `role_permissions` VALUES ('28', '28', '1', 'all', null, '2019-01-30 13:44:41', '2019-01-30 13:44:41');
INSERT INTO `role_permissions` VALUES ('29', '29', '1', null, null, '2019-01-30 13:44:42', '2019-01-30 13:44:42');
INSERT INTO `role_permissions` VALUES ('30', '30', '1', null, null, '2019-01-30 13:44:42', '2019-01-30 13:44:42');
INSERT INTO `role_permissions` VALUES ('31', '31', '1', null, null, '2019-01-30 13:44:42', '2019-01-30 13:44:42');
INSERT INTO `role_permissions` VALUES ('32', '32', '1', null, null, '2019-01-30 13:44:42', '2019-01-30 13:44:42');
INSERT INTO `role_permissions` VALUES ('33', '33', '1', null, null, '2019-01-30 13:44:42', '2019-01-30 13:44:42');
INSERT INTO `role_permissions` VALUES ('34', '34', '1', null, null, '2019-01-30 13:44:42', '2019-01-30 13:44:42');
INSERT INTO `role_permissions` VALUES ('35', '35', '1', null, null, '2019-01-30 13:44:42', '2019-01-30 13:44:42');
INSERT INTO `role_permissions` VALUES ('36', '36', '1', null, null, '2019-01-30 13:44:42', '2019-01-30 13:44:42');
INSERT INTO `role_permissions` VALUES ('37', '37', '1', 'all', null, '2019-01-30 13:44:42', '2019-01-30 13:44:42');
INSERT INTO `role_permissions` VALUES ('38', '38', '1', 'all', null, '2019-01-30 13:44:43', '2019-01-30 13:44:43');
INSERT INTO `role_permissions` VALUES ('39', '39', '1', 'all', null, '2019-01-30 13:44:43', '2019-01-30 13:44:43');
INSERT INTO `role_permissions` VALUES ('40', '40', '1', 'all', null, '2019-01-30 13:44:43', '2019-01-30 13:44:43');
INSERT INTO `role_permissions` VALUES ('41', '41', '1', null, null, '2019-01-30 13:44:43', '2019-01-30 13:44:43');
INSERT INTO `role_permissions` VALUES ('42', '42', '1', null, null, '2019-01-30 13:44:43', '2019-01-30 13:44:43');
INSERT INTO `role_permissions` VALUES ('43', '43', '1', null, null, '2019-01-30 13:44:43', '2019-01-30 13:44:43');
INSERT INTO `role_permissions` VALUES ('44', '44', '1', null, null, '2019-01-30 13:44:43', '2019-01-30 13:44:43');
INSERT INTO `role_permissions` VALUES ('45', '45', '1', 'all', null, '2019-01-30 13:44:43', '2019-01-30 13:44:43');
INSERT INTO `role_permissions` VALUES ('46', '46', '1', 'all', null, '2019-01-30 13:44:44', '2019-01-30 13:44:44');
INSERT INTO `role_permissions` VALUES ('47', '47', '1', 'all', null, '2019-01-30 13:44:44', '2019-01-30 13:44:44');
INSERT INTO `role_permissions` VALUES ('48', '48', '1', 'all', null, '2019-01-30 13:44:44', '2019-01-30 13:44:44');
INSERT INTO `role_permissions` VALUES ('49', '49', '1', null, null, '2019-01-30 13:44:44', '2019-01-30 13:44:44');
INSERT INTO `role_permissions` VALUES ('50', '50', '1', null, null, '2019-01-30 13:44:44', '2019-01-30 13:44:44');
INSERT INTO `role_permissions` VALUES ('51', '51', '1', null, null, '2019-01-30 13:44:44', '2019-01-30 13:44:44');
INSERT INTO `role_permissions` VALUES ('52', '52', '1', null, null, '2019-01-30 13:44:44', '2019-01-30 13:44:44');
INSERT INTO `role_permissions` VALUES ('53', '53', '1', null, null, '2019-01-30 13:44:44', '2019-01-30 13:44:44');
INSERT INTO `role_permissions` VALUES ('54', '54', '1', null, null, '2019-01-30 13:44:44', '2019-01-30 13:44:44');
INSERT INTO `role_permissions` VALUES ('55', '55', '1', null, null, '2019-01-30 13:44:45', '2019-01-30 13:44:45');
INSERT INTO `role_permissions` VALUES ('56', '56', '1', null, null, '2019-01-30 13:44:45', '2019-01-30 13:44:45');
INSERT INTO `role_permissions` VALUES ('57', '57', '1', 'all', null, '2019-01-30 13:44:45', '2019-01-30 13:44:45');
INSERT INTO `role_permissions` VALUES ('58', '58', '1', 'all', null, '2019-01-30 13:44:45', '2019-01-30 13:44:45');
INSERT INTO `role_permissions` VALUES ('59', '59', '1', 'all', null, '2019-01-30 13:44:45', '2019-01-30 13:44:45');
INSERT INTO `role_permissions` VALUES ('60', '60', '1', 'all', null, '2019-01-30 13:44:45', '2019-01-30 13:44:45');
INSERT INTO `role_permissions` VALUES ('61', '61', '1', null, null, '2019-01-30 13:44:45', '2019-01-30 13:44:45');
INSERT INTO `role_permissions` VALUES ('62', '62', '1', null, null, '2019-01-30 13:44:45', '2019-01-30 13:44:45');
INSERT INTO `role_permissions` VALUES ('63', '63', '1', null, null, '2019-01-30 13:44:45', '2019-01-30 13:44:45');
INSERT INTO `role_permissions` VALUES ('64', '64', '1', null, null, '2019-01-30 13:44:45', '2019-01-30 13:44:45');
INSERT INTO `role_permissions` VALUES ('65', '65', '1', null, null, '2019-01-30 13:44:46', '2019-01-30 13:44:46');
INSERT INTO `role_permissions` VALUES ('66', '66', '1', null, null, '2019-01-30 13:44:46', '2019-01-30 13:44:46');
INSERT INTO `role_permissions` VALUES ('67', '67', '1', null, null, '2019-01-30 13:44:46', '2019-01-30 13:44:46');
INSERT INTO `role_permissions` VALUES ('68', '68', '1', null, null, '2019-01-30 13:44:46', '2019-01-30 13:44:46');
INSERT INTO `role_permissions` VALUES ('69', '69', '1', 'all', null, '2019-01-30 13:44:46', '2019-01-30 13:44:46');
INSERT INTO `role_permissions` VALUES ('70', '70', '1', 'all', null, '2019-01-30 13:44:46', '2019-01-30 13:44:46');
INSERT INTO `role_permissions` VALUES ('71', '71', '1', 'all', null, '2019-01-30 13:44:46', '2019-01-30 13:44:46');
INSERT INTO `role_permissions` VALUES ('72', '72', '1', 'all', null, '2019-01-30 13:44:46', '2019-01-30 13:44:46');
INSERT INTO `role_permissions` VALUES ('73', '73', '1', 'all', null, '2019-01-30 13:44:47', '2019-01-30 13:44:47');
INSERT INTO `role_permissions` VALUES ('74', '74', '1', 'all', null, '2019-01-30 13:44:47', '2019-01-30 13:44:47');
INSERT INTO `role_permissions` VALUES ('75', '75', '1', 'all', null, '2019-01-30 13:44:47', '2019-01-30 13:44:47');
INSERT INTO `role_permissions` VALUES ('76', '76', '1', 'all', null, '2019-01-30 13:44:47', '2019-01-30 13:44:47');
INSERT INTO `role_permissions` VALUES ('77', '1', '2', 'self', null, '2019-01-30 13:44:47', '2019-01-30 13:44:47');
INSERT INTO `role_permissions` VALUES ('78', '5', '2', 'team', null, '2019-01-30 13:44:47', '2019-01-30 13:44:47');
INSERT INTO `role_permissions` VALUES ('79', '25', '2', 'self', null, '2019-01-30 13:44:47', '2019-01-30 13:44:47');
INSERT INTO `role_permissions` VALUES ('80', '33', '2', null, null, '2019-01-30 13:44:47', '2019-01-30 13:44:47');
INSERT INTO `role_permissions` VALUES ('81', '37', '2', 'self', null, '2019-01-30 13:44:48', '2019-01-30 13:44:48');
INSERT INTO `role_permissions` VALUES ('82', '41', '2', null, null, '2019-01-30 13:44:48', '2019-01-30 13:44:48');
INSERT INTO `role_permissions` VALUES ('83', '45', '2', 'team', null, '2019-01-30 13:44:48', '2019-01-30 13:44:48');
INSERT INTO `role_permissions` VALUES ('84', '46', '2', 'self', null, '2019-01-30 13:44:48', '2019-01-30 13:44:48');
INSERT INTO `role_permissions` VALUES ('85', '53', '2', null, null, '2019-01-30 13:44:48', '2019-01-30 13:44:48');
INSERT INTO `role_permissions` VALUES ('86', '61', '2', null, null, '2019-01-30 13:44:48', '2019-01-30 13:44:48');
INSERT INTO `role_permissions` VALUES ('87', '1', '3', 'team', null, '2019-01-30 13:44:48', '2019-01-30 13:44:48');
INSERT INTO `role_permissions` VALUES ('88', '2', '3', 'team', null, '2019-01-30 13:44:48', '2019-01-30 13:44:48');
INSERT INTO `role_permissions` VALUES ('89', '3', '3', 'team', null, '2019-01-30 13:44:48', '2019-01-30 13:44:48');
INSERT INTO `role_permissions` VALUES ('90', '4', '3', 'team', null, '2019-01-30 13:44:48', '2019-01-30 13:44:48');
INSERT INTO `role_permissions` VALUES ('91', '5', '3', 'team', null, '2019-01-30 13:44:48', '2019-01-30 13:44:48');
INSERT INTO `role_permissions` VALUES ('92', '6', '3', 'team', null, '2019-01-30 13:44:49', '2019-01-30 13:44:49');
INSERT INTO `role_permissions` VALUES ('93', '7', '3', 'team', null, '2019-01-30 13:44:49', '2019-01-30 13:44:49');
INSERT INTO `role_permissions` VALUES ('94', '8', '3', 'team', null, '2019-01-30 13:44:49', '2019-01-30 13:44:49');
INSERT INTO `role_permissions` VALUES ('95', '17', '3', 'team', null, '2019-01-30 13:44:49', '2019-01-30 13:44:49');
INSERT INTO `role_permissions` VALUES ('96', '18', '3', 'team', null, '2019-01-30 13:44:49', '2019-01-30 13:44:49');
INSERT INTO `role_permissions` VALUES ('97', '19', '3', 'team', null, '2019-01-30 13:44:49', '2019-01-30 13:44:49');
INSERT INTO `role_permissions` VALUES ('98', '20', '3', 'team', null, '2019-01-30 13:44:49', '2019-01-30 13:44:49');
INSERT INTO `role_permissions` VALUES ('99', '25', '3', 'team', null, '2019-01-30 13:44:49', '2019-01-30 13:44:49');
INSERT INTO `role_permissions` VALUES ('100', '26', '3', 'team', null, '2019-01-30 13:44:50', '2019-01-30 13:44:50');
INSERT INTO `role_permissions` VALUES ('101', '27', '3', 'team', null, '2019-01-30 13:44:50', '2019-01-30 13:44:50');
INSERT INTO `role_permissions` VALUES ('102', '28', '3', 'team', null, '2019-01-30 13:44:50', '2019-01-30 13:44:50');
INSERT INTO `role_permissions` VALUES ('103', '37', '3', 'team', null, '2019-01-30 13:44:50', '2019-01-30 13:44:50');
INSERT INTO `role_permissions` VALUES ('104', '38', '3', 'team', null, '2019-01-30 13:44:50', '2019-01-30 13:44:50');
INSERT INTO `role_permissions` VALUES ('105', '39', '3', 'team', null, '2019-01-30 13:44:50', '2019-01-30 13:44:50');
INSERT INTO `role_permissions` VALUES ('106', '40', '3', 'team', null, '2019-01-30 13:44:50', '2019-01-30 13:44:50');
INSERT INTO `role_permissions` VALUES ('107', '45', '3', 'team', null, '2019-01-30 13:44:51', '2019-01-30 13:44:51');
INSERT INTO `role_permissions` VALUES ('108', '46', '3', 'team', null, '2019-01-30 13:44:51', '2019-01-30 13:44:51');
INSERT INTO `role_permissions` VALUES ('109', '47', '3', 'team', null, '2019-01-30 13:44:51', '2019-01-30 13:44:51');
INSERT INTO `role_permissions` VALUES ('110', '48', '3', 'team', null, '2019-01-30 13:44:51', '2019-01-30 13:44:51');
INSERT INTO `role_permissions` VALUES ('111', '57', '3', 'team', null, '2019-01-30 13:44:51', '2019-01-30 13:44:51');
INSERT INTO `role_permissions` VALUES ('112', '58', '3', 'team', null, '2019-01-30 13:44:51', '2019-01-30 13:44:51');
INSERT INTO `role_permissions` VALUES ('113', '59', '3', 'team', null, '2019-01-30 13:44:51', '2019-01-30 13:44:51');
INSERT INTO `role_permissions` VALUES ('114', '60', '3', 'team', null, '2019-01-30 13:44:52', '2019-01-30 13:44:52');
INSERT INTO `role_permissions` VALUES ('115', '69', '3', 'team', null, '2019-01-30 13:44:52', '2019-01-30 13:44:52');
INSERT INTO `role_permissions` VALUES ('116', '70', '3', 'team', null, '2019-01-30 13:44:52', '2019-01-30 13:44:52');
INSERT INTO `role_permissions` VALUES ('117', '71', '3', 'team', null, '2019-01-30 13:44:52', '2019-01-30 13:44:52');
INSERT INTO `role_permissions` VALUES ('118', '72', '3', 'team', null, '2019-01-30 13:44:52', '2019-01-30 13:44:52');
INSERT INTO `role_permissions` VALUES ('119', '73', '3', 'team', null, '2019-01-30 13:44:52', '2019-01-30 13:44:52');
INSERT INTO `role_permissions` VALUES ('120', '74', '3', 'team', null, '2019-01-30 13:44:52', '2019-01-30 13:44:52');
INSERT INTO `role_permissions` VALUES ('121', '75', '3', 'team', null, '2019-01-30 13:44:52', '2019-01-30 13:44:52');
INSERT INTO `role_permissions` VALUES ('122', '76', '3', 'team', null, '2019-01-30 13:44:52', '2019-01-30 13:44:52');
INSERT INTO `role_permissions` VALUES ('123', '61', '3', null, null, '2019-01-30 13:44:52', '2019-01-30 13:44:52');
INSERT INTO `role_permissions` VALUES ('124', '62', '3', null, null, '2019-01-30 13:44:53', '2019-01-30 13:44:53');
INSERT INTO `role_permissions` VALUES ('125', '63', '3', null, null, '2019-01-30 13:44:53', '2019-01-30 13:44:53');
INSERT INTO `role_permissions` VALUES ('126', '64', '3', null, null, '2019-01-30 13:44:53', '2019-01-30 13:44:53');
INSERT INTO `role_permissions` VALUES ('127', '65', '3', 'team', null, '2019-01-30 13:44:53', '2019-01-30 13:44:53');
INSERT INTO `role_permissions` VALUES ('128', '66', '3', 'team', null, '2019-01-30 13:44:53', '2019-01-30 13:44:53');
INSERT INTO `role_permissions` VALUES ('129', '67', '3', 'team', null, '2019-01-30 13:44:53', '2019-01-30 13:44:53');
INSERT INTO `role_permissions` VALUES ('130', '68', '3', 'team', null, '2019-01-30 13:44:53', '2019-01-30 13:44:53');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cellphone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `local_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_item_id` int(11) NOT NULL,
  `date_hired` date DEFAULT NULL,
  `exit_date` date DEFAULT NULL,
  `salary` decimal(10,2) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `profile_picture` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Super', 'Admin', '1983-09-17', 'M', 'superadmin@gmail.com', '(354) 962-2776 x7162', '+1-340-691-7360', '86559 Schowalter Garden\nSouth Opheliaview, MN 85680-1347', '9454 Wuckert Path Apt. 729\nNorth Louie, AL 76507-7862', '308053', '5', '4', '1983-06-13', null, '15956.00', '1', 'superadmin', '$2y$10$LbHybxxqYx2t4doniVh.xeBvLWhGZKrToQl7SQ4YwXkoiziHBiNTu', '', 'SAXInqODjyHrynUgFNZDlE2GvXCaslioYm2Jq1nLbQO6LD3qUdMCDznwHDI4', null, '2019-01-30 13:43:43', '2019-01-30 15:07:05');
INSERT INTO `users` VALUES ('2', 'Dalton', 'Harvey', '1998-11-16', 'F', 'liam.pollich@yahoo.com', '805-631-5850 x10811', '1-493-637-9710', '511 Kolby Court Suite 994\nClaudinefort, NC 59004', '929 Barton Trail\nRolfsonland, SC 39308-6451', '499471', '1', '3', '1982-08-13', null, '17453.00', '2', 'employee', '$2y$10$NII8c5CHYCTptbVgoQF0eOkwQLhkBEwu6JRzcVUC/kAnyz2KjAe8a', '', null, null, '2019-01-30 13:43:43', '2019-01-30 13:43:43');
INSERT INTO `users` VALUES ('3', 'Jairo', 'Shields', '2006-08-20', 'F', 'esperanza13@hotmail.com', '587.481.1946', '(939) 948-1862 x2998', '752 Kathryne Mews\nStromanport, HI 23896', '85483 Ryan Meadows Suite 785\nDonnellyside, KS 86223-6019', '131241', '3', '10', '2005-01-28', null, '22259.00', '3', 'manager', '$2y$10$KeTqt5qxhHKap3emk49.4OKU33JbgV.BCqNI6ECXKZvnHyvFLrDDS', '', null, null, '2019-01-30 13:43:43', '2019-01-30 13:43:43');
INSERT INTO `users` VALUES ('4', 'Skyla', 'Cormier', '1979-06-17', 'F', 'cheller@connelly.com', '727-824-7623 x60939', '(957) 619-8533', '291 Christa Points Suite 643\nRutherfordhaven, MD 77834-3331', '57830 Isadore Glens\nLake Demetriusborough, AL 42735', '841336', '3', '4', '1995-01-07', null, '21503.00', '2', 'beau.kassulke', '$2y$10$jSDxBFhHKIIU5nQVZI3kOeIgh0Je0mbs/HFFoJTX1W.h6YlQHxpoC', '', null, null, '2019-01-30 13:43:43', '2019-01-30 13:43:43');
INSERT INTO `users` VALUES ('5', 'Justice', 'Koch', '1985-10-09', 'M', 'ghamill@emmerich.com', '743-621-2100 x1498', '(681) 350-7103 x082', '209 Alvina Mills\nWest Kaela, VA 23433', '2094 Zieme Motorway Suite 011\nLake Stephaniefort, MN 42438-5409', '796554', '5', '4', '2000-09-30', null, '16008.00', '2', 'pschoen', '$2y$10$2N9IQBsz/ZOXQwz7qkuXV.ECJYSLMUhz2qlBOnc3cCOEdTg0gi2ey', '', null, null, '2019-01-30 13:43:43', '2019-01-30 13:43:43');
INSERT INTO `users` VALUES ('6', 'Jody', 'Swaniawski', '1974-02-04', 'F', 'brook.maggio@yahoo.com', '(829) 646-2466 x061', '831-999-2423', '142 Kyra Shoals\nGutkowskiton, NY 78517-5701', '522 Smitham Square\nMabelstad, VT 90832', '374710', '2', '6', '2005-01-27', null, '24467.00', '2', 'reynolds.korey', '$2y$10$19ONQR3GKMTB54PqsObUw.QT/cUimo3r88S85v/6M5l9s4MDB1sAe', '', null, null, '2019-01-30 13:43:44', '2019-01-30 13:43:44');
INSERT INTO `users` VALUES ('7', 'Vilma', 'Leannon', '2010-03-25', 'F', 'joanie07@veum.com', '704.264.3426', '1-281-779-4525', '75348 Padberg Burgs\nJaquelinebury, TN 73650-3417', '66927 Cruickshank Ranch\nEast Estelfort, MT 88437-4566', '37899', '1', '10', '2016-02-13', null, '15135.00', '2', 'pkuhic', '$2y$10$0PxcavCj0SHcmxf5EovojuXrGuU441gkm7K8i/Mo8vkQEmXKiPZuG', '', null, null, '2019-01-30 13:43:44', '2019-01-30 13:43:44');
INSERT INTO `users` VALUES ('8', 'Mariah', 'Stoltenberg', '1983-09-18', 'F', 'fnader@gmail.com', '1-352-789-7528 x301', '+1-407-594-0448', '428 Hand Walks\nPort Mossie, FL 15438-8762', '2855 Bode Locks\nEmmerichfurt, OR 30913-3836', '832636', '1', '4', '2010-09-12', null, '21474.00', '2', 'wanda76', '$2y$10$zP02m69lnVeGIbuHbaCGJuUJVvi9EvXqdyCQ1IxpvFR.2jRhLB1G.', '', null, null, '2019-01-30 13:43:44', '2019-01-30 13:43:44');
INSERT INTO `users` VALUES ('9', 'Albertha', 'Anderson', '1971-08-23', 'M', 'hintz.jarrell@gmail.com', '672-949-6933 x35459', '(202) 325-9771 x515', '951 Mills Manors\nRodrigoberg, IN 05290-3026', '90605 Jerome Island Suite 490\nLake Eleanoraborough, NM 70110', '697739', '4', '1', '2003-10-27', null, '16602.00', '2', 'kling.parker', '$2y$10$wixke/6VLZoNn7TnOp6Cf.deLLFUoZuiMqdCi8hjuq1IomXz2zDhm', '', null, null, '2019-01-30 13:43:44', '2019-01-30 13:43:44');
INSERT INTO `users` VALUES ('10', 'Kirsten', 'Stiedemann', '1983-06-14', 'F', 'ycasper@gmail.com', '+1-978-802-9022', '(343) 940-5611 x8167', '45056 Cronin Lane\nAngelinechester, KY 38819', '397 Labadie Harbor Suite 670\nEast Elmohaven, NE 26075-5003', '930519', '5', '6', '1999-08-25', null, '22271.00', '2', 'qhand', '$2y$10$wctFdW1jkmId6Fj1tjMU8.tVj0wTo/RAZolffRjUoXTN6nEqxZfO2', '', null, null, '2019-01-30 13:43:44', '2019-01-30 13:43:44');
INSERT INTO `users` VALUES ('11', 'Otis', 'Cruickshank', '2001-03-23', 'M', 'sydnee.cartwright@glover.net', '(692) 379-9647 x629', '1-560-954-4577 x426', '14787 Clay Cove\nMarlenmouth, TN 60597-9229', '824 Langosh Cliff Suite 523\nWest Hassan, OR 08503-0476', '555626', '5', '4', '1992-12-16', null, '20493.00', '2', 'christina95', '$2y$10$zEFJg4Pf14/Gu.y05lX67etPUhD9F8z2XIVtDksuCHCz7sKFuuy3y', '', null, null, '2019-01-30 13:43:44', '2019-01-30 13:43:44');
INSERT INTO `users` VALUES ('12', 'Demond', 'Koelpin', '2017-01-15', 'M', 'west.toby@hotmail.com', '+1-491-347-9266', '1-709-267-3675 x313', '401 Frami Ways\nWest Julesport, OK 80404-1437', '6755 Okuneva Tunnel Suite 556\nDillanmouth, VA 87314', '883675', '1', '6', '1988-10-24', null, '23759.00', '2', 'clemmie71', '$2y$10$K.FYB4hRnj/EzGN3D64iKOGlZBZ6N6cSyex/G85T2DuCF6vRD1PHe', '', null, null, '2019-01-30 13:43:44', '2019-01-30 13:43:44');
INSERT INTO `users` VALUES ('13', 'Hilario', 'Emard', '1975-02-28', 'F', 'lisette01@mohr.com', '(416) 750-6912', '521-433-7781 x8501', '453 Fae Lakes Apt. 593\nSouth Jairo, OK 57495', '5220 Liza Heights Suite 545\nPort Megane, ND 13774-4188', '279631', '1', '2', '1999-05-23', null, '19754.00', '2', 'pkonopelski', '$2y$10$LqbtmiXXNB53EXkYeIfUeu.ulhaAUjNm22hLDfrSMUdHEk8nCimDS', '', null, null, '2019-01-30 13:43:45', '2019-01-30 13:43:45');
INSERT INTO `users` VALUES ('14', 'Kyle', 'Williamson', '1984-12-18', 'F', 'heather.quitzon@gmail.com', '(662) 237-6218 x2767', '(596) 804-7577 x608', '614 Geraldine Streets Apt. 704\nWest Billy, MN 87523', '81511 Muller Lodge\nGeneralberg, OH 76313', '212631', '2', '6', '1978-12-09', null, '20827.00', '2', 'wehner.roscoe', '$2y$10$VxUOYGkw3hPv7lT7TvKEZuBUf.n9hlBk4e0Dy2dtYyIPeWIEYKT9W', '', null, null, '2019-01-30 13:43:45', '2019-01-30 13:43:45');
INSERT INTO `users` VALUES ('15', 'Adelbert', 'Okuneva', '1993-08-19', 'F', 'fgreenfelder@hotmail.com', '(493) 855-6292', '+1.592.762.7491', '24106 Abshire Tunnel\nEulastad, VA 63002', '2888 Maxine Branch Apt. 431\nSouth Juvenalborough, PA 01105-5915', '186115', '4', '2', '1981-08-27', null, '24411.00', '2', 'pcollins', '$2y$10$e8DV0giL3B6YnMSbPIyCdelYdmsqAeOvDwCX87nhk6TxDK9c14Ine', '', null, null, '2019-01-30 13:43:45', '2019-01-30 13:43:45');
INSERT INTO `users` VALUES ('16', 'Evalyn', 'Rohan', '1989-10-19', 'F', 'jazlyn30@gmail.com', '1-561-676-4970', '(482) 713-5404 x661', '3615 Jerrod Crossing\nPansystad, AL 40972', '537 Weber Plains Suite 862\nAmarahaven, KY 91311', '888551', '3', '5', '2002-01-04', null, '21900.00', '2', 'tyrique.hoeger', '$2y$10$.LOPTmQaExjaJFzhDIed0uLSLOVPuPoKYByDwJRONyVn4ujuB1Eku', '', null, null, '2019-01-30 13:43:45', '2019-01-30 13:43:45');
INSERT INTO `users` VALUES ('17', 'Darwin', 'Quitzon', '2004-01-01', 'M', 'sratke@kertzmann.info', '1-442-842-3227 x013', '948-221-0013', '971 Aurelia Mountains Suite 678\nNorth Thelmachester, CA 69529', '4457 Anderson Loaf\nPort Sigurd, ME 43071-5246', '700706', '2', '8', '1983-11-17', null, '20879.00', '2', 'aheidenreich', '$2y$10$P75pF/BBE1JRRoo.fvsOgeMMWHZ.BLhyzU7WA7fZGnuRuvbqP/4Ee', '', null, null, '2019-01-30 13:43:45', '2019-01-30 13:43:45');
INSERT INTO `users` VALUES ('18', 'Laurine', 'Buckridge', '1972-07-11', 'F', 'jacobs.kaycee@yahoo.com', '1-742-359-7891', '350-753-7412 x1088', '5924 Jacobson Ferry Suite 128\nPort Mario, MD 35293', '4202 Wiza Mountain Apt. 662\nWiegandbury, ME 22642-7217', '726242', '2', '2', '1984-01-12', null, '17039.00', '2', 'chanelle38', '$2y$10$vY6XYLvGr.YTD/paPk7vd.S4YeGIWkYOyQBglSZYvu0iu3xSrzNyO', '', null, null, '2019-01-30 13:43:45', '2019-01-30 13:43:45');
INSERT INTO `users` VALUES ('19', 'Luther', 'Schaden', '1984-12-30', 'F', 'jeanette06@gislason.com', '752.249.2311 x1717', '+1-234-361-5709', '329 Brando Plains Apt. 786\nPort Emily, ID 06720-5431', '43247 Adolph Isle\nAdafort, ND 51369', '353077', '2', '9', '1994-12-27', null, '16980.00', '2', 'rodriguez.madge', '$2y$10$EIIgTTiNK1mSOSkmCFjoxOgBPNZwXwd1KZZs4BaHlxN0F/WYsTCvq', '', null, null, '2019-01-30 13:43:45', '2019-01-30 13:43:45');
INSERT INTO `users` VALUES ('20', 'Karlie', 'Pfeffer', '1989-12-22', 'F', 'yvette16@yahoo.com', '(417) 887-5253', '+1-673-637-5882', '843 Jena Pines Apt. 693\nBlockville, WA 37015', '145 Leuschke Prairie Apt. 627\nSouth Rosendofurt, TN 31651-1710', '278336', '1', '4', '1975-11-12', null, '21563.00', '2', 'damien.koch', '$2y$10$VdFU0xii0mf1zkbAG/ne/OrYif/PZT96vDoPvP2bT4gCqHkfaW1ke', '', null, null, '2019-01-30 13:43:46', '2019-01-30 13:43:46');
INSERT INTO `users` VALUES ('21', 'Hank', 'Wisoky', '1978-05-18', 'F', 'gwen93@denesik.com', '+1-703-937-6559', '(738) 612-0468 x1107', '8190 Clarissa Roads\nMcLaughlinburgh, IN 32606-5411', '20811 Gerhold Neck\nNorth Naomi, NY 70104', '428840', '4', '4', '1986-10-29', null, '18925.00', '2', 'mckenzie66', '$2y$10$90Q.GExD7dyG0R5oC9hOFeBvKsxWYui6OtYMGb6K4oQcdGjqQuUCC', '', null, null, '2019-01-30 13:43:46', '2019-01-30 13:43:46');
INSERT INTO `users` VALUES ('22', 'Felipe', 'Walsh', '2018-08-07', 'F', 'bartell.jaycee@gmail.com', '(230) 371-0120 x5024', '1-519-744-9759', '2409 Gerlach Parks Apt. 339\nMaudefurt, KY 02532-2142', '9914 Morar Flat\nAlexaport, OK 23377', '47138', '3', '1', '2006-11-23', null, '16616.00', '2', 'wunsch.luella', '$2y$10$1tiPgrQtxRFQxUAQep253OYF.CFqQrW7SBKVjW4bCAIq/2Ckdpxdq', '', null, null, '2019-01-30 13:43:46', '2019-01-30 13:43:46');
INSERT INTO `users` VALUES ('23', 'Clarabelle', 'Padberg', '1980-12-12', 'M', 'tyrese.blick@huels.info', '+17638302272', '221.206.7634 x0746', '76581 Sandrine Gateway\nPort Jaleel, CA 16595-0403', '53379 Willms Flats\nNorth Estelle, MI 84765', '852507', '1', '4', '2006-12-27', null, '21674.00', '2', 'cquitzon', '$2y$10$KgrupRTjlfB5gD0Yf9WG3e2PyO3dCSQrzqNdi/118CX5OVBznkXFK', '', null, null, '2019-01-30 13:43:46', '2019-01-30 13:43:46');
INSERT INTO `users` VALUES ('24', 'Norris', 'Brown', '1994-07-23', 'F', 'kobe01@hotmail.com', '+1 (410) 906-8964', '1-902-787-6792 x7560', '63396 Carole Estates\nAngelinafort, UT 67946', '254 Batz Lodge Suite 727\nLaurelfurt, FL 47770-6982', '866763', '5', '8', '1990-06-06', null, '23262.00', '2', 'stone89', '$2y$10$1Qkb2sByZIQXQuFrtMPoQ.hXe93sOuA0JCj4KfJbpI30AteU5BFWi', '', null, null, '2019-01-30 13:43:46', '2019-01-30 13:43:46');
INSERT INTO `users` VALUES ('25', 'Kelley', 'Goyette', '1994-08-02', 'F', 'kolby.cassin@yahoo.com', '+15296122958', '+1.669.555.4219', '610 Jacobi Crescent Apt. 963\nFriedamouth, TX 58224-7354', '808 Towne Junction\nWest Haleyton, HI 26491', '624088', '1', '4', '1970-04-22', null, '22271.00', '2', 'zmacejkovic', '$2y$10$hUrxlhrmjfdyYWx0m1Biq.UgCTSqrXyT4hh5hD8VxwctqI7.d2Y4W', '', null, null, '2019-01-30 13:43:46', '2019-01-30 13:43:46');
INSERT INTO `users` VALUES ('26', 'Kenya', 'Hegmann', '1971-11-19', 'M', 'shaun.keebler@durgan.info', '1-351-466-1723 x4174', '1-890-314-9288 x333', '1560 Reichert Crescent\nVilmafort, ND 03700', '65660 Althea Plaza\nPort Kelley, OR 09523', '847134', '5', '10', '2006-06-23', null, '16432.00', '2', 'shanna17', '$2y$10$MF8ft0gqWR6IkwALGvWgSuzEGb9xmSHRInoOhZx8FWmHkG7WIiPSm', '', null, null, '2019-01-30 13:43:46', '2019-01-30 13:43:46');
INSERT INTO `users` VALUES ('27', 'Karina', 'Schinner', '2018-12-14', 'M', 'emmanuel60@hotmail.com', '958.969.0567', '768-896-0459 x5686', '1470 Nat Squares\nNorth Giovanna, PA 25370', '492 Bauch Points Suite 154\nNikitaborough, ID 27312', '760046', '2', '4', '1976-08-24', null, '18420.00', '2', 'greenholt.zack', '$2y$10$yKaugJEHV4uiJEIidb9IIevb7LFNrB2fNi7ielFU3Ovf9ZyR4a3zm', '', null, null, '2019-01-30 13:43:46', '2019-01-30 13:43:46');
INSERT INTO `users` VALUES ('28', 'Jaylon', 'Hodkiewicz', '2006-04-30', 'F', 'sally98@smitham.com', '(560) 313-7658 x3286', '445.965.2894', '7156 Ankunding Stravenue Suite 745\nNew Ashlee, IN 51267', '4912 Lebsack Roads\nMelissafurt, IN 32759', '468690', '3', '3', '1983-01-08', null, '17657.00', '2', 'augustine12', '$2y$10$IeTYjwLXWK2/Urjii0qZAeMH9ADMVzw6NHV8sT1kgcQ6gnCHQvkey', '', null, null, '2019-01-30 13:43:47', '2019-01-30 13:43:47');
INSERT INTO `users` VALUES ('29', 'Miracle', 'Cruickshank', '2007-08-30', 'M', 'bertrand.carroll@hotmail.com', '886-640-8123 x684', '273-894-9391 x1336', '165 Coty Skyway Suite 874\nSouth Destin, ND 38612', '949 Kub Estates Suite 836\nArnomouth, MA 84876', '124570', '5', '3', '2018-06-15', null, '15976.00', '2', 'charvey', '$2y$10$RvX6hWSiwWIIp/FVTk3/9ebRS/bjC19RwZf4A3gVkNDNNxWvA6RTi', '', null, null, '2019-01-30 13:43:47', '2019-01-30 13:43:47');
INSERT INTO `users` VALUES ('30', 'Kiera', 'Medhurst', '1989-05-06', 'F', 'roberts.brock@gmail.com', '670.532.9501', '+1.468.230.6245', '1572 Bergnaum Station Apt. 986\nMrazport, DE 21526-7310', '6830 Maryam Roads Suite 640\nTesstown, IA 60417', '601089', '4', '1', '1994-02-05', null, '19972.00', '2', 'santino.carter', '$2y$10$Jh6yDlYGZpqGEJZ3cQZ1metF9CR01hM7VUVmY/zWY58arCkQL0dGS', '', null, null, '2019-01-30 13:43:47', '2019-01-30 13:43:47');
INSERT INTO `users` VALUES ('31', 'Ruthie', 'Murazik', '1994-12-05', 'F', 'domenic.collins@schultz.com', '918-923-8630', '+1.425.240.7920', '23326 Gulgowski Expressway Apt. 503\nElwynshire, WY 11460', '740 Wiegand Viaduct\nNew Maryse, HI 93275-6250', '680580', '1', '8', '2005-09-25', null, '20234.00', '2', 'keaton.aufderhar', '$2y$10$SutKyg4Bp627XhK5yOnll.buHPsX1ZoqVVUVhxtTw0og.VVY1wrwy', '', null, null, '2019-01-30 13:43:47', '2019-01-30 13:43:47');
INSERT INTO `users` VALUES ('32', 'Matilda', 'Tromp', '1982-04-22', 'M', 'joey.runolfsdottir@willms.com', '+15897712227', '(962) 443-3869 x9103', '9838 Emmanuelle Mountain\nNew Jaclynbury, FL 15878-0476', '84088 Emilie Inlet Suite 261\nPort Madison, LA 54861-4397', '903854', '2', '4', '1989-01-17', null, '20328.00', '2', 'harber.kiley', '$2y$10$NoDZ5X5ix6FIOpO41P3dnO22qK6SQ6GsIIYmBHLy3FzETC18EmT06', '', null, null, '2019-01-30 13:43:47', '2019-01-30 13:43:47');
INSERT INTO `users` VALUES ('33', 'Dariana', 'Crona', '1982-05-09', 'F', 'meghan07@hotmail.com', '793-995-9639 x517', '681.989.5090', '496 Dereck Centers\nPort Mellieshire, IA 16606-8498', '86878 Rubye Lights Apt. 420\nRickeyhaven, CT 93068', '629792', '1', '4', '1990-06-12', null, '21687.00', '2', 'price.jed', '$2y$10$3hw0fuAkuE6sMNb1RbiOduQg4WwKRIM07WcYbh0XpE//0A48.V7iC', '', null, null, '2019-01-30 13:43:47', '2019-01-30 13:43:47');
INSERT INTO `users` VALUES ('34', 'Assunta', 'Hayes', '1991-01-09', 'F', 'howell.cecelia@orn.com', '819.390.2166 x40081', '(953) 460-8445', '434 Roob Crossroad Suite 521\nNorth Helena, WV 22360-0294', '349 Santiago Wells Suite 266\nErdmanbury, ND 98736', '35493', '5', '3', '1995-04-07', null, '23455.00', '2', 'zechariah80', '$2y$10$yDLyhJ0UfJC/A9XyC1IIzeXAwi9iMgXGzntgVhO8X3Q6MdblEoFti', '', null, null, '2019-01-30 13:43:47', '2019-01-30 13:43:47');
INSERT INTO `users` VALUES ('35', 'Jovani', 'Gulgowski', '1973-02-22', 'F', 'hermiston.horacio@hotmail.com', '(893) 381-9133 x6137', '+1-553-563-0762', '8853 Johns Orchard\nNew Faeland, MS 40452-1605', '26339 Crooks Falls\nNew Laviniaville, OR 57835', '546219', '4', '4', '2006-03-12', null, '23282.00', '2', 'ervin.carter', '$2y$10$7f2Cp0ZJAGZpbEVgAkyj1OLEhcir4CLAKB/28FkMjJ6lf5xm9pTFy', '', null, null, '2019-01-30 13:43:47', '2019-01-30 13:43:47');
INSERT INTO `users` VALUES ('36', 'Santina', 'Haag', '2005-08-08', 'M', 'zoila.renner@gmail.com', '248.657.1570', '1-938-561-7735 x6510', '157 Ignacio Crossroad\nWehnerfurt, OR 55223', '2187 Piper Islands\nHermannburgh, OR 51544', '120373', '2', '10', '2011-02-04', null, '18296.00', '2', 'oswaldo55', '$2y$10$oj1H6vLwba9YcNTIrvnIs.jvDsb2XV5qhrix3XpQ6D2qgRVhn91a2', '', null, null, '2019-01-30 13:43:47', '2019-01-30 13:43:47');
INSERT INTO `users` VALUES ('37', 'Macie', 'Medhurst', '2014-07-26', 'F', 'buddy59@hotmail.com', '604-599-3966', '210-232-2788 x67335', '43098 Quigley Lane Suite 472\nRunolfssonville, WA 96109', '895 Oda Divide\nNorth Dashawnville, AL 54505-4321', '774014', '5', '9', '1981-12-02', null, '21876.00', '2', 'bernard.wilkinson', '$2y$10$.FeLB.jvtyCXNWyoUTdKtuR8vOKVK860m7CdBN7094xybuX07mo8W', '', null, null, '2019-01-30 13:43:48', '2019-01-30 13:43:48');
INSERT INTO `users` VALUES ('38', 'Kaleigh', 'Weissnat', '1979-08-15', 'M', 'amira82@kuhic.info', '775.888.4659 x5868', '307.402.4837', '1253 Torrey Junction Suite 305\nWest Katelin, NE 29206', '1657 Greenholt Ridge\nAureliotown, OH 02283', '917912', '3', '7', '1998-02-05', null, '21510.00', '2', 'parker.ankunding', '$2y$10$nQkVSL31B79Y3IO0TRPuoOyFOKTbqrQKru46Eojw0mOOxLiXAySdC', '', null, null, '2019-01-30 13:43:48', '2019-01-30 13:43:48');
INSERT INTO `users` VALUES ('39', 'Jovan', 'Bauch', '2004-11-05', 'F', 'amelie75@bosco.net', '(621) 300-8200 x373', '607.501.1710 x10474', '67266 Clifford Walks Apt. 474\nEfrenville, SC 78526-9833', '2346 Collins Roads\nNew Scotberg, AR 52276', '577365', '1', '3', '1993-01-19', null, '22366.00', '2', 'plittel', '$2y$10$d52PMLURxDrWrFWHarEiw.K4mrr3N4zTTOd.59li.TzpKIYFtqT0G', '', null, null, '2019-01-30 13:43:48', '2019-01-30 13:43:48');
INSERT INTO `users` VALUES ('40', 'Brandt', 'Adams', '1986-09-02', 'F', 'kirlin.jessika@hotmail.com', '692.962.5482 x074', '+13579200403', '70505 Crystal Drives Apt. 267\nPort Charlotteview, AK 76638-4131', '892 Kimberly River Suite 972\nSpinkaport, MO 60426-0911', '732464', '2', '6', '2007-09-04', null, '20915.00', '2', 'eichmann.may', '$2y$10$7kjmHnUtFO6Iurc30ZRdtu8o.A4RqDY3xKnNM30Z.F7H5YZfWPB/2', '', null, null, '2019-01-30 13:43:48', '2019-01-30 13:43:48');
INSERT INTO `users` VALUES ('41', 'Bell', 'Hane', '1982-08-20', 'F', 'gvon@gmail.com', '380-594-7400 x702', '607-900-7320 x363', '7346 Cathrine Loop\nCrawfordton, DE 97388-1489', '87729 Montana Landing\nGayburgh, AK 54480', '389301', '3', '1', '1986-12-10', null, '19849.00', '2', 'cornelius57', '$2y$10$SaYLk.QB51MwrGlA3v5xnenUuhX8LJn2Q9xpl/gfVpfCi8CuLw6Se', '', null, null, '2019-01-30 13:43:48', '2019-01-30 13:43:48');
INSERT INTO `users` VALUES ('42', 'Rylee', 'Schoen', '1983-04-27', 'F', 'wwyman@gmail.com', '594.236.5526 x7350', '(229) 723-1885 x3578', '48384 Jared Land\nDickitown, AK 37326', '69433 Scottie Overpass Apt. 653\nStephanfurt, DE 96752', '116817', '3', '9', '2003-02-10', null, '18841.00', '2', 'david.leffler', '$2y$10$.UoNpKq4A8WD234QAEXJJeJLoPPbe31DznqX7bV4L2Bfbp83Umtgi', '', null, null, '2019-01-30 13:43:48', '2019-01-30 13:43:48');
INSERT INTO `users` VALUES ('43', 'Jasen', 'Pollich', '2010-02-13', 'F', 'kira79@gmail.com', '952-615-6725 x34373', '+1 (826) 926-0786', '768 Luettgen Turnpike\nEldoramouth, MS 55906', '9448 Simonis Oval\nNew Elissafort, PA 82917-1562', '52010', '4', '5', '1980-07-31', null, '21249.00', '2', 'cwill', '$2y$10$HIrbB2XOyuoGsG4vs/5EseZrTdFHOIqADZ8.lGhXb2pBtwYbt8RSq', '', null, null, '2019-01-30 13:43:48', '2019-01-30 13:43:48');
INSERT INTO `users` VALUES ('44', 'Onie', 'Hagenes', '1998-05-31', 'M', 'schinner.elinor@greenholt.com', '741.941.3050', '546-920-6852', '436 Lavon Ridges\nCliffordbury, NC 15822-1359', '9885 Marietta Shoals\nDouglasfurt, MA 85442-4441', '283942', '4', '7', '2001-06-22', null, '16874.00', '2', 'bmarquardt', '$2y$10$6iGe/NWr5yH6S/f5EROAb.OVosDY0hur9xryVJn5yVjQr4JLswky6', '', null, null, '2019-01-30 13:43:48', '2019-01-30 13:43:48');
INSERT INTO `users` VALUES ('45', 'Adella', 'Reichel', '1975-12-10', 'M', 'natalia94@botsford.com', '1-780-988-8875', '+1-654-586-4050', '714 Dejah Lights\nRomainebury, MA 19110', '7762 Lina Views\nSchoenland, MA 71973', '572194', '3', '1', '2018-05-26', null, '15956.00', '2', 'trutherford', '$2y$10$idq2JC8IE0L3ENE2RprbkOi6mSpzGgjA8EVn8rSTpD09lROBZ5z8a', '', null, null, '2019-01-30 13:43:49', '2019-01-30 13:43:49');
INSERT INTO `users` VALUES ('46', 'Bridie', 'Wiza', '1975-07-28', 'F', 'berta.labadie@koelpin.org', '(308) 546-4833', '343.246.0842 x24507', '80760 Towne Key\nPort Remington, TX 88792', '2862 Hayes Hollow Suite 314\nEast Edwin, SC 80964', '343689', '2', '1', '1976-10-30', null, '24015.00', '2', 'armani81', '$2y$10$rKoIq.TL8z6rbghrkTC6.eUKySMUIC.fObTCmJZ4q/0K8sp.yMHnG', '', null, null, '2019-01-30 13:43:49', '2019-01-30 13:43:49');
INSERT INTO `users` VALUES ('47', 'Kacie', 'Ankunding', '1977-09-14', 'F', 'boyle.precious@robel.com', '964.553.2351', '731-848-0979', '5627 Lueilwitz Bypass\nMurraytown, IN 12305-9000', '649 Pascale Pines Suite 571\nLake Electa, OR 47960', '443132', '3', '9', '1994-02-07', null, '17751.00', '2', 'sigrid.sanford', '$2y$10$mFoJX96Bpb98l7iFq.TwG.7LKxQXhHRv/4ZzsLeUn.hLX16kk78Au', '', null, null, '2019-01-30 13:43:49', '2019-01-30 13:43:49');
INSERT INTO `users` VALUES ('48', 'Jeremy', 'Willms', '1989-08-02', 'M', 'kemmer.jaylan@zulauf.info', '(286) 770-0940 x3070', '+1-558-449-4131', '200 Swaniawski Forge\nMustafaport, ME 30181', '1502 Ross Stravenue Suite 769\nRogahnberg, VA 62855-6054', '201031', '2', '3', '2008-03-11', null, '17146.00', '2', 'jhowell', '$2y$10$iYy2gqHRL0v84.lDOURkzeTJxS.9KG9GdEVXYPEFCK2H8Q6AhMM2K', '', null, null, '2019-01-30 13:43:49', '2019-01-30 13:43:49');
INSERT INTO `users` VALUES ('49', 'Mohamed', 'Smith', '1971-07-22', 'M', 'lynn.beier@oconnell.biz', '1-716-688-6466 x9332', '+1.383.812.0219', '82936 Torphy Knolls Suite 729\nBotsfordborough, WI 59839', '56356 King Fork Suite 312\nLake Ben, SD 62131-6763', '490719', '2', '7', '1997-03-13', null, '16235.00', '2', 'dannie86', '$2y$10$eTZZPLsxD0aAkn/Y3ZLQaeG1DCt5oUpCMxM5W7WadQBVMtRV0gQya', '', null, null, '2019-01-30 13:43:49', '2019-01-30 13:43:49');
INSERT INTO `users` VALUES ('50', 'Kevin', 'Stracke', '1980-02-04', 'M', 'xbailey@mosciski.com', '(884) 664-5089 x0486', '+1-587-549-4062', '131 Windler Ford\nGregport, IA 78843', '7249 Romaguera Forest Suite 321\nEast Jessview, FL 41418-3176', '451715', '2', '1', '1993-12-26', null, '18651.00', '2', 'kgerhold', '$2y$10$QFzAY2IqCEBEBdcP2kzhFOjDpdAYlcx0lxl.WQ8W9xVh.Zk24xZkq', '', null, null, '2019-01-30 13:43:50', '2019-01-30 13:43:50');
INSERT INTO `users` VALUES ('51', 'Adolphus', 'Walter', '1991-03-03', 'F', 'eichmann.fannie@krajcik.com', '1-824-360-8400', '+1-285-959-2362', '50780 Raymond Club Apt. 238\nPort Jennyferton, NV 49092-7622', '36616 Koss Causeway Apt. 512\nNorth Clinton, HI 34891', '711205', '5', '2', '1985-06-02', null, '15466.00', '2', 'kmonahan', '$2y$10$kFG2lggyGOFWNlo/t2SDg.PtxgXl.R/nSPW.q7PNfOfJtNUV4gKcy', '', null, null, '2019-01-30 13:43:50', '2019-01-30 13:43:50');
INSERT INTO `users` VALUES ('52', 'Roscoe', 'Breitenberg', '1976-02-18', 'M', 'adell.christiansen@yahoo.com', '+1-909-394-8501', '+1 (449) 897-4333', '493 Cummerata Mall Suite 439\nEast Trenton, WA 29376', '20639 Osbaldo Lights\nSouth Ginoview, WA 50362', '551728', '5', '6', '1975-04-09', null, '18468.00', '2', 'nasir72', '$2y$10$RJ3wV5GPPg2PRajzUdobP.d6jbaHkghhjOLeja/hDPPMl2lO0mkO2', '', null, null, '2019-01-30 13:43:50', '2019-01-30 13:43:50');
INSERT INTO `users` VALUES ('53', 'Oscar', 'Schumm', '1982-11-27', 'F', 'iwiza@keebler.org', '1-452-459-8589 x8337', '+1-724-222-8642', '64054 Annabell Meadow Suite 882\nLake Kiera, WA 94604-7887', '56596 Pagac Knoll\nGermantown, MN 70192', '27651', '5', '2', '1990-05-28', null, '16658.00', '2', 'otilia.schinner', '$2y$10$Cw46en0xgggCjlq1RgwPeeK5kwI0PzJbWgZ2hBEuFoDSHCSZwkAsu', '', null, null, '2019-01-30 13:43:50', '2019-01-30 13:43:50');
