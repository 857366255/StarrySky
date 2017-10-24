/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : starrysky

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-24 16:23:41
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='字段';

-- ----------------------------
-- Records of s_field
-- ----------------------------
INSERT INTO `s_field` VALUES ('1', 's_field', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', '3', '唯一标识符', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('2', 's_field', '表名称', 'table_name', 'varchar', null, 'varchar(255)', '1', 'MUL', '3', '表名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('3', 's_field', '数据库名称字段ch', 'name_ch', 'varchar', null, 'varchar(255)', '1', null, '3', '数据库名称字段ch', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('4', 's_field', '数据库字段名称en', 'name_en', 'varchar', null, 'varchar(255)', '1', null, '3', '数据库字段名称en', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('5', 's_field', '类型', 'type', 'varchar', null, 'varchar(255)', '1', null, '3', '类型', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('6', 's_field', '大小', 'size', 'double', null, 'double', '1', null, '3', '大小', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('7', 's_field', '类型大小', 'type_size', 'varchar', null, 'varchar(255)', '1', null, '3', '类型大小', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('8', 's_field', '是否允许未空', 'is_null', 'tinyint', null, 'tinyint(1)', '1', null, '3', '是否允许未空', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('9', 's_field', '类别(主键,外键)', 'category', 'varchar', null, 'varchar(255)', '1', null, '3', '类别(主键,外键)', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('10', 's_field', '站几列', 'columns', 'int', null, 'int(2)', '1', null, '3', '站几列', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('11', 's_field', '字段名称', 'name', 'varchar', null, 'varchar(255)', '1', null, '3', '字段名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('12', 's_field', '备注', 'remark', 'varchar', null, 'varchar(255)', '1', null, '3', '备注', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('13', 's_field', '提醒信息', 'hint', 'varchar', null, 'varchar(255)', '1', null, '3', '提醒信息', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('14', 's_field', '是否禁用', 'is_disable', 'tinyint', null, 'tinyint(1)', '1', null, '3', '是否禁用', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('15', 's_field', '是否必要', 'is_necessary', 'tinyint', null, 'tinyint(1)', '1', null, '3', '是否必要', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('16', 's_field', '输入框类型', 'input_type', 'varchar', null, 'varchar(255)', '1', null, '3', '输入框类型', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('17', 's_field', '选择组', 'select_group', 'varchar', null, 'varchar(255)', '1', null, '3', '选择组', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('18', 's_fk_field', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '3', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('19', 's_fk_field', '外键名称', 'fk_name_en', 'varchar', null, 'varchar(255)', '1', null, '3', '外键名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('20', 's_fk_field', '表名称', 'table_name_en', 'varchar', null, 'varchar(255)', '1', null, '3', '表名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('21', 's_fk_field', '字段名称', 'field_name_en', 'varchar', null, 'varchar(255)', '1', null, '3', '字段名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('22', 's_fk_field', '引用表名称', 'referenced_table_name_en', 'varchar', null, 'varchar(255)', '1', null, '3', '引用表名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('23', 's_fk_field', '引用字段名称', 'referenced_field_name_en', 'varchar', null, 'varchar(255)', '1', null, '3', '引用字段名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('24', 's_menu', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '3', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('25', 's_menu', '名称                                        ', 'name', 'varchar', null, 'varchar(255)', '1', null, '3', '名称                                        ', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('26', 's_menu', '图标', 'icon', 'varchar', null, 'varchar(255)', '1', null, '3', '图标', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('27', 's_menu', '上级id', 'superiors_id', 'int', null, 'int(11)', '1', 'MUL', '3', '上级id', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('28', 's_menu', 'URL', 'url', 'varchar', null, 'varchar(255)', '1', null, '3', 'URL', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('29', 's_select', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', '3', '唯一标识符', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('30', 's_select', '组', 'select_group', 'varchar', null, 'varchar(255)', '1', null, '3', '组', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('31', 's_select', '名称', 'name', 'varchar', null, 'varchar(255)', '1', null, '3', '名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('32', 's_select', '实际存值', 'value', 'varchar', null, 'varchar(255)', '1', null, '3', '实际存值', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('33', 's_table', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', '3', '唯一标识符', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('34', 's_table', '名称ch', 'name_ch', 'varchar', null, 'varchar(255)', '1', null, '3', '名称ch', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('35', 's_table', '名称en', 'name_en', 'varchar', null, 'varchar(255)', '0', 'PRI', '3', '名称en', null, null, null, null, 'text', null);

-- ----------------------------
-- Table structure for s_fk_field
-- ----------------------------
DROP TABLE IF EXISTS `s_fk_field`;
CREATE TABLE `s_fk_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_name_en` varchar(255) DEFAULT NULL COMMENT '外键名称',
  `table_name_en` varchar(255) DEFAULT NULL COMMENT '表名称',
  `field_name_en` varchar(255) DEFAULT NULL COMMENT '字段名称',
  `referenced_table_name_en` varchar(255) DEFAULT NULL COMMENT '引用表名称',
  `referenced_field_name_en` varchar(255) DEFAULT NULL COMMENT '引用字段名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_fk_field
-- ----------------------------
INSERT INTO `s_fk_field` VALUES ('1', 'fk_field_table_name', 's_field', 'table_name', 's_table', 'name_en');
INSERT INTO `s_fk_field` VALUES ('2', 'fk_menu_superiors_id', 's_menu', 'superiors_id', 's_menu', 'id');

-- ----------------------------
-- Table structure for s_menu
-- ----------------------------
DROP TABLE IF EXISTS `s_menu`;
CREATE TABLE `s_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称                                        ',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `superiors_id` int(11) DEFAULT NULL COMMENT '上级id',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  PRIMARY KEY (`id`),
  KEY `fk_menu_superiors_id` (`superiors_id`),
  CONSTRAINT `fk_menu_superiors_id` FOREIGN KEY (`superiors_id`) REFERENCES `s_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of s_menu
-- ----------------------------
INSERT INTO `s_menu` VALUES ('0', '系统管理', 'fa-desktop', null, null);
INSERT INTO `s_menu` VALUES ('1', '新增菜单', 'fa-home', '0', 'create/s_menu');
INSERT INTO `s_menu` VALUES ('2', '新增选择框', null, '0', 'create/s_select');
INSERT INTO `s_menu` VALUES ('4', '新增人', null, '0', 'create/t_man');
INSERT INTO `s_menu` VALUES ('8', '查看菜单', null, '0', 'find/s_menu');
INSERT INTO `s_menu` VALUES ('9', '查看选择框', null, '0', 'find/s_select');
INSERT INTO `s_menu` VALUES ('10', '查看人', null, '0', 'find/t_man');
INSERT INTO `s_menu` VALUES ('11', '组合窗口', null, null, 'combination/s_table');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='表';

-- ----------------------------
-- Records of s_table
-- ----------------------------
INSERT INTO `s_table` VALUES ('1', '字段', 's_field');
INSERT INTO `s_table` VALUES ('2', null, 's_fk_field');
INSERT INTO `s_table` VALUES ('3', '菜单', 's_menu');
INSERT INTO `s_table` VALUES ('4', null, 's_select');
INSERT INTO `s_table` VALUES ('5', '表', 's_table');

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
