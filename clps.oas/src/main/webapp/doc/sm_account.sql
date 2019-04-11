DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `account_id` int(12) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(60) NOT NULL,
  `account_real_name` varchar(60) NOT NULL,
  `account_pass` varchar(60) NOT NULL,
  `account_mail` varchar(60) NOT NULL,
  `account_address` varchar(100) NOT NULL,
  `account_phone` varchar(50) NOT NULL,
  `account_telephone` varchar(50) DEFAULT NULL,
  `account_role_id` int(12) DEFAULT NULL,
  `account_position_id` int(12) DEFAULT NULL,
  `account_company_id` int(12) DEFAULT NULL,
  `account_created_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `account_created_name` varchar(50) NOT NULL,
  `account_updated_datetime` timestamp NOT NULL DEFAULT '2018-11-15 00:00:00',
  `account_updated_name` varchar(50) NOT NULL,
  `account_isValid` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`account_id`,`account_name`,`account_real_name`,`account_pass`,`account_mail`,`account_address`,`account_phone`,`account_telephone`,`account_role_id`,`account_position_id`,`account_company_id`,`account_created_datetime`,`account_created_name`,`account_updated_datetime`,`account_updated_name`,`account_isValid`) values (1,'ztc1','周天呈','1234','123@qq.com','金陵科技学院','123213','',1,1,1,'2018-11-15 16:46:20','admin','2018-11-15 16:46:20','admin',1),(2,'ztc2','周天呈2','1234','123@qq.com','金陵科技学院','21123','',1,1,1,'2018-11-15 16:46:20','ztc1','2018-11-15 16:46:20','ztc1',1),(3,'ztc3','周天呈3','1234','123@qq.com','金陵科技学院','12321','',1,2,1,'2018-11-15 16:46:20','ztc1','2018-11-15 16:46:20','ztc1',1);
