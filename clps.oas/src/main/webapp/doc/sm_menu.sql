-- ----------------------------
-- Table structure for `sm_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sm_menu`;
CREATE TABLE `sm_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(100) NOT NULL COMMENT '菜单名',
  `menu_sort_id` int(11) NOT NULL COMMENT '菜单排序号',
  `menu_level` int(11) NOT NULL COMMENT '菜单等级',
  `menu_parentid` int(11) NOT NULL COMMENT '菜单父Id',
  `menu_url` varchar(100) DEFAULT NULL COMMENT '菜单url',
  `menu_isvariable` int(11) NOT NULL DEFAULT '1' COMMENT '菜单状态',
  `menu_comment` varchar(1000) DEFAULT NULL COMMENT '菜单备注',
  `menu_created_datetime` timestamp NULL DEFAULT NULL COMMENT '菜单创建时间',
  `menu_created_name` int(11) NOT NULL COMMENT '菜单创建人',
  `menu_updated_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '菜单修改时间',
  `menu_updated_name` int(11) NOT NULL COMMENT '菜单修改人',
  `menu_default1` varchar(20) DEFAULT NULL,
  `menu_default2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sm_menu
-- ----------------------------
INSERT INTO `sm_menu` VALUES ('1', 'sm', '1', '0', '0', '/', '1', 'root', '2018-05-11 09:22:03', '1', '2018-06-04 16:27:52', '1', null, null);
INSERT INTO `sm_menu` VALUES ('2', 'menu', '1', '1', '1', 'menu_list', '1', 'menu', '2018-05-11 09:22:03', '1', '2018-06-04 16:27:53', '1', null, null);
INSERT INTO `sm_menu` VALUES ('3', 'position', '3', '3', '1', 'positionList', '1', 'position', '2018-05-23 09:12:52', '1', '2018-06-05 08:59:35', '1', null, null);
INSERT INTO `sm_menu` VALUES ('4', 'department', '4', '4', '1', 'departmentList', '1', 'department', '2018-05-22 17:23:25', '1', '2018-06-05 08:59:35', '1', null, null);
INSERT INTO `sm_menu` VALUES ('5', 'permission', '5', '5', '1', 'permissionvoList', '1', 'permission', '2018-05-29 10:51:43', '1', '2018-06-05 09:00:06', '1', null, null);
INSERT INTO `sm_menu` VALUES ('6', 'sendemail', '6', '6', '1', 'sendemailList', '1', 'sendemail', '2018-05-29 22:11:22', '1', '2018-05-29 22:11:22', '1', null, null);
INSERT INTO `sm_menu` VALUES ('7', 'parameter', '7', '7', '1', 'parameterList', '1', 'parameterList', '2018-05-29 11:22:11', '1', '2018-05-29 11:22:11', '1', null, null);
