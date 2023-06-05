/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.24-MariaDB : Database - legal_advisor
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`legal_advisor` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `legal_advisor`;

/*Table structure for table `advocates` */

DROP TABLE IF EXISTS `advocates`;

CREATE TABLE `advocates` (
  `adv_id` int(11) NOT NULL AUTO_INCREMENT,
  `logid` int(11) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `qualification` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `house_name` varchar(30) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`adv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `advocates` */

insert  into `advocates`(`adv_id`,`logid`,`first_name`,`last_name`,`qualification`,`gender`,`phone`,`email`,`house_name`,`place`,`image`) values 
(3,6,'liyaa','lazar','llb','female','7458963210','liyaa@mail','ajdjasd','thrissur','static/adv/22b594a7-d18d-4872-bd74-0e1ce6c36e71Cover_Page.pdf'),
(4,9,'appu','appu','LLM','male','1234567890','appu@gmail.com','pky','kollam','static/adv/22b594a7-d18d-4872-bd74-0e1ce6c36e71Cover_Page.pdf'),
(5,10,'francis','s','ehfehfhwkjbf','male','1234567890','francisfr007@gmail.com','dh','hbfjebfjbjrugudydbe','static/adv/f9c200a7-c4b3-41c3-ab61-d2ae9258e335FRANCIS_+B+M_Resume-1.pdf'),
(6,68,'Gokul','appu','LLB','male','8138847698','appu@gmail.com','mkm','kollam','static/adv/22b594a7-d18d-4872-bd74-0e1ce6c36e71Cover_Page.pdf'),
(8,70,'dev','dev','llm','male','8138847698','dev@gmail.com','kalp','idukki','static/adv/e94038e7-ba42-4480-b560-45fe074bba20Project_Francis.pdf'),
(7,69,'ANIL','kurian','llb ','male','1234567890','anil@gmail.com','KAARIL','KOzhikode','static/adv/efaabcb7-7f97-4c01-b76d-46cd27014868Cover_Page.pdf');

/*Table structure for table `case_allocations` */

DROP TABLE IF EXISTS `case_allocations`;

CREATE TABLE `case_allocations` (
  `allocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(11) DEFAULT NULL,
  `date_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`allocation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `case_allocations` */

/*Table structure for table `case_files` */

DROP TABLE IF EXISTS `case_files`;

CREATE TABLE `case_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_title` varchar(300) DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  `key` varchar(500) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `case_files` */

insert  into `case_files`(`file_id`,`file_title`,`case_id`,`key`,`file_name`) values 
(1,'retyuiop[',1,'static/eb704dee-5910-4590-a232-f80e300ae1cbe.jpg','e.jpg'),
(2,'qqqqqqq',3,'static/726ee58a-66c6-4296-bfd5-b5eb9e8aae33c.jpg','e.jpg'),
(3,'sssss',2,'static/1938df45-5ed3-4ff3-bb2e-d8d66c46bc20a.jpg','e.jpg'),
(4,'ert',3,'hi','e.jpg'),
(5,'qwete',2,'hi','c.jpg'),
(6,'pppppp',2,'5921','c.jpg'),
(7,'MEET',2,'7960','Cover_Page.pdf'),
(8,'solved',4,'8748','Project_Francis.pdf'),
(9,'hi',4,'3257','Project_Francis.pdf'),
(10,'HELLO',7,'4978','a.jpg'),
(11,'MEET',7,'8829','Cover_Page.pdf'),
(12,'hii',7,'7243','c.jpg'),
(13,'hii',7,'1815','a.jpg'),
(14,'hii',5,'8019','a.jpg'),
(15,'hello',7,'3984','a.jpg'),
(16,'hii',7,'2553','a.jpg');

/*Table structure for table `case_notes` */

DROP TABLE IF EXISTS `case_notes`;

CREATE TABLE `case_notes` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) DEFAULT NULL,
  `date_time` varchar(20) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `case_notes` */

insert  into `case_notes`(`note_id`,`case_id`,`date_time`,`description`) values 
(1,2,'2023-04-27 08:59:45','aaaaaaaaaaaaaaaaa'),
(2,4,'2023-05-03 18:20:43','TOMMOROW YOU WILL COME HERE'),
(3,4,'2023-05-04 22:27:30','tommorow meeting'),
(4,5,'2023-05-05 00:17:17','hello');

/*Table structure for table `case_types` */

DROP TABLE IF EXISTS `case_types`;

CREATE TABLE `case_types` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `case_types` */

insert  into `case_types`(`type_id`,`type_name`,`description`) values 
(7,'Civil Cases','involve disputes between individuals or entities'),
(6,'Criminal Cases','violations of criminal law'),
(8,'Family Cases',' involve legal issues related to family relationships'),
(9,'Immigration Cases',' involve disputes related to immigration'),
(10,'Employment Law Cases','involve disputes between employers and employees');

/*Table structure for table `cases` */

DROP TABLE IF EXISTS `cases`;

CREATE TABLE `cases` (
  `case_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `description` varchar(40) DEFAULT NULL,
  `case_date` varchar(30) DEFAULT NULL,
  `police_station` varchar(30) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`case_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `cases` */

insert  into `cases`(`case_id`,`client_id`,`type_id`,`title`,`description`,`case_date`,`police_station`,`pincode`,`phone`,`status`) values 
(7,60,6,'Kill ','Draula killled don','10.4.24','Anamaly','098789','8138847698','pending'),
(6,58,6,'Murder','James killed arjun','07/05/2823','Angamaly ','123321','8138847698','pending'),
(5,58,8,'Divocre','Husband beat me','05/04/2023','Angamaly','678098','9778366103','pending');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `sender_type` varchar(50) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `receiver_type` varchar(50) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `date_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`chat_id`,`sender_id`,`sender_type`,`receiver_id`,`receiver_type`,`message`,`date_time`) values 
(1,4,'advocate',2,'client','hjdbjgdbjdkk','2023-04-17 15:35:25'),
(2,4,'advocate',2,'client','jsfnksnfkjs','2023-04-17 15:35:29'),
(3,4,'advocate',2,'client','qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq','2023-04-18 11:24:26'),
(4,4,'advocate',7,'client','hiiii','2023-04-26 12:18:24'),
(5,4,'advocate',7,'client','qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq','2023-04-26 12:19:09'),
(6,7,'client',4,'advocate','huidnndnd','2023-04-26 12:32:36'),
(7,7,'client',6,'advocate','hfxjfxnjjxjxjx','2023-04-26 15:11:14'),
(8,9,'advocate',66,'client','HELLO IM ADVOCATE APPU . I WILL HELP YOU TO SAVE YOU.','2023-05-03 17:58:10'),
(9,66,'client',9,'advocate','Okk Sir .How can u helpe me ?','2023-05-03 18:10:26'),
(10,9,'advocate',66,'client','HELLO IM ADVOCATE APPU . I WILL HELP YOU TO SAVE YOU. Okk Sir .How can u helpe me ?','2023-05-05 00:13:57'),
(11,9,'advocate',66,'client','hii','2023-05-05 00:16:34'),
(12,66,'client',9,'advocate','Hello sir','2023-05-05 00:20:13'),
(13,9,'advocate',72,'client','HELLO','2023-05-05 00:26:33'),
(14,72,'client',9,'advocate','lHii','2023-05-05 10:42:08');

/*Table structure for table `clerk` */

DROP TABLE IF EXISTS `clerk`;

CREATE TABLE `clerk` (
  `clerk_id` int(11) NOT NULL AUTO_INCREMENT,
  `logid` int(11) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `house` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`clerk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `clerk` */

insert  into `clerk`(`clerk_id`,`logid`,`fname`,`lname`,`qualification`,`gender`,`phone`,`email`,`house`,`place`) values 
(2,67,'Gokul','DAS','BCA','male','1234567890','G@GMAIL.COM','VADAKK','THR'),
(3,75,'Amal','dev','12th','male','1234567891','AMALG@MAIL.COM','devaru','malappuram'),
(4,76,'Ashik','ks','degree','male','1234567890','ash@gmail.com','askka','thrissur');

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `house_name` varchar(30) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `pincode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

/*Data for the table `client` */

insert  into `client`(`client_id`,`login_id`,`first_name`,`last_name`,`gender`,`dob`,`phone`,`email`,`house_name`,`place`,`pincode`) values 
(1,2,'Anu','Joseph','Female','12.0.01','1234567890','d@g.v','sdfgh','jdfgh','123456'),
(2,7,'Mebin','Mathew','Male','12.0.01','1234567890','jasna.infox.py@gmail.com','ndvjdjdd','dkjnsd','987456'),
(3,11,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(4,12,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(5,13,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(6,14,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(7,15,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(8,16,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(9,17,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(10,18,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(11,19,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(12,20,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(13,21,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(14,22,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(15,23,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(16,24,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(17,25,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(18,26,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(19,27,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(20,28,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(21,29,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(22,30,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(23,31,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(24,32,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(25,33,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(26,34,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(27,35,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(28,36,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(29,37,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(30,38,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(31,39,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(32,40,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(33,41,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(34,42,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(35,43,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(36,44,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(37,45,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(38,46,'Francis','B M','Male','20/07/2000','8138847698','fr@gnail.com','mkm','pjy','680586'),
(39,47,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(40,48,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(41,49,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(42,50,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(43,51,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(44,52,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(45,53,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(46,54,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(47,55,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(48,56,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(49,57,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(50,58,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(51,59,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(52,60,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(53,61,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(54,62,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(55,63,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(56,64,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(57,65,'Francis','B M','Male','20/07/2000','8138847698','fr@gmail.com','mkm','pky','680586'),
(58,66,'Joju','Joju','Male','20/04/2000','1234567890','jo@gmail.com','plaparmb','Pzr','123654'),
(59,71,'Francis 11','B M','Male','20/07/2000','8138847698','francisbm18@gmail.com','Malekandam ','Chelakkara','680586'),
(60,72,'Francis ','B M','Male','20/07/2000','8138847698','francisbm18@gmail.com','Malekandam ','Chelakkara','680586'),
(61,73,'Arun','G','Male','20/07/1999','9778366103','aru@gmail.com','arnil','Kannur','321654'),
(62,74,'Arun','G','Male','20/07/1999','9778366103','aru@gmail.com','arnil','Kannur','321654');

/*Table structure for table `client_assigns` */

DROP TABLE IF EXISTS `client_assigns`;

CREATE TABLE `client_assigns` (
  `assign_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `adv_id` int(11) DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  `date_time` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`assign_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `client_assigns` */

insert  into `client_assigns`(`assign_id`,`client_id`,`adv_id`,`case_id`,`date_time`,`status`) values 
(1,2,3,3,'2023-04-26 12:24:13','accepted'),
(2,2,1,2,'2023-04-26 13:10:20','assigned'),
(3,2,2,3,'2023-04-26 15:02:11','assigned'),
(4,2,2,2,'2023-04-26 15:02:20','assigned'),
(5,2,2,3,'2023-04-26 16:52:14','assigned'),
(6,2,2,3,'2023-04-26 17:05:23','assigned'),
(7,2,2,3,'2023-04-26 17:05:39','assigned'),
(8,2,2,3,'2023-04-26 17:05:39','assigned'),
(9,2,2,3,'2023-04-26 17:08:46','assigned'),
(10,2,2,3,'2023-04-26 17:14:50','assigned'),
(11,2,2,3,'2023-04-26 17:15:01','assigned'),
(12,2,2,3,'2023-04-26 17:15:01','assigned'),
(13,58,4,4,'2023-05-03 18:17:20','accepted'),
(14,58,4,4,'2023-05-03 18:45:52','accepted'),
(15,58,4,5,'2023-05-05 00:13:08','accepted'),
(16,60,4,7,'2023-05-05 00:26:59','accepted');

/*Table structure for table `complaints` */

DROP TABLE IF EXISTS `complaints`;

CREATE TABLE `complaints` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `reply` varchar(500) DEFAULT NULL,
  `date_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `complaints` */

insert  into `complaints`(`complaint_id`,`client_id`,`desc`,`reply`,`date_time`) values 
(5,58,'Irrespective advocates ','pending','2023-05-05 00:03:57'),
(2,2,'jdjdjsn','okk','2023-05-05 00:01:31'),
(3,2,'jdjdjsn','Really sorry','2023-05-05 00:01:45'),
(4,58,'This app sometime give issues','okk','2023-05-03 19:05:53'),
(6,60,'this app is boring','pending','2023-05-05 00:28:20');

/*Table structure for table `hearing` */

DROP TABLE IF EXISTS `hearing`;

CREATE TABLE `hearing` (
  `hearing_id` int(11) NOT NULL AUTO_INCREMENT,
  `clerk_id` int(11) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `date_time` varchar(100) DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  `hearing_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`hearing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `hearing` */

insert  into `hearing`(`hearing_id`,`clerk_id`,`notes`,`date_time`,`case_id`,`hearing_date`) values 
(1,2,'court meeting on next week','2023-05-03 19:13:02',2,'2023-05-20'),
(2,2,'MAY 5 MEETING','2023-05-05 09:47:30',5,'2023-05-05');

/*Table structure for table `law_details` */

DROP TABLE IF EXISTS `law_details`;

CREATE TABLE `law_details` (
  `law_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `ipc_code` varchar(20) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `penalty` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`law_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `law_details` */

insert  into `law_details`(`law_id`,`title`,`ipc_code`,`description`,`penalty`) values 
(4,'Assault ','352','Assault is the intentional use of force against another person','20000'),
(3,'Theft ','378','Theft is the dishonest appropriation of property','10000'),
(5,'Rape ','375','Rape is the sexual intercourse or sexual penetration of a woman without her consent','500000'),
(6,'Cybercrime ','66D','Cybercrime refers to any criminal activity committed using a computer ','10524');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`logid`,`username`,`password`,`usertype`) values 
(1,'admin','admin','admin'),
(2,'anu','anu','user'),
(3,'adu','adu','user_pending'),
(4,'mm','mm','rejected'),
(7,'mebin','mebin','user_pending'),
(6,'liyaa','liyaa','advocate'),
(5,'liya','liya','clerk'),
(9,'appu','appu','advocate'),
(67,'gokul','gokul','clerk'),
(68,'gokul','gokul','adv_pending'),
(76,'ashik','ashik','clerk'),
(75,'amal','amal','clerk'),
(74,'arun','arun','user_pending'),
(73,'arun','arun','rejected'),
(72,'francis','francis','user'),
(71,'francis','francis','rejected'),
(70,'dev','dev','adv_pending'),
(69,'anil','anil','rejected'),
(66,'joju','joju','user');

/*Table structure for table `meeting` */

DROP TABLE IF EXISTS `meeting`;

CREATE TABLE `meeting` (
  `meeting_id` int(11) NOT NULL AUTO_INCREMENT,
  `adv_id` int(11) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`meeting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `meeting` */

insert  into `meeting`(`meeting_id`,`adv_id`,`time`,`date`,`status`,`client_id`) values 
(1,2,'12:12','2023-04-18','accepted',1),
(2,1,'05:05','2023-04-18','pending',2),
(3,1,'12:50','13/6/2023','pending',NULL),
(4,1,'12:50','13/5/2023','pending',NULL),
(5,1,'12:50','13/5/2023','pending',NULL),
(6,1,'11:25','12/05/2023','pending',NULL),
(7,1,'15:02','12/05/2023','pending',2),
(8,4,'10:00','4/05/23','rejected',58),
(9,4,'11:00','7/05/23','accepted',58),
(10,4,'7:00','03/05/23','accepted',58),
(11,4,'10','07/05/23','pending',60);

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `adv_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`pay_id`,`user_id`,`case_id`,`amount`,`date`,`adv_id`) values 
(1,1,1,'10000','2023-04-18',1),
(2,NULL,NULL,NULL,NULL,NULL),
(3,NULL,NULL,NULL,NULL,NULL),
(4,58,4,'20000','2023-05-03',4),
(5,58,4,'20000','2023-05-03',4),
(6,58,5,'20000','2023-05-05',4),
(7,60,7,'15000','2023-05-05',4);

/*Table structure for table `proposals` */

DROP TABLE IF EXISTS `proposals`;

CREATE TABLE `proposals` (
  `proposal_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) DEFAULT NULL,
  `adv_id` int(11) DEFAULT NULL,
  `fee` varchar(40) DEFAULT NULL,
  `date_time` varchar(40) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`proposal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `proposals` */

insert  into `proposals`(`proposal_id`,`case_id`,`adv_id`,`fee`,`date_time`,`status`) values 
(1,1,1,'100','1234567','pending'),
(2,1,2,'10000','2023-04-17 15:52:29','pending'),
(3,2,2,'12000','2023-04-26 12:36:31','accepted'),
(4,2,2,'12000','2023-04-26 12:36:39','accepted'),
(5,3,2,'10000','2023-04-26 12:37:42','accepted'),
(6,4,4,'20000','2023-05-03 17:59:47','accepted'),
(7,5,4,'20000','2023-05-05 00:10:35','accepted'),
(8,6,4,'30000','2023-05-05 00:10:49','pending'),
(9,7,4,'15000','2023-05-05 00:26:19','accepted');

/*Table structure for table `ratings` */

DROP TABLE IF EXISTS `ratings`;

CREATE TABLE `ratings` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `adv_id` int(11) DEFAULT NULL,
  `rate` varchar(30) DEFAULT NULL,
  `review` varchar(50) DEFAULT NULL,
  `date_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `ratings` */

insert  into `ratings`(`rating_id`,`client_id`,`adv_id`,`rate`,`review`,`date_time`) values 
(1,58,4,'3.5','He is good lawyer','2023-05-05 00:19:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
