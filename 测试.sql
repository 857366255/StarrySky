CREATE TABLE `t_users` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user` varchar(255) NULL COMMENT '用户',
`password` varchar(255) NULL COMMENT '密码',
PRIMARY KEY (`id`)
)
COMMENT = '用户';






CREATE TABLE `t_images` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`url` varchar(255) NULL COMMENT '路径',
`nama` varchar(255) NULL COMMENT '名称',
`type` varchar(255) NULL COMMENT '类型',
`creation_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
`picture_date` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '图片日期',
PRIMARY KEY (`id`)
)
COMMENT = '图片';


CREATE TABLE `t_man` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`nanme` varchar(255) NULL COMMENT '名称',
`gender` bit NULL COMMENT '性别',
`age` int(3) NULL COMMENT '年龄',
`mobile_phone` varchar(255) NULL COMMENT '手机号码',
`address` varchar(255) NULL COMMENT '地址',
`images_id` int(11) NULL COMMENT '头像',
PRIMARY KEY (`id`) ,
CONSTRAINT `man_images_id` FOREIGN KEY (`images_id`) REFERENCES `t_images` (`id`)
)
COMMENT = '人';




CREATE TABLE `t_coach` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`users_id` int(11) NULL COMMENT '账号',
`man_id` int(11) NULL COMMENT '人',
PRIMARY KEY (`id`) ,
CONSTRAINT `coach_users_id` FOREIGN KEY (`users_id`) REFERENCES `t_users` (`id`),
CONSTRAINT `coach_man_id` FOREIGN KEY (`man_id`) REFERENCES `t_man` (`id`)
)
COMMENT = '教练';


CREATE TABLE `t_member` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`man_id` int(11) NULL COMMENT '人',
PRIMARY KEY (`id`) ,
CONSTRAINT `member_man_id` FOREIGN KEY (`man_id`) REFERENCES `t_man` (`id`)
)
COMMENT = '会员';


CREATE TABLE `rb_coach_member` (
`id` int(11) NOT NULL,
`coach_id` int(11) NULL COMMENT '教练',
`member_id` int(11) NULL COMMENT '会员',
PRIMARY KEY (`id`) ,
CONSTRAINT `cm_coach_id` FOREIGN KEY (`coach_id`) REFERENCES `t_coach` (`id`),
CONSTRAINT `cm_member_id` FOREIGN KEY (`member_id`) REFERENCES `t_member` (`id`)
)
COMMENT = '教练会员关系表';


CREATE TABLE `rb_man_images` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`man_id` int(11) NULL COMMENT '人',
`images_id` int(11) NULL COMMENT '照片',
PRIMARY KEY (`id`) ,
CONSTRAINT `mi_man_id` FOREIGN KEY (`man_id`) REFERENCES `t_man` (`id`),
CONSTRAINT `mi_images_id` FOREIGN KEY (`images_id`) REFERENCES `t_images` (`id`)
)
COMMENT = '人照片关系';


CREATE TABLE `t_training_method` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(255) NULL COMMENT '名称',
`describe` varchar(255) NULL COMMENT '描述',
PRIMARY KEY (`id`)
)
COMMENT = '训练方法';


CREATE TABLE `t_training_motion` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(255) NULL COMMENT '名称',
`position` int(11) NULL COMMENT '位置',
`describe` varchar(255) NULL COMMENT '描述',
PRIMARY KEY (`id`)
)
COMMENT = '训练动作';


CREATE TABLE `t_training_motion_details` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`training_motion_id` int(11) NULL COMMENT '动作',
`group_number` int(2) NULL COMMENT '组数',
`quantity` int(4) NULL COMMENT '数量',
PRIMARY KEY (`id`) ,
CONSTRAINT `tmd_training_motion_id` FOREIGN KEY (`training_motion_id`) REFERENCES `t_training_motion` (`id`)
)
COMMENT = '训练动作细节';


CREATE TABLE `rb_method_moton_details` (
`id` int(11) NOT NULL,
`training_method_id` int(11) NULL COMMENT '训练方法',
`training_moton_details_id` int(11) NULL COMMENT '动作细节',
PRIMARY KEY (`id`) ,
CONSTRAINT `mmd_training_method_id` FOREIGN KEY (`training_method_id`) REFERENCES `t_training_method` (`id`),
CONSTRAINT `mmd_training_moton_details_id` FOREIGN KEY (`training_moton_details_id`) REFERENCES `t_training_motion_details` (`id`)
)
COMMENT = '训练方法和训练动作细节关系';


CREATE TABLE `t_training_plan_` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`man_id` int(11) NULL COMMENT '人',
`training_method_id` int(11) NULL COMMENT '训练方法',
`training_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '训练时间',
`state` varchar(255) NULL COMMENT '状态',
PRIMARY KEY (`id`) ,
CONSTRAINT `rb_mtm_man_id` FOREIGN KEY (`man_id`) REFERENCES `t_man` (`id`),
CONSTRAINT `rb_mtm_training_method_id` FOREIGN KEY (`training_method_id`) REFERENCES `t_training_method` (`id`)
)
COMMENT = '训练计划';


CREATE TABLE `t_training_records` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`training_plan_id` int(11) NULL COMMENT '训练计划',
`training_moton_details_id` int(11) NULL,
`which_group` int(2) NULL COMMENT '第几组',
`complete_number` int(4) NULL COMMENT '完成数量',
`creation_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
PRIMARY KEY (`id`) ,
CONSTRAINT `training_records_training_plan_id` FOREIGN KEY (`training_plan_id`) REFERENCES `t_training_plan_` (`id`),
CONSTRAINT `training_records_training_moton_details_id` FOREIGN KEY (`training_moton_details_id`) REFERENCES `t_training_motion_details` (`id`)
)
COMMENT = '训练记录';




