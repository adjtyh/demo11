/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50717
Source Host           : 192.168.0.64:3306
Source Database       : addtest

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-03-16 16:40:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '松岗');
INSERT INTO `area` VALUES ('2', '大圃');
INSERT INTO `area` VALUES ('3', '官窑');
INSERT INTO `area` VALUES ('4', '小塘');
INSERT INTO `area` VALUES ('5', '罗村');

-- ----------------------------
-- Table structure for baobiao
-- ----------------------------
DROP TABLE IF EXISTS `baobiao`;
CREATE TABLE `baobiao` (
  `bId` int(11) NOT NULL AUTO_INCREMENT,
  `bName` varchar(255) DEFAULT NULL,
  `bDataTable` varchar(255) DEFAULT NULL,
  `bDecTable` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baobiao
-- ----------------------------
INSERT INTO `baobiao` VALUES ('1', '基本公共卫生服务', 'jbggws', 'jbggws_dec');
INSERT INTO `baobiao` VALUES ('2', '测试报表1', 'lbzbb', 'lbzbb_dec');

-- ----------------------------
-- Table structure for jbggws
-- ----------------------------
DROP TABLE IF EXISTS `jbggws`;
CREATE TABLE `jbggws` (
  `jId` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `i1` int(11) DEFAULT NULL COMMENT '站点编号',
  `i2` int(11) DEFAULT NULL,
  `i3` int(11) DEFAULT NULL,
  `i4` int(11) DEFAULT NULL,
  `i5` int(11) unsigned zerofill DEFAULT NULL,
  `i6` int(11) DEFAULT NULL,
  `i7` int(11) DEFAULT NULL,
  `i8` int(11) unsigned zerofill DEFAULT NULL,
  `i9` int(11) DEFAULT NULL,
  `i10` int(11) DEFAULT NULL,
  `i11` int(11) DEFAULT NULL,
  `i12` int(11) DEFAULT NULL,
  `i13` int(11) DEFAULT NULL,
  `i14` int(11) DEFAULT NULL,
  `i15` int(11) DEFAULT NULL,
  `i16` int(11) DEFAULT NULL,
  `i17` int(11) DEFAULT NULL,
  `i18` int(11) DEFAULT NULL,
  `i19` int(11) DEFAULT NULL,
  `i20` int(11) DEFAULT NULL,
  `i21` int(11) DEFAULT NULL,
  `i22` int(11) DEFAULT NULL,
  `i23` int(11) DEFAULT NULL,
  `i24` int(11) DEFAULT NULL,
  `i25` int(11) DEFAULT NULL,
  `i26` int(11) DEFAULT NULL,
  `i27` int(11) DEFAULT NULL,
  `i28` int(11) DEFAULT NULL,
  `i29` int(11) DEFAULT NULL,
  `i30` int(11) DEFAULT NULL,
  `i31` int(11) DEFAULT NULL,
  `i32` int(11) DEFAULT NULL,
  `i33` int(11) DEFAULT NULL,
  PRIMARY KEY (`jId`),
  KEY `stationIndex` (`i1`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbggws
-- ----------------------------
INSERT INTO `jbggws` VALUES ('19', '2017-01-25 00:50:43', '11', '1', '0', '0', '00000000000', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbggws` VALUES ('20', '2017-01-25 00:53:19', '11', '0', '9', '0', '00000000000', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '111');
INSERT INTO `jbggws` VALUES ('23', '2017-01-25 01:03:31', '7', '7', '7', '7', '00000000007', '7', '7', '00000000007', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7');
INSERT INTO `jbggws` VALUES ('26', '2017-01-25 11:48:13', '9', '9', '9', '9', '00000000009', '9', '9', '00000000009', '99', '9', '9', '9', '9', '9', '9', '9', '9', '99', '9', '9', '9', '99', '9', '9', '9', '9', '99', '9', '9', '9', '9', '9', '9');
INSERT INTO `jbggws` VALUES ('27', '2017-01-29 12:19:08', '3', '0', '0', '0', '00000000000', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbggws` VALUES ('29', '2017-01-29 13:18:46', '2', '0', '0', '0', '00000000000', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '0', '0', '0', '11');
INSERT INTO `jbggws` VALUES ('32', '2017-02-03 11:12:14', '22', '0', '0', '0', '00000000000', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '333');
INSERT INTO `jbggws` VALUES ('33', '2017-02-03 12:49:53', '21', '0', '0', '0', '00000000000', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1221');
INSERT INTO `jbggws` VALUES ('36', '2017-02-06 23:47:30', '1', '2', '3', '4', '00000000000', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11');
INSERT INTO `jbggws` VALUES ('37', '2017-02-06 23:51:31', '1', '6', '8', '0', '00000000000', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbggws` VALUES ('38', '2017-02-06 23:54:04', '1', '4', '0', '0', '00000000000', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4');
INSERT INTO `jbggws` VALUES ('39', '2017-02-07 00:33:22', '1', '111', '9', '7', '00000000000', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12');
INSERT INTO `jbggws` VALUES ('40', '2017-02-07 00:41:13', '1', '6', '8', '0', '00000000000', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12');
INSERT INTO `jbggws` VALUES ('41', '2017-02-07 08:17:12', '5', '2', '4', '5', '00000000006', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbggws` VALUES ('42', '2017-02-07 09:53:15', '5', '12', '3', '3', '00000000003', '3', '3', '00000000003', '3', '32', '3', '3', '33', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '53');
INSERT INTO `jbggws` VALUES ('44', '2017-03-16 15:06:03', '1', '11', '0', '0', '00000000000', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbggws` VALUES ('45', '2017-03-16 16:10:39', '1', '0', '0', '0', '00000000000', '0', '0', '00000000000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '0');

-- ----------------------------
-- Table structure for jbggws_dec
-- ----------------------------
DROP TABLE IF EXISTS `jbggws_dec`;
CREATE TABLE `jbggws_dec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbggws_dec
-- ----------------------------
INSERT INTO `jbggws_dec` VALUES ('1', '服务站名称', '请填简称，比如：桃园南');
INSERT INTO `jbggws_dec` VALUES ('2', '本季度传染病报告数', '本季度已经报告的传染病例数');
INSERT INTO `jbggws_dec` VALUES ('3', '高血压NAH随访人数', '本季度随访人数，不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('4', '当前高血压NAH总数', '当前已经管理的nah数，包括本季度新发现');
INSERT INTO `jbggws_dec` VALUES ('5', '35岁首诊测血压人数', '累计本年度各个季度总数');
INSERT INTO `jbggws_dec` VALUES ('6', '本季度发现临高人数', '本季度新发现人数(必须提供名单、建档），不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('7', '高血压本季随访人数', '本季度随访人数，不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('8', '高血压规范管理人数', '本年度已经规范管理的高血压总数（失访、死亡为不规范）');
INSERT INTO `jbggws_dec` VALUES ('9', '血压控制正常人数', '最后一次随访血压控制正常的人数\n（非仅本季度随访，比如第三季度未随访，但第二季度随访过，血压控制正常的人数；请注意：本字段存在逻辑关系，会被上级部门验算出来的！）');
INSERT INTO `jbggws_dec` VALUES ('10', '高血压新建档数', '本季度新建档案数，不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('11', '当前高血压总档案数', '本年度已经建档的总数，包括第一季度开始已经建档、在名单中，但已经失访、死亡的总数。');
INSERT INTO `jbggws_dec` VALUES ('12', '本季度糖耐量异常数', '本季度新发现人数(必须提供名单、建档），不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('13', '糖尿病本季随访人数', '本季度随访人数，不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('14', '糖尿病规范管理人数', '本年度已经规范管理的糖尿病总数（失访、死亡为不规范）');
INSERT INTO `jbggws_dec` VALUES ('15', '血糖控制正常人数', '最后一次随访血糖控制正常的人数\n（非仅本季度随访，比如第三季度未随访，但第二季度随访过，血糖控制正常的人数；请注意：本字段存在逻辑关系，会被上级部门验算出来的！）');
INSERT INTO `jbggws_dec` VALUES ('16', '糖尿病新建档数', '本季度新建档案数，不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('17', '当前糖尿病总档案数', '本年度已经建档的总数，包括第一季度开始已经建档、在名单中，但已经失访、死亡的总数。');
INSERT INTO `jbggws_dec` VALUES ('18', '本季度新建老年人档案数', '本季度新建档案数，不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('19', '本季度老年人随访数', '本季度随访人数，不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('20', '本季度老年人中医药健康管理人数', '本季度新建档案数，不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('21', '本季度老年人体检数', '本季度体检数（包括非6+2，必须已经更新体检表、纳入\n年度新名单的），不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('22', '本季度老年人6+2体检数', '仅报本季度完成6+2体检数（以体检结束递交的名单为准）');
INSERT INTO `jbggws_dec` VALUES ('23', '当前老年人建档总数', '本年度已经建档的老年人档案总数');
INSERT INTO `jbggws_dec` VALUES ('24', '本季度残疾人新建档案数', '本季度新建档案数，不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('25', '当前残疾人管理总数', '本年度已经建档或更新的残疾人档案总数');
INSERT INTO `jbggws_dec` VALUES ('26', '本季度残疾人随访数', '本季度随访人数，不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('27', '本季度健康讲座次数', '本季度开展的次数，有门诊部的要累计');
INSERT INTO `jbggws_dec` VALUES ('28', '本季度公众咨询次数', '本季度开展的次数，有门诊部的要累计');
INSERT INTO `jbggws_dec` VALUES ('29', '本季度音像播放次数', '本季度开展的次数，有门诊部的要累计');
INSERT INTO `jbggws_dec` VALUES ('30', '本季度新建户籍个人健康档案（份）', '本季度新建档案数，不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('31', '本季度新建非户籍个人健康档案（份）', '本季度新建档案数，不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('32', '本季度新建家庭健康档案（份）', '本季度新建档案数，不要累计各季度');
INSERT INTO `jbggws_dec` VALUES ('33', '新建各类档案合计', '包括6,10,12,16,18,30,31，32总和（自动计算）');

-- ----------------------------
-- Table structure for lbzbb
-- ----------------------------
DROP TABLE IF EXISTS `lbzbb`;
CREATE TABLE `lbzbb` (
  `lId` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `i1` int(11) DEFAULT NULL,
  `i2` int(11) DEFAULT NULL,
  `i3` int(11) DEFAULT NULL,
  `i4` int(11) DEFAULT NULL,
  `i5` int(11) DEFAULT NULL,
  `i6` int(11) DEFAULT NULL,
  `i7` int(11) DEFAULT NULL,
  `i8` int(11) DEFAULT NULL,
  `i9` int(11) DEFAULT NULL,
  `i10` int(11) DEFAULT NULL,
  `i11` int(11) DEFAULT NULL,
  `i12` int(11) DEFAULT NULL,
  `i13` int(11) DEFAULT NULL,
  `i14` int(11) DEFAULT NULL,
  `i15` int(11) DEFAULT NULL,
  `i16` int(11) DEFAULT NULL,
  `i17` int(11) DEFAULT NULL,
  PRIMARY KEY (`lId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lbzbb
-- ----------------------------
INSERT INTO `lbzbb` VALUES ('1', '2017-03-16 13:33:50', '2', '2017', '11', '1', '10', '10', '10', '10', '10', '10', '10', '10', '10', '10', '10', '10', '1');
INSERT INTO `lbzbb` VALUES ('2', '2017-03-16 13:35:53', '1', '2017', '11', '1', '20', '202', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20');

-- ----------------------------
-- Table structure for lbzbb_dec
-- ----------------------------
DROP TABLE IF EXISTS `lbzbb_dec`;
CREATE TABLE `lbzbb_dec` (
  `id` int(11) NOT NULL,
  `item` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lbzbb_dec
-- ----------------------------
INSERT INTO `lbzbb_dec` VALUES ('1', '服务站名称', '请填简称，比如：桃园南');
INSERT INTO `lbzbb_dec` VALUES ('2', '年份', '必填');
INSERT INTO `lbzbb_dec` VALUES ('3', '月份', '必填');
INSERT INTO `lbzbb_dec` VALUES ('4', '周序', '本月第几个周五，例如1月20日为本月第3个周五');
INSERT INTO `lbzbb_dec` VALUES ('5', '健康档案总数', '累积总数，包括本周新增');
INSERT INTO `lbzbb_dec` VALUES ('6', '健康档案本周新增数', '本周新建档案数');
INSERT INTO `lbzbb_dec` VALUES ('7', '老年人总管理数', '至填报日止总数，包括本周新增');
INSERT INTO `lbzbb_dec` VALUES ('8', '老年人本周新增档案数', '本周新增A');
INSERT INTO `lbzbb_dec` VALUES ('9', '老年人体检总数', '包括6+2和未完成6+2的体检');
INSERT INTO `lbzbb_dec` VALUES ('10', '老年人本周新增体检数', '包括6+2和未完成6+2的体检');
INSERT INTO `lbzbb_dec` VALUES ('11', '高血压病管理总数', '至填报日止总数，包括本周新增');
INSERT INTO `lbzbb_dec` VALUES ('12', '高血压病规范管理总数', '当季度规范数不大于当季度随访数');
INSERT INTO `lbzbb_dec` VALUES ('13', '高血压病本周新增数', '本周新增B');
INSERT INTO `lbzbb_dec` VALUES ('14', '糖尿病管理总数', '至填报日止总数，包括本周新增');
INSERT INTO `lbzbb_dec` VALUES ('15', '糖尿病规范管理总数', '当季度规范数不大于当季度随访数');
INSERT INTO `lbzbb_dec` VALUES ('16', '糖尿病本周新增数', '本周新增C');
INSERT INTO `lbzbb_dec` VALUES ('17', '合计本周新增糖尿病、高血压管理数', '合计13、16本周新增数(自动计算)');

-- ----------------------------
-- Table structure for mzgzlb
-- ----------------------------
DROP TABLE IF EXISTS `mzgzlb`;
CREATE TABLE `mzgzlb` (
  `mId` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `i1` int(11) DEFAULT NULL,
  `i2` int(11) DEFAULT NULL,
  `i3` int(11) DEFAULT NULL,
  `i4` double(11,2) DEFAULT NULL,
  `i5` int(11) DEFAULT NULL,
  `i6` int(11) DEFAULT NULL,
  `i7` double DEFAULT NULL,
  `i8` int(11) DEFAULT NULL,
  `i9` int(11) DEFAULT NULL,
  `i10` double DEFAULT NULL,
  `i11` int(11) DEFAULT NULL,
  `i12` int(11) DEFAULT NULL,
  `i13` int(11) DEFAULT NULL,
  `i14` int(11) DEFAULT NULL,
  `i15` int(11) DEFAULT NULL,
  `i16` int(11) DEFAULT NULL,
  `i17` int(11) DEFAULT NULL,
  `i18` int(11) DEFAULT NULL,
  `i19` int(11) DEFAULT NULL,
  `i20` int(11) DEFAULT NULL,
  `i21` int(11) DEFAULT NULL,
  `i22` int(11) DEFAULT NULL,
  `i23` int(11) DEFAULT NULL,
  `i24` int(11) DEFAULT NULL,
  PRIMARY KEY (`mId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mzgzlb
-- ----------------------------
INSERT INTO `mzgzlb` VALUES ('1', '2017-03-16 13:01:48', '1', '10', '10', '10.00', '10', '10', '1', '10', '10', '1', '10', '10', '10', '10', '10', '10', '10', '10', '10', '10', '10', '10', '10', '10');

-- ----------------------------
-- Table structure for mzgzlb_dec
-- ----------------------------
DROP TABLE IF EXISTS `mzgzlb_dec`;
CREATE TABLE `mzgzlb_dec` (
  `id` int(11) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mzgzlb_dec
-- ----------------------------
INSERT INTO `mzgzlb_dec` VALUES ('1', '服务站名称', '请填简称，比如：桃园南');
INSERT INTO `mzgzlb_dec` VALUES ('2', '本季度工作人员在岗数', '本季度在岗人员（除外产、病、事假等超过2个月的人员，需在第23点处填写此类人员数）');
INSERT INTO `mzgzlb_dec` VALUES ('3', '总门诊人数', '本季度数据，要与系统查询一致！');
INSERT INTO `mzgzlb_dec` VALUES ('4', '总门诊收入', '本季度数据，保留小数点1位');
INSERT INTO `mzgzlb_dec` VALUES ('5', '医保门诊人数', '本季度数据，要与系统查询一致！');
INSERT INTO `mzgzlb_dec` VALUES ('6', '中医药处方数', '本季度数据，要与系统查询一致！');
INSERT INTO `mzgzlb_dec` VALUES ('7', '中医处方比例', '本季度数据，保留小数点1位');
INSERT INTO `mzgzlb_dec` VALUES ('8', '平价药包数', '--');
INSERT INTO `mzgzlb_dec` VALUES ('9', '输液人数(次)', '--');
INSERT INTO `mzgzlb_dec` VALUES ('10', '输液比例', '本季度数据，保留小数点1位');
INSERT INTO `mzgzlb_dec` VALUES ('11', '肌注人数(次)', '--');
INSERT INTO `mzgzlb_dec` VALUES ('12', '雾化人数(次)', '--中医药适宜技术类必须有治疗记录，保存备查');
INSERT INTO `mzgzlb_dec` VALUES ('13', '天灸(次)', '--中医药适宜技术类必须有治疗记录，保存备查');
INSERT INTO `mzgzlb_dec` VALUES ('14', '艾灸(次)', '--中医药适宜技术类必须有治疗记录，保存备查');
INSERT INTO `mzgzlb_dec` VALUES ('15', '针灸(次)', '--中医药适宜技术类必须有治疗记录，保存备查');
INSERT INTO `mzgzlb_dec` VALUES ('16', '敷贴（穴贴）(次)', '--中医药适宜技术类必须有治疗记录，保存备查');
INSERT INTO `mzgzlb_dec` VALUES ('17', '拔火罐(次)', '--中医药适宜技术类必须有治疗记录，保存备查');
INSERT INTO `mzgzlb_dec` VALUES ('18', '神灯(次)', '--中医药适宜技术类必须有治疗记录，保存备查');
INSERT INTO `mzgzlb_dec` VALUES ('19', '穴注(次)', '--中医药适宜技术类必须有治疗记录，保存备查');
INSERT INTO `mzgzlb_dec` VALUES ('20', '推拿(次)', '--中医药适宜技术类必须有治疗记录，保存备查');
INSERT INTO `mzgzlb_dec` VALUES ('21', '中频（次）', '--中医药适宜技术类必须有治疗记录，保存备查');
INSERT INTO `mzgzlb_dec` VALUES ('22', '刮痧(次)', '--中医药适宜技术类必须有治疗记录，保存备查');
INSERT INTO `mzgzlb_dec` VALUES ('23', '熏洗(次)', '--中医药适宜技术类必须有治疗记录，保存备查');
INSERT INTO `mzgzlb_dec` VALUES ('24', '本季度休长假人数', '本季度已经休产、病、事假等超过2个月的人员数');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uId` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(255) NOT NULL,
  `uPassword` varchar(255) DEFAULT 'sq123456',
  `uLevel` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`uId`,`uName`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '0');
INSERT INTO `user` VALUES ('2', '全科', 'sq123456', '1');
INSERT INTO `user` VALUES ('4', '桃园南', 'sq123456', '2');
INSERT INTO `user` VALUES ('5', '	桃园北	', 'sq123456', '2');
INSERT INTO `user` VALUES ('6', '松夏', 'sq123456', '2');
INSERT INTO `user` VALUES ('7', '城北', 'sq123456', '2');
INSERT INTO `user` VALUES ('8', '松岗计生', 'sq123456', '2');
INSERT INTO `user` VALUES ('9', '松夏', 'sq123456', '2');
INSERT INTO `user` VALUES ('10', '大布', 'sq123456', '2');
INSERT INTO `user` VALUES ('11', '长虹岭', 'sq123456', '2');
INSERT INTO `user` VALUES ('12', '兴贤', 'sq123456', '2');
INSERT INTO `user` VALUES ('13', '横岗', 'sq123456', '2');
INSERT INTO `user` VALUES ('14', '高边', 'sq123456', '2');
INSERT INTO `user` VALUES ('15', '新城', 'sq123456', '2');
INSERT INTO `user` VALUES ('16', '五星', 'sq123456', '2');
INSERT INTO `user` VALUES ('17', '狮北', 'sq123456', '2');
INSERT INTO `user` VALUES ('18', '狮岭', 'sq123456', '2');
INSERT INTO `user` VALUES ('19', '招沙', 'sq123456', '2');
INSERT INTO `user` VALUES ('20', '狮山城区', 'sq123456', '2');
INSERT INTO `user` VALUES ('21', '穆院', 'sq123456', '2');
INSERT INTO `user` VALUES ('22', '狮南', 'sq123456', '2');
INSERT INTO `user` VALUES ('23', '狮中', 'sq123456', '2');
INSERT INTO `user` VALUES ('24', '大涡塘', 'sq123456', '2');
INSERT INTO `user` VALUES ('25', '狮西', 'sq123456', '2');
INSERT INTO `user` VALUES ('26', '莲塘', 'sq123456', '2');
INSERT INTO `user` VALUES ('27', '大学城', 'sq123456', '2');
INSERT INTO `user` VALUES ('28', '狮山计生', 'sq123456', '2');
INSERT INTO `user` VALUES ('29', '小塘计生', 'sq123456', '2');
INSERT INTO `user` VALUES ('30', '罗洞', 'sq123456', '2');
INSERT INTO `user` VALUES ('31', '大榄', 'sq123456', '2');
INSERT INTO `user` VALUES ('32', '小榄', 'sq123456', '2');
INSERT INTO `user` VALUES ('33', '马鞍岗', 'sq123456', '2');
INSERT INTO `user` VALUES ('34', '新凤', 'sq123456', '2');
INSERT INTO `user` VALUES ('35', '沙头', 'sq123456', '2');
INSERT INTO `user` VALUES ('36', '红沙', 'sq123456', '2');
INSERT INTO `user` VALUES ('37', '南浦', 'sq123456', '2');
INSERT INTO `user` VALUES ('38', '象岭', 'sq123456', '2');
INSERT INTO `user` VALUES ('39', '官窑计生', 'sq123456', '2');
INSERT INTO `user` VALUES ('40', '汀圃', 'sq123456', '2');
INSERT INTO `user` VALUES ('41', '新和', 'sq123456', '2');
INSERT INTO `user` VALUES ('42', '永安', 'sq123456', '2');
INSERT INTO `user` VALUES ('43', '联星', 'sq123456', '2');
INSERT INTO `user` VALUES ('44', '联和', 'sq123456', '2');
INSERT INTO `user` VALUES ('45', '街边', 'sq123456', '2');
INSERT INTO `user` VALUES ('46', '沙坑', 'sq123456', '2');
INSERT INTO `user` VALUES ('47', '朗沙', 'sq123456', '2');
INSERT INTO `user` VALUES ('48', '务庄', 'sq123456', '2');
INSERT INTO `user` VALUES ('49', '下柏', 'sq123456', '2');
INSERT INTO `user` VALUES ('50', '上柏', 'sq123456', '2');
INSERT INTO `user` VALUES ('51', '罗村', 'sq123456', '2');
INSERT INTO `user` VALUES ('52', '乐城', 'sq123456', '2');
INSERT INTO `user` VALUES ('53', '罗村计生', 'sq123456', '2');

-- ----------------------------
-- Table structure for zhandian
-- ----------------------------
DROP TABLE IF EXISTS `zhandian`;
CREATE TABLE `zhandian` (
  `zId` int(11) NOT NULL AUTO_INCREMENT,
  `zAreaId` int(11) DEFAULT NULL,
  `zStation` varchar(255) DEFAULT NULL,
  `zAbbreviation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`zId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhandian
-- ----------------------------
INSERT INTO `zhandian` VALUES ('1', '1', '桃园南社区卫生服务站', '桃园南');
INSERT INTO `zhandian` VALUES ('2', '1', '桃园北社区卫生服务站', '桃园北');
INSERT INTO `zhandian` VALUES ('3', '1', '松夏社区卫生服务站', '松夏');
INSERT INTO `zhandian` VALUES ('4', '1', '城北社区卫生服务站', '城北');
INSERT INTO `zhandian` VALUES ('5', '1', '松岗计生服务所', '松岗计生');
INSERT INTO `zhandian` VALUES ('6', '1', '松夏社区卫生服务站万石门诊部', '松夏');
INSERT INTO `zhandian` VALUES ('7', '2', '大布社区卫生服务站', '大布');
INSERT INTO `zhandian` VALUES ('8', '2', '长虹岭社区卫生服务站', '长虹岭');
INSERT INTO `zhandian` VALUES ('9', '2', '兴贤社区卫生服务站', '兴贤');
INSERT INTO `zhandian` VALUES ('10', '2', '横岗社区卫生服务站', '横岗');
INSERT INTO `zhandian` VALUES ('11', '2', '高边社区卫生服务站', '高边');
INSERT INTO `zhandian` VALUES ('12', '4', '新城社区卫生服务站', '新城');
INSERT INTO `zhandian` VALUES ('13', '4', '五星社区卫生服务站', '五星');
INSERT INTO `zhandian` VALUES ('14', '4', '狮北社区卫生服务站', '狮北');
INSERT INTO `zhandian` VALUES ('15', '4', '狮岭社区卫生服务站', '狮岭');
INSERT INTO `zhandian` VALUES ('16', '4', '招沙社区卫生服务站', '招沙');
INSERT INTO `zhandian` VALUES ('17', '4', '狮山城区社区卫生服务站', '狮山城区');
INSERT INTO `zhandian` VALUES ('18', '4', '城区社区卫生服务站穆院门诊部', '穆院');
INSERT INTO `zhandian` VALUES ('19', '4', '新城社区卫生服务中心狮南门诊部', '狮南');
INSERT INTO `zhandian` VALUES ('20', '4', '新城社区卫生服务中心狮中门诊部', '狮中');
INSERT INTO `zhandian` VALUES ('21', '4', '城区社区卫生服务站大涡塘门诊部', '大涡塘');
INSERT INTO `zhandian` VALUES ('22', '4', '狮北社区卫生服务站狮西门诊部', '狮西');
INSERT INTO `zhandian` VALUES ('23', '4', '狮岭社区卫生服务站莲塘门诊部', '莲塘');
INSERT INTO `zhandian` VALUES ('24', '4', '大学城社区卫生服务站', '大学城');
INSERT INTO `zhandian` VALUES ('25', '4', '狮山计生计生服务所', '狮山计生');
INSERT INTO `zhandian` VALUES ('26', '4', '小塘计生计生服务所', '小塘计生');
INSERT INTO `zhandian` VALUES ('27', '3', '小榄社区卫生服务站罗洞门诊部', '罗洞');
INSERT INTO `zhandian` VALUES ('28', '3', '大榄社区卫生服务站', '大榄');
INSERT INTO `zhandian` VALUES ('29', '3', '小榄社区卫生服务站', '小榄');
INSERT INTO `zhandian` VALUES ('30', '3', '马鞍岗社区卫生服务站', '马鞍岗');
INSERT INTO `zhandian` VALUES ('31', '3', '新凤社区卫生服务站', '新凤');
INSERT INTO `zhandian` VALUES ('32', '3', '沙头社区卫生服务站', '沙头');
INSERT INTO `zhandian` VALUES ('33', '3', '红沙社区卫生服务站', '红沙');
INSERT INTO `zhandian` VALUES ('34', '3', '南浦社区卫生服务站', '南浦');
INSERT INTO `zhandian` VALUES ('35', '3', '象岭社区卫生服务站', '象岭');
INSERT INTO `zhandian` VALUES ('36', '3', '官窑计生服务所', '官窑计生');
INSERT INTO `zhandian` VALUES ('37', '3', '沙头社区卫生服务站汀圃门诊部', '汀圃');
INSERT INTO `zhandian` VALUES ('38', '3', '新凤社区卫生服务站新和门诊部', '新和');
INSERT INTO `zhandian` VALUES ('39', '3', '马鞍岗社区卫生服务站永安门诊部', '永安');
INSERT INTO `zhandian` VALUES ('40', '5', '联星社区卫生服务站', '联星');
INSERT INTO `zhandian` VALUES ('41', '5', '联和社区卫生服务站', '联和');
INSERT INTO `zhandian` VALUES ('42', '5', '街边社区卫生服务站', '街边');
INSERT INTO `zhandian` VALUES ('43', '5', '沙坑社区卫生服务站', '沙坑');
INSERT INTO `zhandian` VALUES ('44', '5', '朗沙社区卫生服务站', '朗沙');
INSERT INTO `zhandian` VALUES ('45', '5', '务庄社区卫生服务站', '务庄');
INSERT INTO `zhandian` VALUES ('46', '5', '下柏社区卫生服务站', '下柏');
INSERT INTO `zhandian` VALUES ('47', '5', '上柏社区卫生服务站', '上柏');
INSERT INTO `zhandian` VALUES ('48', '5', '罗村社区卫生服务站', '罗村');
INSERT INTO `zhandian` VALUES ('49', '5', '乐城社区卫生服务站', '乐城');
INSERT INTO `zhandian` VALUES ('50', '5', '罗村计生', '罗村计生');
