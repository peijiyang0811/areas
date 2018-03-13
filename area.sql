/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-03-13 20:02:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for areas
-- ----------------------------
DROP TABLE IF EXISTS `areas`;
CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '地区名称',
  `parent_id` int(11) DEFAULT NULL COMMENT '所属地区',
  `type` tinyint(1) NOT NULL COMMENT '1:国家;2:省;3:市;4:县',
  KEY `parent_id` (`parent_id`),
  KEY `type` (`type`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of areas
-- ----------------------------
INSERT INTO `areas` VALUES ('1', '中国', '0', '1');
INSERT INTO `areas` VALUES ('110000', '北京', '1', '2');
INSERT INTO `areas` VALUES ('110100', '北京', '110000', '3');
INSERT INTO `areas` VALUES ('110101', '东城区', '110000', '4');
INSERT INTO `areas` VALUES ('110102', '西城区', '110000', '4');
INSERT INTO `areas` VALUES ('410000', '河南省', '1', '2');
INSERT INTO `areas` VALUES ('410100', '郑州市', '410000', '3');
INSERT INTO `areas` VALUES ('411400', '商丘市', '410000', '3');
INSERT INTO `areas` VALUES ('410102', '中原区', '410100', '4');
INSERT INTO `areas` VALUES ('410103', '二七区', '410100', '4');
