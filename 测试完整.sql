/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : starrysky

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-26 13:01:02
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
-- Records of rb_coach_member
-- ----------------------------

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
-- Records of rb_man_images
-- ----------------------------

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
-- Records of rb_method_moton_details
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='字段';

-- ----------------------------
-- Records of s_field
-- ----------------------------
INSERT INTO `s_field` VALUES ('1', 's_field', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', '6', '唯一标识符', null, null, '0', null, 'text', null);
INSERT INTO `s_field` VALUES ('2', 's_field', '表名称', 'table_name', 'varchar', null, 'varchar(255)', '1', 'MUL', '6', '表名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('3', 's_field', '数据库名称字段ch', 'name_ch', 'varchar', null, 'varchar(255)', '1', null, '6', '数据库名称字段ch', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('4', 's_field', '数据库字段名称en', 'name_en', 'varchar', null, 'varchar(255)', '1', null, '6', '数据库字段名称en', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('5', 's_field', '类型', 'type', 'varchar', null, 'varchar(255)', '1', null, '6', '类型', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('6', 's_field', '大小', 'size', 'double', null, 'double', '1', null, '6', '大小', null, null, '0', null, 'text', null);
INSERT INTO `s_field` VALUES ('7', 's_field', '类型大小', 'type_size', 'varchar', null, 'varchar(255)', '1', null, '6', '类型大小', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('8', 's_field', '是否允许未空', 'is_null', 'tinyint', null, 'tinyint(1)', '1', null, '6', '是否允许未空', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('9', 's_field', '类别(主键,外键)', 'category', 'varchar', null, 'varchar(255)', '1', null, '6', '类别(主键,外键)', null, null, '0', null, 'text', null);
INSERT INTO `s_field` VALUES ('10', 's_field', '站几列', 'columns', 'int', null, 'int(2)', '1', null, '6', '站几列', null, null, '0', null, 'text', null);
INSERT INTO `s_field` VALUES ('11', 's_field', '字段名称', 'name', 'varchar', null, 'varchar(255)', '1', null, '6', '字段名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('12', 's_field', '备注', 'remark', 'varchar', null, 'varchar(255)', '1', null, '6', '备注', null, null, '0', null, 'text', null);
INSERT INTO `s_field` VALUES ('13', 's_field', '提醒信息', 'hint', 'varchar', null, 'varchar(255)', '1', null, '6', '提醒信息', null, null, '0', null, 'text', null);
INSERT INTO `s_field` VALUES ('14', 's_field', '是否禁用', 'is_disable', 'tinyint', null, 'tinyint(1)', '1', null, '6', '是否禁用', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('15', 's_field', '是否必要', 'is_necessary', 'tinyint', null, 'tinyint(1)', '1', null, '6', '是否必要', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('16', 's_field', '输入框类型', 'input_type', 'varchar', null, 'varchar(255)', '1', null, '6', '输入框类型', null, null, '0', null, 'text', null);
INSERT INTO `s_field` VALUES ('17', 's_field', '选择组', 'select_group', 'varchar', null, 'varchar(255)', '1', null, '6', '选择组', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('18', 's_fk_field', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('19', 's_fk_field', '外键名称', 'fk_name_en', 'varchar', null, 'varchar(255)', '1', null, '6', '外键名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('20', 's_fk_field', '表名称', 'table_name_en', 'varchar', null, 'varchar(255)', '1', null, '6', '表名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('21', 's_fk_field', '字段名称', 'field_name_en', 'varchar', null, 'varchar(255)', '1', null, '6', '字段名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('22', 's_fk_field', '引用表名称', 'referenced_table_name_en', 'varchar', null, 'varchar(255)', '1', null, '6', '引用表名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('23', 's_fk_field', '引用字段名称', 'referenced_field_name_en', 'varchar', null, 'varchar(255)', '1', null, '6', '引用字段名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('24', 's_menu', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('25', 's_menu', '名称                                        ', 'name', 'varchar', null, 'varchar(255)', '1', null, '6', '名称                                        ', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('26', 's_menu', '图标', 'icon', 'varchar', null, 'varchar(255)', '1', null, '6', '图标', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('27', 's_menu', '上级id', 'superiors_id', 'int', null, 'int(11)', '1', 'MUL', '6', '上级id', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('28', 's_menu', 'URL', 'url', 'varchar', null, 'varchar(255)', '1', null, '6', 'URL', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('29', 's_select', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', '6', '唯一标识符', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('30', 's_select', '组', 'select_group', 'varchar', null, 'varchar(255)', '1', null, '6', '组', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('31', 's_select', '名称', 'name', 'varchar', null, 'varchar(255)', '1', null, '6', '名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('32', 's_select', '实际存值', 'value', 'varchar', null, 'varchar(255)', '1', null, '6', '实际存值', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('33', 's_table', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', '6', '唯一标识符', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('34', 's_table', '名称ch', 'name_ch', 'varchar', null, 'varchar(255)', '1', null, '6', '名称ch', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('35', 's_table', '名称en', 'name_en', 'varchar', null, 'varchar(255)', '0', 'PRI', '6', '名称en', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('36', 'rb_coach_member', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('37', 'rb_coach_member', '教练', 'coach_id', 'int', null, 'int(11)', '1', 'MUL', '6', '教练', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('38', 'rb_coach_member', '会员', 'member_id', 'int', null, 'int(11)', '1', 'MUL', '6', '会员', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('39', 'rb_man_images', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('40', 'rb_man_images', '人', 'man_id', 'int', null, 'int(11)', '1', 'MUL', '6', '人', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('41', 'rb_man_images', '照片', 'images_id', 'int', null, 'int(11)', '1', 'MUL', '6', '照片', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('42', 'rb_method_moton_details', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('43', 'rb_method_moton_details', '训练方法', 'training_method_id', 'int', null, 'int(11)', '1', 'MUL', '6', '训练方法', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('44', 'rb_method_moton_details', '动作细节', 'training_moton_details_id', 'int', null, 'int(11)', '1', 'MUL', '6', '动作细节', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('45', 't_coach', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('46', 't_coach', '账号', 'users_id', 'int', null, 'int(11)', '1', 'MUL', '6', '账号', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('47', 't_coach', '人', 'man_id', 'int', null, 'int(11)', '1', 'MUL', '6', '人', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('48', 't_images', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('49', 't_images', '路径', 'url', 'varchar', null, 'varchar(255)', '1', null, '6', '路径', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('50', 't_images', '名称', 'nama', 'varchar', null, 'varchar(255)', '1', null, '6', '名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('51', 't_images', '类型', 'type', 'varchar', null, 'varchar(255)', '1', null, '6', '类型', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('52', 't_images', '创建时间', 'creation_time', 'datetime', null, 'datetime', '1', null, '6', '创建时间', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('53', 't_images', '图片日期', 'picture_date', 'datetime', null, 'datetime', '1', null, '6', '图片日期', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('54', 't_man', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('55', 't_man', '名称', 'nanme', 'varchar', null, 'varchar(255)', '1', null, '6', '名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('56', 't_man', '性别', 'gender', 'bit', null, 'bit(1)', '1', null, '6', '性别', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('57', 't_man', '年龄', 'age', 'int', null, 'int(3)', '1', null, '6', '年龄', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('58', 't_man', '手机号码', 'mobile_phone', 'varchar', null, 'varchar(255)', '1', null, '6', '手机号码', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('59', 't_man', '地址', 'address', 'varchar', null, 'varchar(255)', '1', null, '6', '地址', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('60', 't_man', '头像', 'images_id', 'int', null, 'int(11)', '1', 'MUL', '6', '头像', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('61', 't_member', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('62', 't_member', '人', 'man_id', 'int', null, 'int(11)', '1', 'MUL', '6', '人', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('63', 't_training_method', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('64', 't_training_method', '名称', 'name', 'varchar', null, 'varchar(255)', '1', null, '6', '名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('65', 't_training_method', '描述', 'describe', 'varchar', null, 'varchar(255)', '1', null, '6', '描述', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('66', 't_training_motion', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('67', 't_training_motion', '名称', 'name', 'varchar', null, 'varchar(255)', '1', null, '6', '名称', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('68', 't_training_motion', '位置', 'position', 'int', null, 'int(11)', '1', null, '6', '位置', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('69', 't_training_motion', '描述', 'describe', 'varchar', null, 'varchar(255)', '1', null, '6', '描述', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('70', 't_training_motion_details', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('71', 't_training_motion_details', '动作', 'training_motion_id', 'int', null, 'int(11)', '1', 'MUL', '6', '动作', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('72', 't_training_motion_details', '组数', 'group_number', 'int', null, 'int(2)', '1', null, '6', '组数', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('73', 't_training_motion_details', '数量', 'quantity', 'int', null, 'int(4)', '1', null, '6', '数量', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('74', 't_training_plan_', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('75', 't_training_plan_', '人', 'man_id', 'int', null, 'int(11)', '1', 'MUL', '6', '人', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('76', 't_training_plan_', '训练方法', 'training_method_id', 'int', null, 'int(11)', '1', 'MUL', '6', '训练方法', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('77', 't_training_plan_', '训练时间', 'training_time', 'datetime', null, 'datetime', '1', null, '6', '训练时间', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('78', 't_training_plan_', '状态', 'state', 'varchar', null, 'varchar(255)', '1', null, '6', '状态', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('79', 't_training_records', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('80', 't_training_records', '训练计划', 'training_plan_id', 'int', null, 'int(11)', '1', 'MUL', '6', '训练计划', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('81', 't_training_records', null, 'training_moton_details_id', 'int', null, 'int(11)', '1', 'MUL', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('82', 't_training_records', '第几组', 'which_group', 'int', null, 'int(2)', '1', null, '6', '第几组', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('83', 't_training_records', '完成数量', 'complete_number', 'int', null, 'int(4)', '1', null, '6', '完成数量', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('84', 't_training_records', '创建时间', 'creation_time', 'datetime', null, 'datetime', '1', null, '6', '创建时间', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('85', 't_users', null, 'id', 'int', null, 'int(11)', '0', 'PRI', '6', null, null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('86', 't_users', '用户', 'user', 'varchar', null, 'varchar(255)', '1', null, '6', '用户', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('87', 't_users', '密码', 'password', 'varchar', null, 'varchar(255)', '1', null, '6', '密码', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('88', 's_menu', 'url操作类型', 'url_type', 'varchar', null, 'varchar(255)', '1', null, '6', 'url操作类型', null, null, null, null, 'text', null);
INSERT INTO `s_field` VALUES ('89', 's_menu', 'utl操作表', 'url_table', 'varchar', null, 'varchar(255)', '1', 'MUL', '6', 'utl操作表', null, null, null, null, 'text', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_fk_field
-- ----------------------------
INSERT INTO `s_fk_field` VALUES ('1', 'fk_field_table_name', 's_field', 'table_name', 's_table', 'name_en');
INSERT INTO `s_fk_field` VALUES ('2', 'fk_menu_superiors_id', 's_menu', 'superiors_id', 's_menu', 'id');
INSERT INTO `s_fk_field` VALUES ('3', 'cm_coach_id', 'rb_coach_member', 'coach_id', 't_coach', 'id');
INSERT INTO `s_fk_field` VALUES ('4', 'cm_member_id', 'rb_coach_member', 'member_id', 't_member', 'id');
INSERT INTO `s_fk_field` VALUES ('5', 'mi_images_id', 'rb_man_images', 'images_id', 't_images', 'id');
INSERT INTO `s_fk_field` VALUES ('6', 'mi_man_id', 'rb_man_images', 'man_id', 't_man', 'id');
INSERT INTO `s_fk_field` VALUES ('7', 'mmd_training_method_id', 'rb_method_moton_details', 'training_method_id', 't_training_method', 'id');
INSERT INTO `s_fk_field` VALUES ('8', 'mmd_training_moton_details_id', 'rb_method_moton_details', 'training_moton_details_id', 't_training_motion_details', 'id');
INSERT INTO `s_fk_field` VALUES ('9', 'coach_man_id', 't_coach', 'man_id', 't_man', 'id');
INSERT INTO `s_fk_field` VALUES ('10', 'coach_users_id', 't_coach', 'users_id', 't_users', 'id');
INSERT INTO `s_fk_field` VALUES ('11', 'man_images_id', 't_man', 'images_id', 't_images', 'id');
INSERT INTO `s_fk_field` VALUES ('12', 'member_man_id', 't_member', 'man_id', 't_man', 'id');
INSERT INTO `s_fk_field` VALUES ('13', 'tmd_training_motion_id', 't_training_motion_details', 'training_motion_id', 't_training_motion', 'id');
INSERT INTO `s_fk_field` VALUES ('14', 'rb_mtm_man_id', 't_training_plan_', 'man_id', 't_man', 'id');
INSERT INTO `s_fk_field` VALUES ('15', 'rb_mtm_training_method_id', 't_training_plan_', 'training_method_id', 't_training_method', 'id');
INSERT INTO `s_fk_field` VALUES ('16', 'training_records_training_moton_details_id', 't_training_records', 'training_moton_details_id', 't_training_motion_details', 'id');
INSERT INTO `s_fk_field` VALUES ('17', 'training_records_training_plan_id', 't_training_records', 'training_plan_id', 't_training_plan_', 'id');
INSERT INTO `s_fk_field` VALUES ('18', 'fk_menu_url_table', 's_menu', 'url_table', 's_table', 'name_en');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of s_menu
-- ----------------------------
INSERT INTO `s_menu` VALUES ('0', '系统管理', 'fa-desktop', null, null, null, null);
INSERT INTO `s_menu` VALUES ('1', '新增菜单', 'fa-home', '0', 'create/s_menu', 'create', 's_menu');
INSERT INTO `s_menu` VALUES ('2', '新增选择框', null, '0', 'create/s_select', 'create', 's_select');
INSERT INTO `s_menu` VALUES ('4', '新增人', null, '0', 'create/t_man', 'create', 't_man');
INSERT INTO `s_menu` VALUES ('8', '查看菜单', null, '0', 'find/s_menu', 'find', 's_menu');
INSERT INTO `s_menu` VALUES ('9', '查看选择框', null, '0', 'find/s_select', 'find', 's_select');
INSERT INTO `s_menu` VALUES ('10', '查看人', null, '0', 'find/t_man', 'find', 't_man');
INSERT INTO `s_menu` VALUES ('11', '组合窗口', null, null, 'combination/s_table', 'combination', 's_table');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='表';

-- ----------------------------
-- Records of s_table
-- ----------------------------
INSERT INTO `s_table` VALUES ('1', '字段', 's_field');
INSERT INTO `s_table` VALUES ('2', null, 's_fk_field');
INSERT INTO `s_table` VALUES ('3', '菜单', 's_menu');
INSERT INTO `s_table` VALUES ('4', null, 's_select');
INSERT INTO `s_table` VALUES ('5', '表', 's_table');
INSERT INTO `s_table` VALUES ('6', '教练会员关系表', 'rb_coach_member');
INSERT INTO `s_table` VALUES ('7', '人照片关系', 'rb_man_images');
INSERT INTO `s_table` VALUES ('8', '训练方法和训练动作细节关系', 'rb_method_moton_details');
INSERT INTO `s_table` VALUES ('9', '教练', 't_coach');
INSERT INTO `s_table` VALUES ('10', '图片', 't_images');
INSERT INTO `s_table` VALUES ('11', '人', 't_man');
INSERT INTO `s_table` VALUES ('12', '会员', 't_member');
INSERT INTO `s_table` VALUES ('13', '训练方法', 't_training_method');
INSERT INTO `s_table` VALUES ('14', '训练动作', 't_training_motion');
INSERT INTO `s_table` VALUES ('15', '训练动作细节', 't_training_motion_details');
INSERT INTO `s_table` VALUES ('16', '训练计划', 't_training_plan_');
INSERT INTO `s_table` VALUES ('17', '训练记录', 't_training_records');
INSERT INTO `s_table` VALUES ('18', '用户', 't_users');

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
-- Records of t_coach
-- ----------------------------

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
-- Records of t_images
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='人';

-- ----------------------------
-- Records of t_man
-- ----------------------------
INSERT INTO `t_man` VALUES ('1', '黄', '', '12', '2', '3', null);

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
-- Records of t_member
-- ----------------------------

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
-- Records of t_training_method
-- ----------------------------

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
-- Records of t_training_motion
-- ----------------------------

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
-- Records of t_training_motion_details
-- ----------------------------

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
-- Records of t_training_plan_
-- ----------------------------

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
-- Records of t_training_records
-- ----------------------------

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
-- Records of t_users
-- ----------------------------

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
