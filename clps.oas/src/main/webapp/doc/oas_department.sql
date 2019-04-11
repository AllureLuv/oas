
DROP TABLE `de_info_ta`;

CREATE TABLE `de_info_ta` (
	`DEPA_NUMBER` INT(11) NOT NULL AUTO_INCREMENT,
	`DEPA_NAME` VARCHAR(40),
	`DEPA_FATHER_NUMBER` VARCHAR(40),
	`DEPA_CHILD_NUMBER` VARCHAR(40),
	`DEPA_LEVEL` VARCHAR(8),
	`DEPA_EMAIL` VARCHAR(40),
	`DEPA_COMMENT` VARCHAR(40),
	`DEPA_CREATE_NAME` VARCHAR(40),
	`DEPA_CREATE_DATETIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	`DEPA_UPDATED_NAME` VARCHAR(40),
	`DEPA_UPDATED_DATETIME` timestamp NULL,
	PRIMARY KEY (`DEPA_NUMBER`)
)ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

insert into `de_info_ta` values('1','研发部','5','6','2','123@qq.com',null,'ztc','2018-11-15 10:14:58','ztc','2018-11-15 10:14:58');
insert into `de_info_ta` values('2','实施部','5','6','2','123@qq.com',null,'ztc','2018-11-15 10:14:58','ztc','2018-11-15 10:14:58');
insert into `de_info_ta` values('3','销售部','5','6','2','123@qq.com',null,'ztc','2018-11-15 10:14:58','ztc','2018-11-15 10:14:58');

