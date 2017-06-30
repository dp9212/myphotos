/*
Navicat MySQL Data Transfer

Source Server         : dp9212
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : myphotos

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-06-30 18:08:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_classify`
-- ----------------------------
DROP TABLE IF EXISTS `t_classify`;
CREATE TABLE `t_classify` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `classify_name` varchar(20) NOT NULL COMMENT '相册分类名称',
  `classify_describe` varchar(50) DEFAULT NULL COMMENT '描述',
  `classify_createTime` datetime DEFAULT NULL,
  `classify_updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_classify
-- ----------------------------

-- ----------------------------
-- Table structure for `t_photo`
-- ----------------------------
DROP TABLE IF EXISTS `t_photo`;
CREATE TABLE `t_photo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `classify_id` int(10) NOT NULL COMMENT '所属分类id',
  `photo_name` varchar(20) DEFAULT NULL,
  `photo_url` varchar(50) DEFAULT NULL,
  `photo_describe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(15) NOT NULL,
  `user_password` varchar(16) NOT NULL,
  `user_tel` varchar(11) DEFAULT NULL,
  `user_address` varchar(50) DEFAULT NULL,
  `user_createTime` datetime DEFAULT NULL,
  `user_updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '123456', '13699405203', '成都', '2017-06-28 15:39:02', '2017-06-28 15:39:05');