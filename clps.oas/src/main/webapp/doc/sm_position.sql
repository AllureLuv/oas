--<ScriptOptions statementTerminator=";"/>
--oas  --




DROP TABLE IF EXISTS `position`;

CREATE TABLE `position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) DEFAULT NULL COMMENT '????',
  `position_description` varchar(100) DEFAULT NULL COMMENT '????',
  `position_level` varchar(100) DEFAULT NULL,
  `position_department_id` int(11) DEFAULT NULL,
  `position_created_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `position_created_name` int(11) DEFAULT NULL,
  `position_updated_datetime` timestamp NULL ,
  `position_updated_name` int(11) DEFAULT NULL,
  `position_default1` varchar(20) DEFAULT NULL,
  `position_default2` varchar(20) DEFAULT NULL,
  `position_isvalued` int(11) DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `position` */

insert  into `position`(`position_id`,`position_name`,`position_description`,`position_level`,`position_department_id`,`position_created_datetime`,`position_created_name`,`position_updated_datetime`,`position_updated_name`,`position_default1`,`position_default2`,`position_isvalued`) values 
(1,'java开发','java development','1',1,'2018-11-15 10:14:58',1,'2018-11-15 10:14:58',1,NULL,NULL,1),
(2,'c++开发','c++ development','1',1,'2018-11-15 10:14:58',1,'2018-11-15 10:14:58',1,NULL,NULL,1),
(3,'大数据开发','big data development','1',1,'2018-11-15 10:14:58',1,'2018-11-15 10:14:58',1,NULL,NULL,1);
--(29,'1','1','1',1,'2018-11-15 10:14:58',1,'2018-11-15 10:14:58',1,NULL,NULL,1),
--(30,'2','2','1',2,'2018-11-15 10:14:58',1,'2018-11-15 10:14:58',1,NULL,NULL,1),
--(31,'1','1','1',1,'2018-11-15 10:14:58',1,'2018-11-15 10:14:58',1,NULL,NULL,1),
--(32,'1','1','1',1,'2018-11-15 10:14:58',1,'2018-11-15 10:14:58',1,NULL,NULL,1),
--(33,'1','1','1',1,'2018-11-15 10:14:58',1,'2018-11-15 10:14:58',1,NULL,NULL,1),
--(34,'123','1','1',1,'2018-11-15 10:14:58',1,'2018-11-15 10:14:58',NULL,NULL,NULL,1),
--(35,'2','1','1',1,'2018-11-15 10:14:58',1,'2018-11-15 10:14:58',NULL,NULL,NULL,1),
--(36,'3','1','1',1,'2018-11-15 10:14:58',1,'2018-11-15 10:14:58',NULL,NULL,NULL,1),
--(37,'4','1','1',1,'2018-11-15 10:14:58',1,'2018-11-15 10:14:58',NULL,NULL,NULL,1),
