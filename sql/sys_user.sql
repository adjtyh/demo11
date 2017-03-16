/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : mysql

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-05-30 23:54:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `uId` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(50) NOT NULL,
  `uAge` int(11) NOT NULL,
  PRIMARY KEY (`uId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '重汽', '12');
INSERT INTO `sys_user` VALUES ('2', '天下', '13');
INSERT INTO `sys_user` VALUES ('3', '雄霸', '40');
INSERT INTO `sys_user` VALUES ('4', '秦霜', '25');
INSERT INTO `sys_user` VALUES ('5', '步惊云', '23');
INSERT INTO `sys_user` VALUES ('9', '聂风', '22');
INSERT INTO `sys_user` VALUES ('10', '断浪', '22');
