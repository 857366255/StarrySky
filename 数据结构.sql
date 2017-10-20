/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : starrysky

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-20 14:01:49
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='字段';

-- ----------------------------
-- Table structure for s_menu
-- ----------------------------
DROP TABLE IF EXISTS `s_menu`;
CREATE TABLE `s_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称                                        ',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `superiors_id` int(11) DEFAULT NULL COMMENT '上级id',
  PRIMARY KEY (`id`),
  KEY `fk_menu_superiors_id` (`superiors_id`),
  CONSTRAINT `fk_menu_superiors_id` FOREIGN KEY (`superiors_id`) REFERENCES `s_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='菜单';

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
-- Table structure for s_table
-- ----------------------------
DROP TABLE IF EXISTS `s_table`;
CREATE TABLE `s_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识符',
  `name_ch` varchar(255) DEFAULT NULL COMMENT '名称ch',
  `name_en` varchar(255) NOT NULL COMMENT '名称en',
  PRIMARY KEY (`id`,`name_en`),
  KEY `id_name` (`name_en`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='表';

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='人';

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
-- Procedure structure for get_database_fk_field
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_database_fk_field`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_database_fk_field`()
BEGIN
   DECLARE stmt VARCHAR(6553);
   #查询当前的 use-->database
   SET @dbName=(SELECT DATABASE());
     BEGIN
       SET @sqlstr=CONCAT('SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE t WHERE t.constraint_name!="PRIMARY" and t.`table_schema`=','''',@dbName,'''');
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
