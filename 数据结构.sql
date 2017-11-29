/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : starrysky

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-11-29 16:43:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for rb_coach_member
-- ----------------------------
DROP TABLE IF EXISTS `rb_coach_member`;
CREATE TABLE `rb_coach_member` (
  `id` int(11) NOT NULL,
  `coach_id` int(11) DEFAULT NULL COMMENT '教练',
  `member_id` int(11) DEFAULT NULL COMMENT '会员',
  PRIMARY KEY (`id`),
  KEY `cm_coach_id` (`coach_id`),
  KEY `cm_member_id` (`member_id`),
  CONSTRAINT `cm_coach_id` FOREIGN KEY (`coach_id`) REFERENCES `t_coach` (`id`),
  CONSTRAINT `cm_member_id` FOREIGN KEY (`member_id`) REFERENCES `t_member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教练会员关系表';

-- ----------------------------
-- Table structure for rb_man_images
-- ----------------------------
DROP TABLE IF EXISTS `rb_man_images`;
CREATE TABLE `rb_man_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `man_id` int(11) DEFAULT NULL COMMENT '人',
  `images_id` int(11) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  KEY `mi_man_id` (`man_id`),
  KEY `mi_images_id` (`images_id`),
  CONSTRAINT `mi_images_id` FOREIGN KEY (`images_id`) REFERENCES `t_images` (`id`),
  CONSTRAINT `mi_man_id` FOREIGN KEY (`man_id`) REFERENCES `t_man` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人照片关系';

-- ----------------------------
-- Table structure for rb_method_moton_details
-- ----------------------------
DROP TABLE IF EXISTS `rb_method_moton_details`;
CREATE TABLE `rb_method_moton_details` (
  `id` int(11) NOT NULL,
  `training_method_id` int(11) DEFAULT NULL COMMENT '训练方法',
  `training_moton_details_id` int(11) DEFAULT NULL COMMENT '动作细节',
  PRIMARY KEY (`id`),
  KEY `mmd_training_method_id` (`training_method_id`),
  KEY `mmd_training_moton_details_id` (`training_moton_details_id`),
  CONSTRAINT `mmd_training_method_id` FOREIGN KEY (`training_method_id`) REFERENCES `t_training_method` (`id`),
  CONSTRAINT `mmd_training_moton_details_id` FOREIGN KEY (`training_moton_details_id`) REFERENCES `t_training_motion_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='训练方法和训练动作细节关系';

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
  `is_fk_display` tinyint(1) DEFAULT NULL COMMENT '是否引用外键显示',
  PRIMARY KEY (`id`),
  KEY `fk_field_table_name` (`table_name`),
  CONSTRAINT `fk_field_table_name` FOREIGN KEY (`table_name`) REFERENCES `s_table` (`name_en`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8 COMMENT='字段';

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for s_master_field
-- ----------------------------
DROP TABLE IF EXISTS `s_master_field`;
CREATE TABLE `s_master_field` (
  `coding` varchar(255) NOT NULL COMMENT '编码',
  `menu_coding` varchar(255) DEFAULT NULL COMMENT '菜单栏编码',
  `table_name` varchar(255) DEFAULT NULL COMMENT '表名称',
  `field_name` varchar(255) DEFAULT NULL COMMENT '字段名称',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `referenced_table_name` varchar(255) DEFAULT NULL COMMENT '引用表名',
  `referenced_field_name` varchar(255) DEFAULT NULL COMMENT '引用字段名',
  `input_type` varchar(255) DEFAULT NULL COMMENT '输入框类型',
  `is_edit` tinyint(1) DEFAULT NULL COMMENT '是否编辑',
  `is_show` tinyint(1) DEFAULT NULL COMMENT '是否显示',
  PRIMARY KEY (`coding`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主表字段设置';

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
  `url_type` varchar(255) DEFAULT NULL COMMENT 'url操作类型',
  `url_table` varchar(255) DEFAULT NULL COMMENT 'utl操作表',
  PRIMARY KEY (`id`),
  KEY `fk_menu_superiors_id` (`superiors_id`),
  KEY `fk_menu_url_table` (`url_table`),
  CONSTRAINT `fk_menu_superiors_id` FOREIGN KEY (`superiors_id`) REFERENCES `s_menu` (`id`),
  CONSTRAINT `fk_menu_url_table` FOREIGN KEY (`url_table`) REFERENCES `s_table` (`name_en`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Table structure for s_page
-- ----------------------------
DROP TABLE IF EXISTS `s_page`;
CREATE TABLE `s_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `table_name_en` varchar(255) DEFAULT NULL COMMENT '主要表名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='表单';

-- ----------------------------
-- Table structure for s_page_properties
-- ----------------------------
DROP TABLE IF EXISTS `s_page_properties`;
CREATE TABLE `s_page_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) DEFAULT NULL COMMENT '表单id',
  `field_id` int(11) DEFAULT NULL COMMENT '字段id',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `is_find` tinyint(1) DEFAULT NULL COMMENT '是否查询',
  `is_list _display` tinyint(1) DEFAULT NULL COMMENT '列表是否显示',
  `is_edit _display` tinyint(1) DEFAULT NULL COMMENT '编辑列表是否显示',
  `is_edit` tinyint(1) DEFAULT NULL COMMENT '是否编辑',
  `is_master_and_slave` tinyint(1) DEFAULT NULL COMMENT '主表还是从表',
  PRIMARY KEY (`id`),
  KEY `fk_fmf_form_id` (`form_id`) USING BTREE,
  KEY `fk_fmf_form_field_id` (`field_id`) USING BTREE,
  CONSTRAINT `fk_fmf_form_field_id` FOREIGN KEY (`field_id`) REFERENCES `s_field` (`id`),
  CONSTRAINT `fk_fmf_form_id` FOREIGN KEY (`form_id`) REFERENCES `s_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表单主表字段设置';

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='表';

-- ----------------------------
-- Table structure for t_coach
-- ----------------------------
DROP TABLE IF EXISTS `t_coach`;
CREATE TABLE `t_coach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) DEFAULT NULL COMMENT '账号',
  `man_id` int(11) DEFAULT NULL COMMENT '人',
  PRIMARY KEY (`id`),
  KEY `coach_users_id` (`users_id`),
  KEY `coach_man_id` (`man_id`),
  CONSTRAINT `coach_man_id` FOREIGN KEY (`man_id`) REFERENCES `t_man` (`id`),
  CONSTRAINT `coach_users_id` FOREIGN KEY (`users_id`) REFERENCES `t_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教练';

-- ----------------------------
-- Table structure for t_images
-- ----------------------------
DROP TABLE IF EXISTS `t_images`;
CREATE TABLE `t_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL COMMENT '路径',
  `nama` varchar(255) DEFAULT NULL COMMENT '名称',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `creation_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `picture_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '图片日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片';

-- ----------------------------
-- Table structure for t_man
-- ----------------------------
DROP TABLE IF EXISTS `t_man`;
CREATE TABLE `t_man` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nanme` varchar(255) DEFAULT NULL COMMENT '名称',
  `gender` bit(1) DEFAULT NULL COMMENT '性别',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `mobile_phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `images_id` int(11) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  KEY `man_images_id` (`images_id`),
  CONSTRAINT `man_images_id` FOREIGN KEY (`images_id`) REFERENCES `t_images` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='人';

-- ----------------------------
-- Table structure for t_member
-- ----------------------------
DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `man_id` int(11) DEFAULT NULL COMMENT '人',
  PRIMARY KEY (`id`),
  KEY `member_man_id` (`man_id`),
  CONSTRAINT `member_man_id` FOREIGN KEY (`man_id`) REFERENCES `t_man` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员';

-- ----------------------------
-- Table structure for t_training_method
-- ----------------------------
DROP TABLE IF EXISTS `t_training_method`;
CREATE TABLE `t_training_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `describe` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='训练方法';

-- ----------------------------
-- Table structure for t_training_motion
-- ----------------------------
DROP TABLE IF EXISTS `t_training_motion`;
CREATE TABLE `t_training_motion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `position` int(11) DEFAULT NULL COMMENT '位置',
  `describe` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='训练动作';

-- ----------------------------
-- Table structure for t_training_motion_details
-- ----------------------------
DROP TABLE IF EXISTS `t_training_motion_details`;
CREATE TABLE `t_training_motion_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `training_motion_id` int(11) DEFAULT NULL COMMENT '动作',
  `group_number` int(2) DEFAULT NULL COMMENT '组数',
  `quantity` int(4) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`),
  KEY `tmd_training_motion_id` (`training_motion_id`),
  CONSTRAINT `tmd_training_motion_id` FOREIGN KEY (`training_motion_id`) REFERENCES `t_training_motion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='训练动作细节';

-- ----------------------------
-- Table structure for t_training_plan_
-- ----------------------------
DROP TABLE IF EXISTS `t_training_plan_`;
CREATE TABLE `t_training_plan_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `man_id` int(11) DEFAULT NULL COMMENT '人',
  `training_method_id` int(11) DEFAULT NULL COMMENT '训练方法',
  `training_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '训练时间',
  `state` varchar(255) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `rb_mtm_man_id` (`man_id`),
  KEY `rb_mtm_training_method_id` (`training_method_id`),
  CONSTRAINT `rb_mtm_man_id` FOREIGN KEY (`man_id`) REFERENCES `t_man` (`id`),
  CONSTRAINT `rb_mtm_training_method_id` FOREIGN KEY (`training_method_id`) REFERENCES `t_training_method` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='训练计划';

-- ----------------------------
-- Table structure for t_training_records
-- ----------------------------
DROP TABLE IF EXISTS `t_training_records`;
CREATE TABLE `t_training_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `training_plan_id` int(11) DEFAULT NULL COMMENT '训练计划',
  `training_moton_details_id` int(11) DEFAULT NULL,
  `which_group` int(2) DEFAULT NULL COMMENT '第几组',
  `complete_number` int(4) DEFAULT NULL COMMENT '完成数量',
  `creation_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `training_records_training_plan_id` (`training_plan_id`),
  KEY `training_records_training_moton_details_id` (`training_moton_details_id`),
  CONSTRAINT `training_records_training_moton_details_id` FOREIGN KEY (`training_moton_details_id`) REFERENCES `t_training_motion_details` (`id`),
  CONSTRAINT `training_records_training_plan_id` FOREIGN KEY (`training_plan_id`) REFERENCES `t_training_plan_` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='训练记录';

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT '用户',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

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
