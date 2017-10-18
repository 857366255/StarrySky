/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : starrysky

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-18 22:09:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for s_field
-- ----------------------------
DROP TABLE IF EXISTS `s_field`;
CREATE TABLE `s_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识符',
  `table_name` varchar(255) DEFAULT NULL COMMENT '表名称',
  `name_ch` varchar(255) DEFAULT NULL COMMENT '数据库名称字段ch',
  `name_en` varchar(255) DEFAULT NULL COMMENT '数据库字段名称en',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `size` double DEFAULT NULL COMMENT '大小',
  `type_size` varchar(255) DEFAULT NULL COMMENT '类型大小',
  `is_null` tinyint(1) DEFAULT NULL COMMENT '是否允许未空',
  `category` varchar(255) DEFAULT NULL COMMENT '类别(主键,外键)',
  `columns` int(2) DEFAULT NULL COMMENT '站几列',
  `name` varchar(255) DEFAULT NULL COMMENT '字段名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `hint` varchar(255) DEFAULT NULL COMMENT '提醒信息',
  `is_disable` tinyint(1) DEFAULT NULL COMMENT '是否禁用',
  `is_necessary` tinyint(1) DEFAULT NULL COMMENT '是否必要',
  `input_type` varchar(255) DEFAULT NULL COMMENT '输入框类型',
  `select_group` varchar(255) DEFAULT NULL COMMENT '选择组',
  PRIMARY KEY (`id`),
  KEY `fk_field_table_name` (`table_name`),
  CONSTRAINT `fk_field_table_name` FOREIGN KEY (`table_name`) REFERENCES `s_table` (`name_en`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 COMMENT='字段';

-- ----------------------------
-- Records of s_field
-- ----------------------------
INSERT INTO `s_field` VALUES ('164', 's_field', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', '3', '唯一标识符', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('165', 's_field', '表名称', 'table_name', 'varchar', null, 'varchar(255)', '1', 'MUL', '3', '表名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('166', 's_field', '数据库名称字段ch', 'name_ch', 'varchar', null, 'varchar(255)', '1', null, '3', '数据库名称字段ch', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('167', 's_field', '数据库字段名称en', 'name_en', 'varchar', null, 'varchar(255)', '1', null, '3', '数据库字段名称en', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('168', 's_field', '类型', 'type', 'varchar', null, 'varchar(255)', '1', null, '3', '类型', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('169', 's_field', '大小', 'size', 'double', null, 'double', '1', null, '3', '大小', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('170', 's_field', '类型大小', 'type_size', 'varchar', null, 'varchar(255)', '1', null, '3', '类型大小', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('171', 's_field', '是否允许未空', 'is_null', 'tinyint', null, 'tinyint(1)', '1', null, '3', '是否允许未空', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('172', 's_field', '类别(主键,外键)', 'category', 'varchar', null, 'varchar(255)', '1', null, '3', '类别(主键,外键)', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('173', 's_field', '站几列', 'columns', 'int', null, 'int(2)', '1', null, '3', '站几列', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('174', 's_field', '字段名称', 'name', 'varchar', null, 'varchar(255)', '1', null, '3', '字段名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('175', 's_field', '备注', 'remark', 'varchar', null, 'varchar(255)', '1', null, '3', '备注', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('176', 's_field', '提醒信息', 'hint', 'varchar', null, 'varchar(255)', '1', null, '3', '提醒信息', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('177', 's_field', '是否禁用', 'is_disable', 'tinyint', null, 'tinyint(1)', '1', null, '3', '是否禁用', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('178', 's_field', '是否必要', 'is_necessary', 'tinyint', null, 'tinyint(1)', '1', null, '3', '是否必要', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('179', 's_field', '输入框类型', 'input_type', 'varchar', null, 'varchar(255)', '1', null, '3', '输入框类型', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('180', 's_field', '选择组', 'select_group', 'varchar', null, 'varchar(255)', '1', null, '3', '选择组', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('181', 's_select', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', '3', '唯一标识符', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('182', 's_select', '组', 'select_group', 'varchar', null, 'varchar(255)', '1', null, '3', '组', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('183', 's_select', '名称', 'name', 'varchar', null, 'varchar(255)', '1', null, '3', '名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('184', 's_select', '实际存值', 'value', 'varchar', null, 'varchar(255)', '1', null, '3', '实际存值', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('185', 's_table', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', '3', '唯一标识符', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('186', 's_table', '名称ch', 'name_ch', 'varchar', null, 'varchar(255)', '1', null, '3', '名称ch', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('187', 's_table', '名称en', 'name_en', 'varchar', null, 'varchar(255)', '0', 'PRI', '3', '名称en', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('188', 't_employees', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', '3', '唯一标识符', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('189', 't_employees', '人id', 'man_id', 'int', null, 'int(11)', '1', 'MUL', '3', '人id', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('190', 't_employees', '角色', 'role', 'varchar', null, 'varchar(255)', '1', null, '3', '角色', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('191', 't_employees', '账号', 'user', 'varchar', null, 'varchar(255)', '1', null, '3', '账号', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('192', 't_employees', '密码', 'password', 'varchar', null, 'varchar(255)', '1', null, '3', '密码', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('193', 't_employees', '是否启用', 'is_enable', 'tinyint', null, 'tinyint(1)', '1', null, '3', '是否启用', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('194', 't_man', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', '3', '唯一标识符', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('195', 't_man', '名称', 'name', 'varchar', null, 'varchar(10)', '1', null, '3', '名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('196', 't_man', '性别', 'sex', 'tinyint', null, 'tinyint(1)', '1', null, '3', '性别', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('197', 't_man', '年龄', 'age', 'int', null, 'int(3)', '1', null, '3', '年龄', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('198', 't_man', '电话', 'phone', 'varchar', null, 'varchar(50)', '1', null, '3', '电话', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('199', 't_man', '地址', 'address', 'varchar', null, 'varchar(100)', '1', null, '3', '地址', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('200', 's_menu', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '3', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('201', 's_menu', '名称                                        ', 'name', 'varchar', null, 'varchar(255)', '1', null, '3', '名称                                        ', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('202', 's_menu', '图标', 'icon', 'varchar', null, 'varchar(255)', '1', null, '3', '图标', null, null, null, null, 'text', null);

-- ----------------------------
-- Table structure for s_menu
-- ----------------------------
DROP TABLE IF EXISTS `s_menu`;
CREATE TABLE `s_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称                                        ',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of s_menu
-- ----------------------------
INSERT INTO `s_menu` VALUES ('1', '主页', 'fa-home');
INSERT INTO `s_menu` VALUES ('2', '自行车', null);

-- ----------------------------
-- Table structure for s_select
-- ----------------------------
DROP TABLE IF EXISTS `s_select`;
CREATE TABLE `s_select` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识符',
  `select_group` varchar(255) DEFAULT NULL COMMENT '组',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `value` varchar(255) DEFAULT NULL COMMENT '实际存值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_select
-- ----------------------------
INSERT INTO `s_select` VALUES ('1', 'true_false', '是', '1');
INSERT INTO `s_select` VALUES ('2', 'true_false', '否', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='表';

-- ----------------------------
-- Records of s_table
-- ----------------------------
INSERT INTO `s_table` VALUES ('13', '字段', 's_field');
INSERT INTO `s_table` VALUES ('14', '表', 's_table');
INSERT INTO `s_table` VALUES ('17', '员工', 't_employees');
INSERT INTO `s_table` VALUES ('18', '人', 't_man');
INSERT INTO `s_table` VALUES ('21', null, 's_select');
INSERT INTO `s_table` VALUES ('22', '菜单', 's_menu');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='人';

-- ----------------------------
-- Records of t_man
-- ----------------------------
INSERT INTO `t_man` VALUES ('1', '自行车', '0', '10', '1256786', '阿斯顿');
INSERT INTO `t_man` VALUES ('2', 'zxc', '1', '12', '12354456', '额外全额');
INSERT INTO `t_man` VALUES ('3', 'zz2', '1', '1000', '125asdasd1', '阿adsasd1');
INSERT INTO `t_man` VALUES ('4', 'qwe', '1', '12', '1321265', 'sadasda');
INSERT INTO `t_man` VALUES ('5', '阿斯顿', '1', '10', '多少', '撒旦');
INSERT INTO `t_man` VALUES ('6', '阿斯顿', '0', '1', '123', '');
INSERT INTO `t_man` VALUES ('7', '2', '1', '10', '', '12');
INSERT INTO `t_man` VALUES ('8', '12', '1', null, '13', '1');
INSERT INTO `t_man` VALUES ('9', 'a', null, null, null, null);
INSERT INTO `t_man` VALUES ('10', null, null, null, null, '2');
INSERT INTO `t_man` VALUES ('11', null, '10', null, null, null);

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
