/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dianzixiangcexitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dianzixiangcexitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dianzixiangcexitong`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617172755578 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-03-13 15:59:12',1,1,'提问1','回复1',0),(62,'2021-03-13 15:59:12',2,2,'提问2','回复2',2),(63,'2021-03-13 15:59:12',3,3,'提问3','回复3',0),(64,'2021-03-13 15:59:12',4,4,'提问4','回复4',4),(65,'2021-03-13 15:59:12',5,5,'提问5','回复5',5),(66,'2021-03-13 15:59:12',6,6,'提问6','回复6',6),(1617172755577,'2021-03-31 14:39:14',3,NULL,'‍123\r\n','31223132\r\n',0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/dianzixiangcexitong/upload/1617162412260.jpg'),(2,'picture2','http://localhost:8080/dianzixiangcexitong/upload/1617162430700.jpg'),(3,'picture3','http://localhost:8080/dianzixiangcexitong/upload/1617162443054.jpg'),(6,'homepage','http://localhost:8080/dianzixiangcexitong/upload/1617162458655.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-30 19:20:01'),(2,'sex_types','性别',2,'女',NULL,'2021-03-30 19:20:01'),(3,'fenlei_types','相片分类',1,'风景',NULL,'2021-03-30 19:20:01'),(4,'fenlei_types','相片分类',2,'人物',NULL,'2021-03-30 19:20:01'),(5,'fenlei_types','相片分类',3,'动物',NULL,'2021-03-30 19:20:01');

/*Table structure for table `discussxiangpian` */

DROP TABLE IF EXISTS `discussxiangpian`;

CREATE TABLE `discussxiangpian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussxiangpian` */

insert  into `discussxiangpian`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (121,'2021-03-13 15:59:12',1,1,'评论内容1','回复内容1'),(122,'2021-03-13 15:59:12',2,2,'评论内容2','回复内容2'),(123,'2021-03-13 15:59:12',3,3,'评论内容3','回复内容3'),(127,'2021-03-31 13:45:05',1,1,'123',NULL),(128,'2021-03-31 14:38:43',1,3,'123','123');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-03-13 15:59:12','标题1','简介1','http://localhost:8080/dianzixiangcexitong/upload/1617105497416.jpg','<img src=\"http://localhost:8080/dianzixiangcexitong/upload/1617105497409.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/dianzixiangcexitong/upload/1617105497409.jpg\">内容1\r\n'),(112,'2021-03-13 15:59:12','标题2','简介2','http://localhost:8080/dianzixiangcexitong/upload/1617105514058.jpg','<img src=\"http://localhost:8080/dianzixiangcexitong/upload/1617105511060.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/dianzixiangcexitong/upload/1617105511060.jpg\">内容2\r\n'),(113,'2021-03-13 15:59:12','标题3','简介3','http://localhost:8080/dianzixiangcexitong/upload/1617105520740.jpg','<img src=\"http://localhost:8080/dianzixiangcexitong/upload/1617105519561.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/dianzixiangcexitong/upload/1617105519561.jpg\">内容3\r\n'),(114,'2021-03-13 15:59:12','标题4','简介4','http://localhost:8080/dianzixiangcexitong/upload/1617105527692.jpg','<img src=\"http://localhost:8080/dianzixiangcexitong/upload/1617105526376.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/dianzixiangcexitong/upload/1617105526376.jpg\">内容4\r\n');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617172731706 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (9,1,'admin','users','管理员','sfu59f2kzkzapd7efgzcexq8ki86frl7','2021-03-30 19:36:16','2021-03-31 15:42:37'),(10,1,'111','yonghu','用户','d9077g1zgg4xm7dq3ea6atghqil7uic0','2021-03-31 11:08:33','2021-03-31 15:04:30'),(11,3,'333','yonghu','用户','30yjlwwhadtpu25v481qw8t2rd6050ug','2021-03-31 14:38:22','2021-03-31 15:42:15');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xiangche` */

DROP TABLE IF EXISTS `xiangche`;

CREATE TABLE `xiangche` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `odd` varchar(200) DEFAULT NULL COMMENT '相册编号',
  `xcname` varchar(200) DEFAULT NULL COMMENT '相册名称 Search111',
  `img_photo` varchar(200) DEFAULT NULL COMMENT '相册封面',
  `yonghu_id` tinyint(4) DEFAULT NULL COMMENT '相册主人',
  `number` int(100) DEFAULT NULL COMMENT '图片数量 Search111',
  `chuanjian_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 Search111',
  `xiangche_content` varchar(200) DEFAULT NULL COMMENT '相册描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='相册信息';

/*Data for the table `xiangche` */

insert  into `xiangche`(`id`,`odd`,`xcname`,`img_photo`,`yonghu_id`,`number`,`chuanjian_time`,`xiangche_content`) values (5,'1617110536691','相册名称1','http://localhost:8080/dianzixiangcexitong/file/download?fileName=1617110530292.jpg',2,2,'2021-03-30 21:22:17','相册描述1\r\n'),(6,'1617158281559','相册名称2','http://localhost:8080/dianzixiangcexitong/file/download?fileName=1617158270820.jpg',1,1,'2021-03-31 10:38:02','相册描述2\r\n'),(7,'1617172822763','相册名称3','http://localhost:8080/dianzixiangcexitong/file/download?fileName=1617172816886.jpg',3,3,'2021-03-31 14:40:23','相册描述\r\n\r\n');

/*Table structure for table `xiangpian` */

DROP TABLE IF EXISTS `xiangpian`;

CREATE TABLE `xiangpian` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangche_id` tinyint(4) DEFAULT NULL COMMENT '相册编号',
  `xpname` varchar(200) DEFAULT NULL COMMENT '相片名称 Search111',
  `paishedidian` varchar(200) DEFAULT NULL COMMENT '拍摄地点',
  `xpimg_photo` varchar(255) DEFAULT NULL COMMENT '相片',
  `paisheren` varchar(200) DEFAULT NULL COMMENT '相片拍摄人',
  `xpsize` int(100) DEFAULT NULL COMMENT '相片大小',
  `fenlei_types` tinyint(4) DEFAULT NULL COMMENT '相片分类 Search111',
  `xiangpian_content` varchar(200) DEFAULT NULL COMMENT '相片描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='相片信息';

/*Data for the table `xiangpian` */

insert  into `xiangpian`(`id`,`xiangche_id`,`xpname`,`paishedidian`,`xpimg_photo`,`paisheren`,`xpsize`,`fenlei_types`,`xiangpian_content`) values (1,5,'相片名称1','拍摄地点1','http://localhost:8080/dianzixiangcexitong/file/download?fileName=1617156875547.jpg','相片拍摄人1',100,3,'相片描述1\r\n'),(2,5,'相片名称2','拍摄地点2','http://localhost:8080/dianzixiangcexitong/file/download?fileName=1617158224579.jpeg','相片拍摄人2',200,1,'相片描述2\r\n'),(3,6,'相片名称1','拍摄地点1','http://localhost:8080/dianzixiangcexitong/file/download?fileName=1617158301881.jpg','相片拍摄人1',100,2,'相片描述1\r\n'),(4,7,'相片名称1','拍摄地点1','http://localhost:8080/dianzixiangcexitong/file/download?fileName=1617172845670.jpg','相片拍摄人1',100,2,'相片描述1\r\n'),(5,7,'相片名称2','拍摄地点2','http://localhost:8080/dianzixiangcexitong/file/download?fileName=1617172879978.jpg','相片拍摄人2',200,2,'相片描述2\r\n'),(6,7,'相片名称3','拍摄地点3','http://localhost:8080/dianzixiangcexitong/file/download?fileName=1617172906509.jpg','相片拍摄人3',300,2,'相片描述3\r\n');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称  Search111',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `yhimg_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别  Search111',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(255) DEFAULT NULL COMMENT '身份证',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`name`,`username`,`password`,`yhimg_photo`,`sex_types`,`phone`,`id_number`,`role`) values (1,'小金','111','111','http://localhost:8080/dianzixiangcexitong/file/download?fileName=1617109584366.jpg',1,'17796312333','410882200011231234','用户'),(2,'小札','222','222','http://localhost:8080/dianzixiangcexitong/file/download?fileName=1617109128611.jpg',2,'17754548971','410882200011274855','用户'),(3,'小张','333','123456','http://localhost:8080/dianzixiangcexitong/file/download?fileName=1617172421740.jpg',2,'17798866567','410882201001145454','用户');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
