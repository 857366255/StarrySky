/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : starrysky

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-12-19 17:24:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for s_configuration_page
-- ----------------------------
DROP TABLE IF EXISTS `s_configuration_page`;
CREATE TABLE `s_configuration_page` (
  `coding` varchar(255) NOT NULL COMMENT '编码',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `table_en` varchar(255) DEFAULT NULL COMMENT '表',
  `slave_height` int(11) DEFAULT NULL COMMENT '从表高度',
  `list_height` int(11) DEFAULT NULL COMMENT '列表高度',
  `slave_rows` int(11) DEFAULT NULL COMMENT '从表行数',
  `list_rows` int(11) DEFAULT NULL COMMENT '列表行数',
  `is_shown_querys` tinyint(1) DEFAULT NULL COMMENT '是否显示查询',
  `querys_style` varchar(255) DEFAULT NULL COMMENT '查询窗口样式',
  PRIMARY KEY (`coding`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置页面设置';

-- ----------------------------
-- Table structure for s_field
-- ----------------------------
DROP TABLE IF EXISTS `s_field`;
CREATE TABLE `s_field` (
  `coding` varchar(255) NOT NULL COMMENT '编码',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `configuration_page_coding` varchar(255) DEFAULT NULL COMMENT '配置页面编码',
  `table_coding` varchar(255) DEFAULT NULL COMMENT '表编码',
  `field` varchar(255) DEFAULT NULL COMMENT '字段',
  `annotation` varchar(255) DEFAULT NULL COMMENT '注释',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `size` int(11) DEFAULT NULL COMMENT '大小',
  `input_type` varchar(255) DEFAULT NULL COMMENT '输入类型',
  `is_edit` tinyint(1) DEFAULT NULL COMMENT '是否编辑',
  `is_must` tinyint(1) DEFAULT NULL COMMENT '是否必填',
  `edit_annotation` varchar(255) DEFAULT NULL COMMENT '编辑注释',
  `edit_sorting` tinyint(11) DEFAULT NULL COMMENT '编辑排序号',
  `is_show_list` tinyint(1) DEFAULT NULL COMMENT '是否显示列表',
  `list_width` int(11) DEFAULT NULL COMMENT '列表宽度',
  `list_sorting` int(11) DEFAULT NULL COMMENT '列表排序号',
  `query_sorting` int(11) DEFAULT NULL COMMENT '查询排序号',
  `is_query` tinyint(1) DEFAULT NULL COMMENT '是否查询',
  `query_occupy` int(11) DEFAULT NULL COMMENT '查询站几列',
  `is_show_slave` tinyint(1) DEFAULT NULL COMMENT '是否显示从表',
  `slave_width` int(11) DEFAULT NULL COMMENT '从表宽度',
  `slave_sorting` int(11) DEFAULT NULL COMMENT '从表排序',
  PRIMARY KEY (`coding`),
  KEY `fk_sf_cpc_scp_c` (`configuration_page_coding`),
  KEY `fk_sf_tc_st_c` (`table_coding`),
  CONSTRAINT `fk_sf_cpc_scp_c` FOREIGN KEY (`configuration_page_coding`) REFERENCES `s_configuration_page` (`coding`),
  CONSTRAINT `fk_sf_tc_st_c` FOREIGN KEY (`table_coding`) REFERENCES `s_table` (`coding`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段';

-- ----------------------------
-- Table structure for s_menu
-- ----------------------------
DROP TABLE IF EXISTS `s_menu`;
CREATE TABLE `s_menu` (
  `coding` varchar(255) NOT NULL COMMENT '编码',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `sorting` int(11) DEFAULT NULL COMMENT '排序号',
  `is_enablement` tinyint(1) DEFAULT NULL COMMENT '是否启用',
  `superior_coding` varchar(255) DEFAULT NULL COMMENT '上级编码',
  `configuration_page_coding` varchar(255) DEFAULT NULL COMMENT '配置页面编码',
  `display_style` varchar(255) DEFAULT NULL COMMENT '显示样式',
  `url` varchar(255) DEFAULT NULL COMMENT '链接',
  PRIMARY KEY (`coding`),
  KEY `fk_sm_sc_m_c` (`superior_coding`),
  KEY `fk_sm_cpc_cp_c` (`configuration_page_coding`),
  CONSTRAINT `fk_sm_cpc_cp_c` FOREIGN KEY (`configuration_page_coding`) REFERENCES `s_configuration_page` (`coding`),
  CONSTRAINT `fk_sm_sc_m_c` FOREIGN KEY (`superior_coding`) REFERENCES `s_menu` (`coding`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单栏';

-- ----------------------------
-- Table structure for s_table
-- ----------------------------
DROP TABLE IF EXISTS `s_table`;
CREATE TABLE `s_table` (
  `coding` varchar(255) NOT NULL COMMENT '编码',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `configuration_page_coding` varchar(255) DEFAULT NULL COMMENT '配置页面编码',
  `table_en` varchar(255) DEFAULT NULL COMMENT '表',
  `annotation` varchar(255) DEFAULT NULL COMMENT '注释',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `slave_sorting` int(11) DEFAULT NULL COMMENT '从表排序',
  `superior_coding` varchar(255) DEFAULT NULL COMMENT '上级编码',
  `superior_correlate_field` varchar(255) DEFAULT NULL COMMENT '上级表关联字段',
  `correlate_field` varchar(255) DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`coding`),
  KEY `fk_st_sc_st_c` (`superior_coding`),
  KEY `fk_st_cpc_scp_c` (`configuration_page_coding`),
  CONSTRAINT `fk_st_cpc_scp_c` FOREIGN KEY (`configuration_page_coding`) REFERENCES `s_configuration_page` (`coding`),
  CONSTRAINT `fk_st_sc_st_c` FOREIGN KEY (`superior_coding`) REFERENCES `s_table` (`coding`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表';

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
