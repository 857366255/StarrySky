/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : starrysky

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-15 22:15:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for s_field
-- ----------------------------
DROP TABLE IF EXISTS `s_field`;
CREATE TABLE `s_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识符',
  `table_name` varchar(255) DEFAULT NULL COMMENT '表名称',
  `name_ch` varchar(255) DEFAULT NULL COMMENT '名称',
  `name_en` varchar(255) DEFAULT NULL COMMENT 'id名称',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `size` double DEFAULT NULL COMMENT '大小',
  `type_size` varchar(255) DEFAULT NULL COMMENT '类型大小',
  `is_null` tinyint(1) DEFAULT NULL COMMENT '是否允许未空',
  `category` varchar(255) DEFAULT NULL COMMENT '类别(主键,外键)',
  PRIMARY KEY (`id`),
  KEY `fk_field_table_name` (`table_name`),
  CONSTRAINT `fk_field_table_name` FOREIGN KEY (`table_name`) REFERENCES `s_table` (`name_en`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='字段';

-- ----------------------------
-- Records of s_field
-- ----------------------------
INSERT INTO `s_field` VALUES ('62', 's_field', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI');
INSERT INTO `s_field` VALUES ('63', 's_field', '表名称', 'table_name', 'varchar', null, 'varchar(255)', '1', 'MUL');
INSERT INTO `s_field` VALUES ('64', 's_field', '名称', 'name_ch', 'varchar', null, 'varchar(255)', '1', '');
INSERT INTO `s_field` VALUES ('65', 's_field', 'id名称', 'name_en', 'varchar', null, 'varchar(255)', '1', '');
INSERT INTO `s_field` VALUES ('66', 's_field', '类型', 'type', 'varchar', null, 'varchar(255)', '1', '');
INSERT INTO `s_field` VALUES ('67', 's_field', '大小', 'size', 'double', null, 'double', '1', '');
INSERT INTO `s_field` VALUES ('68', 's_field', '类型大小', 'type_size', 'varchar', null, 'varchar(255)', '1', '');
INSERT INTO `s_field` VALUES ('69', 's_field', '是否允许未空', 'is_null', 'tinyint', null, 'tinyint(1)', '1', '');
INSERT INTO `s_field` VALUES ('70', 's_table', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI');
INSERT INTO `s_field` VALUES ('71', 's_table', '名称ch', 'name_ch', 'varchar', null, 'varchar(255)', '1', '');
INSERT INTO `s_field` VALUES ('72', 's_table', '名称en', 'name_en', 'varchar', null, 'varchar(255)', '0', 'PRI');
INSERT INTO `s_field` VALUES ('85', 's_field', '类别(主键,外键)', 'category', 'varchar', null, 'varchar(255)', '1', '');
INSERT INTO `s_field` VALUES ('86', 't_employees', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI');
INSERT INTO `s_field` VALUES ('87', 't_employees', '人id', 'man_id', 'int', null, 'int(11)', '1', 'MUL');
INSERT INTO `s_field` VALUES ('88', 't_employees', '角色', 'role', 'varchar', null, 'varchar(255)', '1', '');
INSERT INTO `s_field` VALUES ('89', 't_employees', '账号', 'user', 'varchar', null, 'varchar(255)', '1', '');
INSERT INTO `s_field` VALUES ('90', 't_employees', '密码', 'password', 'varchar', null, 'varchar(255)', '1', '');
INSERT INTO `s_field` VALUES ('91', 't_employees', '是否启用', 'is_enable', 'tinyint', null, 'tinyint(1)', '1', '');
INSERT INTO `s_field` VALUES ('92', 't_man', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI');
INSERT INTO `s_field` VALUES ('93', 't_man', '名称', 'name', 'varchar', null, 'varchar(10)', '1', '');
INSERT INTO `s_field` VALUES ('94', 't_man', '性别', 'sex', 'tinyint', null, 'tinyint(1)', '1', '');
INSERT INTO `s_field` VALUES ('95', 't_man', '年龄', 'age', 'int', null, 'int(3)', '1', '');
INSERT INTO `s_field` VALUES ('96', 't_man', '电话', 'phone', 'varchar', null, 'varchar(50)', '1', '');
INSERT INTO `s_field` VALUES ('97', 't_man', '地址', 'address', 'varchar', null, 'varchar(100)', '1', '');

-- ----------------------------
-- Table structure for s_table
-- ----------------------------
DROP TABLE IF EXISTS `s_table`;
CREATE TABLE `s_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识符',
  `name_ch` varchar(255) DEFAULT NULL COMMENT '名称ch',
  `name_en` varchar(255) NOT NULL COMMENT '名称en',
  PRIMARY KEY (`id`,`name_en`),
  KEY `id_name` (`name_en`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='表';

-- ----------------------------
-- Records of s_table
-- ----------------------------
INSERT INTO `s_table` VALUES ('13', '字段', 's_field');
INSERT INTO `s_table` VALUES ('14', '表', 's_table');
INSERT INTO `s_table` VALUES ('17', '员工', 't_employees');
INSERT INTO `s_table` VALUES ('18', '人', 't_man');

-- ----------------------------
-- Table structure for t_employees
-- ----------------------------
DROP TABLE IF EXISTS `t_employees`;
CREATE TABLE `t_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识符',
  `man_id` int(11) DEFAULT NULL COMMENT '人id',
  `role` varchar(255) DEFAULT NULL COMMENT '角色',
  `user` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `is_enable` tinyint(1) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`),
  KEY `employees_man_id` (`man_id`),
  CONSTRAINT `employees_man_id` FOREIGN KEY (`man_id`) REFERENCES `t_man` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='员工';

-- ----------------------------
-- Records of t_employees
-- ----------------------------
INSERT INTO `t_employees` VALUES ('1', '1', '打', 'zxc', 'asdsa', '1');
INSERT INTO `t_employees` VALUES ('2', null, '私教', 'zqq', '123456', '0');
INSERT INTO `t_employees` VALUES ('8', '2', '私教w', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('14', '2', '私教w', 'zqq', '123456', '0');
INSERT INTO `t_employees` VALUES ('18', '2', '私教123', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('19', '2', '私教123', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('20', '2', '私教123', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('21', '2', '私教123', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('22', '2', '私教123', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('23', '2', '私教123', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('24', '2', '私教123', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('25', '2', '私教123', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('26', '2', '私教123', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('27', '2', '私教123', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('28', '2', '私教123', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('29', '2', '私教123', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('30', '2', '私教123', 'zqq', '123456', '1');
INSERT INTO `t_employees` VALUES ('31', '2', '私教123', 'zqq', '123456', '1');

-- ----------------------------
-- Table structure for t_man
-- ----------------------------
DROP TABLE IF EXISTS `t_man`;
CREATE TABLE `t_man` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识符',
  `name` varchar(10) DEFAULT NULL COMMENT '名称',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='人';

-- ----------------------------
-- Records of t_man
-- ----------------------------
INSERT INTO `t_man` VALUES ('1', '自行车', '0', '10', '1256786', '阿斯顿');
INSERT INTO `t_man` VALUES ('2', 'zxc', '1', '12', '12354456', '额外全额');
INSERT INTO `t_man` VALUES ('3', 'zz2', '1', '1000', '125asdasd1', '阿adsasd1');

-- ----------------------------
-- Procedure structure for get_database_field
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_database_field`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_database_field`()
BEGIN
   DECLARE stmt VARCHAR(6553);
   #查询当前的 use-->database
   SET @dbName=(SELECT DATABASE());
     BEGIN
       SET @sqlstr=CONCAT('SELECT * FROM information_schema.columns t WHERE t.`table_schema`=','''',@dbName,'''');
      END;
   PREPARE stmt FROM @sqlstr;
   EXECUTE stmt;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for get_database_table
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_database_table`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_database_table`()
BEGIN
   DECLARE stmt VARCHAR(6553);
   #查询当前的 use-->database
   SET @dbName=(SELECT DATABASE());
     BEGIN
       SET @sqlstr=CONCAT('SELECT * FROM information_schema.tables t WHERE  t.`table_schema`=','''',@dbName,'''');
      END;
   PREPARE stmt FROM @sqlstr;
   EXECUTE stmt;
END
;;
DELIMITER ;
