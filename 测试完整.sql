/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : starrysky

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-11-29 16:42:50
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
  `is_fk_display` tinyint(1) DEFAULT NULL COMMENT '是否引用外键显示',
  PRIMARY KEY (`id`),
  KEY `fk_field_table_name` (`table_name`),
  CONSTRAINT `fk_field_table_name` FOREIGN KEY (`table_name`) REFERENCES `s_table` (`name_en`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8 COMMENT='字段';

-- ----------------------------
-- Records of s_field
-- ----------------------------
INSERT INTO `s_field` VALUES ('185', 'rb_coach_member', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('186', 'rb_coach_member', '教练', 'coach_id', 'int', null, 'int(11)', '1', 'MUL', null, '教练', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('187', 'rb_coach_member', '会员', 'member_id', 'int', null, 'int(11)', '1', 'MUL', null, '会员', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('188', 'rb_man_images', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('189', 'rb_man_images', '人', 'man_id', 'int', null, 'int(11)', '1', 'MUL', null, '人', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('190', 'rb_man_images', '照片', 'images_id', 'int', null, 'int(11)', '1', 'MUL', null, '照片', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('191', 'rb_method_moton_details', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('192', 'rb_method_moton_details', '训练方法', 'training_method_id', 'int', null, 'int(11)', '1', 'MUL', null, '训练方法', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('193', 'rb_method_moton_details', '动作细节', 'training_moton_details_id', 'int', null, 'int(11)', '1', 'MUL', null, '动作细节', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('194', 's_field', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '唯一标识符', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('195', 's_field', '表名称', 'table_name', 'varchar', null, 'varchar(255)', '1', 'MUL', null, '表名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('196', 's_field', '数据库名称字段ch', 'name_ch', 'varchar', null, 'varchar(255)', '1', '', null, '数据库名称字段ch', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('197', 's_field', '数据库字段名称en', 'name_en', 'varchar', null, 'varchar(255)', '1', '', null, '数据库字段名称en', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('198', 's_field', '类型', 'type', 'varchar', null, 'varchar(255)', '1', '', null, '类型', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('199', 's_field', '大小', 'size', 'double', null, 'double', '1', '', null, '大小', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('200', 's_field', '类型大小', 'type_size', 'varchar', null, 'varchar(255)', '1', '', null, '类型大小', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('201', 's_field', '是否允许未空', 'is_null', 'tinyint', null, 'tinyint(1)', '1', '', null, '是否允许未空', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('202', 's_field', '类别(主键,外键)', 'category', 'varchar', null, 'varchar(255)', '1', '', null, '类别(主键,外键)', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('203', 's_field', '站几列', 'columns', 'int', null, 'int(2)', '1', '', null, '站几列', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('204', 's_field', '字段名称', 'name', 'varchar', null, 'varchar(255)', '1', '', null, '字段名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('205', 's_field', '备注', 'remark', 'varchar', null, 'varchar(255)', '1', '', null, '备注', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('206', 's_field', '提醒信息', 'hint', 'varchar', null, 'varchar(255)', '1', '', null, '提醒信息', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('207', 's_field', '是否禁用', 'is_disable', 'tinyint', null, 'tinyint(1)', '1', '', null, '是否禁用', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('208', 's_field', '是否必要', 'is_necessary', 'tinyint', null, 'tinyint(1)', '1', '', null, '是否必要', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('209', 's_field', '输入框类型', 'input_type', 'varchar', null, 'varchar(255)', '1', '', null, '输入框类型', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('210', 's_field', '选择组', 'select_group', 'varchar', null, 'varchar(255)', '1', '', null, '选择组', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('211', 's_field', '是否引用外键显示', 'is_fk_display', 'tinyint', null, 'tinyint(1)', '1', '', null, '是否引用外键显示', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('212', 's_fk_field', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('213', 's_fk_field', '外键名称', 'fk_name_en', 'varchar', null, 'varchar(255)', '1', '', null, '外键名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('214', 's_fk_field', '表名称', 'table_name_en', 'varchar', null, 'varchar(255)', '1', '', null, '表名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('215', 's_fk_field', '字段名称', 'field_name_en', 'varchar', null, 'varchar(255)', '1', '', null, '字段名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('216', 's_fk_field', '引用表名称', 'referenced_table_name_en', 'varchar', null, 'varchar(255)', '1', '', null, '引用表名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('217', 's_fk_field', '引用字段名称', 'referenced_field_name_en', 'varchar', null, 'varchar(255)', '1', '', null, '引用字段名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('218', 's_menu', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('219', 's_menu', '名称                                        ', 'name', 'varchar', null, 'varchar(255)', '1', '', null, '名称                                        ', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('220', 's_menu', '图标', 'icon', 'varchar', null, 'varchar(255)', '1', '', null, '图标', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('221', 's_menu', '上级id', 'superiors_id', 'int', null, 'int(11)', '1', 'MUL', null, '上级id', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('222', 's_menu', 'URL', 'url', 'varchar', null, 'varchar(255)', '1', '', null, 'URL', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('223', 's_menu', 'url操作类型', 'url_type', 'varchar', null, 'varchar(255)', '1', '', null, 'url操作类型', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('224', 's_menu', 'utl操作表', 'url_table', 'varchar', null, 'varchar(255)', '1', 'MUL', null, 'utl操作表', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('225', 's_page', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('226', 's_page', '名称', 'name', 'varchar', null, 'varchar(255)', '1', '', null, '名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('227', 's_page', '图标', 'icon', 'varchar', null, 'varchar(255)', '1', '', null, '图标', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('228', 's_page_properties', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('229', 's_page_properties', '表单id', 'form_id', 'int', null, 'int(11)', '1', 'MUL', null, '表单id', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('230', 's_page_properties', '字段id', 'field_id', 'int', null, 'int(11)', '1', 'MUL', null, '字段id', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('231', 's_page_properties', '名称', 'name', 'varchar', null, 'varchar(255)', '1', '', null, '名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('232', 's_page_properties', '是否查询', 'is_find', 'tinyint', null, 'tinyint(1)', '1', '', null, '是否查询', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('233', 's_page_properties', '列表是否显示', 'is_list _display', 'tinyint', null, 'tinyint(1)', '1', '', null, '列表是否显示', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('234', 's_page_properties', '编辑列表是否显示', 'is_edit _display', 'tinyint', null, 'tinyint(1)', '1', '', null, '编辑列表是否显示', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('235', 's_page_properties', '是否编辑', 'is_edit', 'tinyint', null, 'tinyint(1)', '1', '', null, '是否编辑', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('236', 's_page_properties', '主表还是从表', 'is_master_and_slave', 'tinyint', null, 'tinyint(1)', '1', '', null, '主表还是从表', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('237', 's_select', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '唯一标识符', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('238', 's_select', '组', 'select_group', 'varchar', null, 'varchar(255)', '1', '', null, '组', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('239', 's_select', '名称', 'name', 'varchar', null, 'varchar(255)', '1', '', null, '名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('240', 's_select', '实际存值', 'value', 'varchar', null, 'varchar(255)', '1', '', null, '实际存值', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('241', 's_table', '唯一标识符', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '唯一标识符', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('242', 's_table', '名称ch', 'name_ch', 'varchar', null, 'varchar(255)', '1', '', null, '名称ch', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('243', 's_table', '名称en', 'name_en', 'varchar', null, 'varchar(255)', '0', 'PRI', null, '名称en', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('244', 't_coach', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('245', 't_coach', '账号', 'users_id', 'int', null, 'int(11)', '1', 'MUL', null, '账号', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('246', 't_coach', '人', 'man_id', 'int', null, 'int(11)', '1', 'MUL', null, '人', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('247', 't_images', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('248', 't_images', '路径', 'url', 'varchar', null, 'varchar(255)', '1', '', null, '路径', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('249', 't_images', '名称', 'nama', 'varchar', null, 'varchar(255)', '1', '', null, '名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('250', 't_images', '类型', 'type', 'varchar', null, 'varchar(255)', '1', '', null, '类型', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('251', 't_images', '创建时间', 'creation_time', 'datetime', null, 'datetime', '1', '', null, '创建时间', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('252', 't_images', '图片日期', 'picture_date', 'datetime', null, 'datetime', '1', '', null, '图片日期', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('253', 't_man', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('254', 't_man', '名称', 'nanme', 'varchar', null, 'varchar(255)', '1', '', null, '名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('255', 't_man', '性别', 'gender', 'bit', null, 'bit(1)', '1', '', null, '性别', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('256', 't_man', '年龄', 'age', 'int', null, 'int(3)', '1', '', null, '年龄', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('257', 't_man', '手机号码', 'mobile_phone', 'varchar', null, 'varchar(255)', '1', '', null, '手机号码', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('258', 't_man', '地址', 'address', 'varchar', null, 'varchar(255)', '1', '', null, '地址', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('259', 't_man', '头像', 'images_id', 'int', null, 'int(11)', '1', 'MUL', null, '头像', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('260', 't_member', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('261', 't_member', '人', 'man_id', 'int', null, 'int(11)', '1', 'MUL', null, '人', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('262', 't_training_method', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('263', 't_training_method', '名称', 'name', 'varchar', null, 'varchar(255)', '1', '', null, '名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('264', 't_training_method', '描述', 'describe', 'varchar', null, 'varchar(255)', '1', '', null, '描述', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('265', 't_training_motion', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('266', 't_training_motion', '名称', 'name', 'varchar', null, 'varchar(255)', '1', '', null, '名称', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('267', 't_training_motion', '位置', 'position', 'int', null, 'int(11)', '1', '', null, '位置', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('268', 't_training_motion', '描述', 'describe', 'varchar', null, 'varchar(255)', '1', '', null, '描述', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('269', 't_training_motion_details', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('270', 't_training_motion_details', '动作', 'training_motion_id', 'int', null, 'int(11)', '1', 'MUL', null, '动作', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('271', 't_training_motion_details', '组数', 'group_number', 'int', null, 'int(2)', '1', '', null, '组数', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('272', 't_training_motion_details', '数量', 'quantity', 'int', null, 'int(4)', '1', '', null, '数量', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('273', 't_training_plan_', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('274', 't_training_plan_', '人', 'man_id', 'int', null, 'int(11)', '1', 'MUL', null, '人', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('275', 't_training_plan_', '训练方法', 'training_method_id', 'int', null, 'int(11)', '1', 'MUL', null, '训练方法', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('276', 't_training_plan_', '训练时间', 'training_time', 'datetime', null, 'datetime', '1', '', null, '训练时间', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('277', 't_training_plan_', '状态', 'state', 'varchar', null, 'varchar(255)', '1', '', null, '状态', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('278', 't_training_records', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('279', 't_training_records', '训练计划', 'training_plan_id', 'int', null, 'int(11)', '1', 'MUL', null, '训练计划', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('280', 't_training_records', '', 'training_moton_details_id', 'int', null, 'int(11)', '1', 'MUL', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('281', 't_training_records', '第几组', 'which_group', 'int', null, 'int(2)', '1', '', null, '第几组', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('282', 't_training_records', '完成数量', 'complete_number', 'int', null, 'int(4)', '1', '', null, '完成数量', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('283', 't_training_records', '创建时间', 'creation_time', 'datetime', null, 'datetime', '1', '', null, '创建时间', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('284', 't_users', '', 'id', 'int', null, 'int(11)', '0', 'PRI', null, '', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('285', 't_users', '用户', 'user', 'varchar', null, 'varchar(255)', '1', '', null, '用户', null, null, null, null, null, null, null);
INSERT INTO `s_field` VALUES ('286', 't_users', '密码', 'password', 'varchar', null, 'varchar(255)', '1', '', null, '密码', null, null, null, null, null, null, null);

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
-- Records of s_fk_field
-- ----------------------------
INSERT INTO `s_fk_field` VALUES ('19', 'cm_coach_id', 'rb_coach_member', 'coach_id', 't_coach', 'id');
INSERT INTO `s_fk_field` VALUES ('20', 'cm_member_id', 'rb_coach_member', 'member_id', 't_member', 'id');
INSERT INTO `s_fk_field` VALUES ('21', 'mi_images_id', 'rb_man_images', 'images_id', 't_images', 'id');
INSERT INTO `s_fk_field` VALUES ('22', 'mi_man_id', 'rb_man_images', 'man_id', 't_man', 'id');
INSERT INTO `s_fk_field` VALUES ('23', 'mmd_training_method_id', 'rb_method_moton_details', 'training_method_id', 't_training_method', 'id');
INSERT INTO `s_fk_field` VALUES ('24', 'mmd_training_moton_details_id', 'rb_method_moton_details', 'training_moton_details_id', 't_training_motion_details', 'id');
INSERT INTO `s_fk_field` VALUES ('25', 'fk_field_table_name', 's_field', 'table_name', 's_table', 'name_en');
INSERT INTO `s_fk_field` VALUES ('26', 'fk_menu_superiors_id', 's_menu', 'superiors_id', 's_menu', 'id');
INSERT INTO `s_fk_field` VALUES ('27', 'fk_menu_url_table', 's_menu', 'url_table', 's_table', 'name_en');
INSERT INTO `s_fk_field` VALUES ('28', 'fk_fmf_form_field_id', 's_page_properties', 'field_id', 's_field', 'id');
INSERT INTO `s_fk_field` VALUES ('29', 'fk_fmf_form_id', 's_page_properties', 'form_id', 's_page', 'id');
INSERT INTO `s_fk_field` VALUES ('30', 'coach_man_id', 't_coach', 'man_id', 't_man', 'id');
INSERT INTO `s_fk_field` VALUES ('31', 'coach_users_id', 't_coach', 'users_id', 't_users', 'id');
INSERT INTO `s_fk_field` VALUES ('32', 'man_images_id', 't_man', 'images_id', 't_images', 'id');
INSERT INTO `s_fk_field` VALUES ('33', 'member_man_id', 't_member', 'man_id', 't_man', 'id');
INSERT INTO `s_fk_field` VALUES ('34', 'tmd_training_motion_id', 't_training_motion_details', 'training_motion_id', 't_training_motion', 'id');
INSERT INTO `s_fk_field` VALUES ('35', 'rb_mtm_man_id', 't_training_plan_', 'man_id', 't_man', 'id');
INSERT INTO `s_fk_field` VALUES ('36', 'rb_mtm_training_method_id', 't_training_plan_', 'training_method_id', 't_training_method', 'id');
INSERT INTO `s_fk_field` VALUES ('37', 'training_records_training_moton_details_id', 't_training_records', 'training_moton_details_id', 't_training_motion_details', 'id');
INSERT INTO `s_fk_field` VALUES ('38', 'training_records_training_plan_id', 't_training_records', 'training_plan_id', 't_training_plan_', 'id');

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
-- Records of s_master_field
-- ----------------------------
INSERT INTO `s_master_field` VALUES ('id', null, 'tabls', 'id', null, null, null, null, null, null);

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
-- Records of s_menu
-- ----------------------------
INSERT INTO `s_menu` VALUES ('0', '系统管理', 'fa-desktop', null, 'a', null, null);
INSERT INTO `s_menu` VALUES ('1', '新增菜单', 'fa-home', '0', null, 'create', 's_menu');
INSERT INTO `s_menu` VALUES ('2', '新增选择框', null, '0', 'create/s_select', 'create', 's_select');
INSERT INTO `s_menu` VALUES ('4', '新增人', null, '0', 'create/t_man', 'create', 't_man');
INSERT INTO `s_menu` VALUES ('8', '查看菜单', null, '0', 'find/s_menu', 'find', 's_menu');
INSERT INTO `s_menu` VALUES ('9', '查看选择框', null, '0', 'find/s_select', 'find', 's_select');
INSERT INTO `s_menu` VALUES ('10', '查看人', null, '0', 'find/t_man', 'find', 't_man');
INSERT INTO `s_menu` VALUES ('11', '组合窗口', '123', '0', 'combination/s_table', 'combination', 's_table');
INSERT INTO `s_menu` VALUES ('12', '字段', null, '0', null, 'create', 's_field');
INSERT INTO `s_menu` VALUES ('13', '创建', null, '0', null, 'create', 't_coach');
INSERT INTO `s_menu` VALUES ('20', '更新', null, null, null, 'update', 's_menu');
INSERT INTO `s_menu` VALUES ('21', '页面配置列表', null, null, null, 'find', 's_page');

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
-- Records of s_page
-- ----------------------------
INSERT INTO `s_page` VALUES ('1', 's_page', null, null);

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
-- Records of s_page_properties
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='表';

-- ----------------------------
-- Records of s_table
-- ----------------------------
INSERT INTO `s_table` VALUES ('1', '字段', 's_field');
INSERT INTO `s_table` VALUES ('2', '', 's_fk_field');
INSERT INTO `s_table` VALUES ('3', '菜单', 's_menu');
INSERT INTO `s_table` VALUES ('4', '', 's_select');
INSERT INTO `s_table` VALUES ('5', '表', 's_table');
INSERT INTO `s_table` VALUES ('6', '教练会员关系表', 'rb_coach_member');
INSERT INTO `s_table` VALUES ('7', '人照片关系', 'rb_man_images');
INSERT INTO `s_table` VALUES ('8', '训练方法和训练动作细节关系', 'rb_method_moton_details');
INSERT INTO `s_table` VALUES ('9', '教练', 't_coach');
INSERT INTO `s_table` VALUES ('10', '图片', 't_images');
INSERT INTO `s_table` VALUES ('11', '人', 't_man');
INSERT INTO `s_table` VALUES ('27', '', 's_fk_field');
INSERT INTO `s_table` VALUES ('28', '表单', 's_page');
INSERT INTO `s_table` VALUES ('29', '表单主表字段设置', 's_page_properties');
INSERT INTO `s_table` VALUES ('30', '', 's_select');
INSERT INTO `s_table` VALUES ('31', '会员', 't_member');
INSERT INTO `s_table` VALUES ('32', '训练方法', 't_training_method');
INSERT INTO `s_table` VALUES ('33', '训练动作', 't_training_motion');
INSERT INTO `s_table` VALUES ('34', '训练动作细节', 't_training_motion_details');
INSERT INTO `s_table` VALUES ('35', '训练计划', 't_training_plan_');
INSERT INTO `s_table` VALUES ('36', '训练记录', 't_training_records');
INSERT INTO `s_table` VALUES ('37', '用户', 't_users');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='人';

-- ----------------------------
-- Records of t_man
-- ----------------------------
INSERT INTO `t_man` VALUES ('1', '黄', '', '12', '2', '3', null);
INSERT INTO `t_man` VALUES ('2', 'qweqw', null, null, null, null, null);
INSERT INTO `t_man` VALUES ('3', '123', null, null, null, null, null);
INSERT INTO `t_man` VALUES ('4', '123', null, null, null, null, null);
INSERT INTO `t_man` VALUES ('5', 'asd', null, null, null, null, null);
INSERT INTO `t_man` VALUES ('6', 'ad', null, null, null, null, null);
INSERT INTO `t_man` VALUES ('7', '123', null, null, null, null, null);
INSERT INTO `t_man` VALUES ('8', '312', null, null, null, null, null);

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
