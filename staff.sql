-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: staff
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `department_employee`
--

DROP TABLE IF EXISTS `department_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_department_employee_1_idx` (`employee_id`),
  KEY `fk_department_employee_2_idx` (`department_id`),
  CONSTRAINT `fk_department_employee_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_department_employee_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_employee`
--

LOCK TABLES `department_employee` WRITE;
/*!40000 ALTER TABLE `department_employee` DISABLE KEYS */;
INSERT INTO `department_employee` VALUES (1,9,1),(2,10,1),(3,11,1),(4,28,2),(5,29,2),(6,30,2),(7,31,2),(8,32,2),(9,33,2),(10,34,2),(11,35,2),(12,36,2),(13,37,2),(14,38,2),(15,39,2),(16,40,2),(17,41,2),(18,47,3),(19,48,3),(20,49,3),(21,50,3),(22,12,4),(23,13,4),(24,14,4),(25,15,4),(26,16,4),(27,17,4),(28,42,5),(29,43,5),(30,44,5),(31,45,5),(32,46,5),(33,18,6),(34,19,6),(35,20,6),(36,21,6),(37,22,6),(38,23,7),(39,24,7),(40,25,7),(41,26,7),(42,27,7),(43,1,8),(44,2,8),(45,3,8),(46,4,8),(47,5,8),(48,6,8),(49,7,8),(50,8,8);
/*!40000 ALTER TABLE `department_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Accounts'),(2,'Engineering'),(3,'Human Resources'),(4,'IT Support'),(5,'Legal'),(6,'Marketing'),(7,'Research'),(8,'Sales');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employee_view`
--

DROP TABLE IF EXISTS `employee_view`;
/*!50001 DROP VIEW IF EXISTS `employee_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `employee_view` AS SELECT 
 1 AS `id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `profile`,
 1 AS `department_name`,
 1 AS `department_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `profile` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Salina','Keithley','Lorem ipsum dolor sit amet, usu ut feugiat propriae vituperatoribus. No nec numquam appellantur, qui populo persius offendit eu, ne sed solum fugit. Te his feugiat omittantur, at eam noster voluptaria inciderint. At doming eirmod labitur usu, eam option vidisse diceret te. Etiam inimicus an vix, nostro maiestatis vix et. Vel ut quis error causae.'),(2,'Brianne','Farago','Nec ex augue labore, id possit omittam ullamcorper his. No vix ridens scaevola, ut laboramus argumentum vim. Ut singulis periculis scriptorem vix, volutpat ullamcorper sit te. Ex quod partem per. Eius deleniti at sit, regione phaedrum eu qui, at vocent pericula mea. Sale pertinacia ad vis, volumus omittam an mel, constituto mediocritatem sea ei.'),(3,'Denyse','Polich','Cum ei salutatus honestatis, enim minim eirmod mel ei. His nostro inermis persecuti eu. Est id cetero contentiones, ius et veri meis. Id ipsum definiebas nam, epicurei pertinax ad mea, vim reque placerat ut.'),(4,'Amada','Afanador','Fabellas euripidis pro no. Nam legere eloquentiam ei, mei quod fabulas pertinacia at. Duo no latine vidisse pericula, illud animal accusam mea no. Mazim sadipscing ad vis, pro et graeci intellegam. Id vim utinam docendi legendos, has in soleat suavitate. Mei ne unum omnium aliquam.'),(5,'Jason','Lamotte','Nec ex augue labore, id possit omittam ullamcorper his. No vix ridens scaevola, ut laboramus argumentum vim. Ut singulis periculis scriptorem vix, volutpat ullamcorper sit te. Ex quod partem per. Eius deleniti at sit, regione phaedrum eu qui, at vocent pericula mea. Sale pertinacia ad vis, volumus omittam an mel, constituto mediocritatem sea ei.'),(6,'Sara','Jefferson','Idque doming percipitur eu mei. Everti consequat ei ius. Ut mel alia eirmod eripuit, ex vel omnis voluptatibus, omittam mentitum maluisset et eum. An quo delenit legimus menandri, pri ad brute ubique noluisse. Cu mei quot interpretaris. Mel cu prima soluta.'),(7,'Aretha','Hagopian','Pro dicta sonet definitionem te. Et munere malorum nam, pri id cibo illud, ius no vituperata ullamcorper. Lorem scribentur liberavisse quo ei, elit consetetur id usu. Suas adipiscing an mel, ea per graecis postulant, ad modus dicit elaboraret usu. Sed eirmod iriure patrioque ei. Et prompta accusata aliquando sed, ferri summo iudicabit ut his.'),(8,'Molly','Angelos','Idque doming percipitur eu mei. Everti consequat ei ius. Ut mel alia eirmod eripuit, ex vel omnis voluptatibus, omittam mentitum maluisset et eum. An quo delenit legimus menandri, pri ad brute ubique noluisse. Cu mei quot interpretaris. Mel cu prima soluta.'),(9,'Meta','Thorpe','Ut per adhuc mentitum voluptatum, quas mollis inimicus ne cum. Nec at animal fabellas, at eum mutat hendrerit. Et vim petentium referrentur, tempor abhorreant sed no. Nulla quodsi nec ei. Et apeirian perfecto pri, ad nulla vituperata usu. Voluptua lucilius repudiandae ex nam, alia brute convenire nec eu.'),(10,'Vernetta','Pence','Vel at vidit dicit, legere persecuti vix ne. Cum movet scaevola ut, nemore equidem democritum quo te. An idque ubique facilis vix. Te veri oblique pertinax has.'),(11,'Gerry','Darville','Eu lorem postea eleifend usu. Elit inani dignissim cu pri. Te viderer eruditi forensibus eam, mel vidit mandamus te. Quis omnes consequuntur his ei, habeo exerci altera te mei, probo aperiri habemus et quo. Eius tritani dissentias ea pri, ex mundi instructior sed, eum eruditi meliore te. Iudicabit accommodare ea mei, te harum suscipit platonem sea.'),(12,'Jack','Joyce','Nec ex augue labore, id possit omittam ullamcorper his. No vix ridens scaevola, ut laboramus argumentum vim. Ut singulis periculis scriptorem vix, volutpat ullamcorper sit te. Ex quod partem per. Eius deleniti at sit, regione phaedrum eu qui, at vocent pericula mea. Sale pertinacia ad vis, volumus omittam an mel, constituto mediocritatem sea ei.'),(13,'Hermila','Buntin','Illum consetetur per ea. Vel an amet lorem, ex eos aperiri dissentiet liberavisse. Viris postea eu pri, nam falli officiis no. Cu duis definiebas ullamcorper mea. Ad duo feugait consulatu, et vim iudico lobortis. Ne civibus constituam scripserit has, ea affert doctus est. Harum everti facilisi vim id.'),(14,'Charlsie','Filice','Fabellas euripidis pro no. Nam legere eloquentiam ei, mei quod fabulas pertinacia at. Duo no latine vidisse pericula, illud animal accusam mea no. Mazim sadipscing ad vis, pro et graeci intellegam. Id vim utinam docendi legendos, has in soleat suavitate. Mei ne unum omnium aliquam.'),(15,'Vivienne','Chambless','No summo evertitur has. Ut simul scripserit usu. Cum id atomorum suscipiantur, vis eu tation aliquam officiis, nam ne solum singulis interpretaris. Has ne graeci dictas partiendo, has tation putant sanctus et, per ne melius qualisque. Mel vitae mandamus no, est an omnium accusam. In ferri atqui recusabo cum.'),(16,'Mauro','Noguera','Nec ex augue labore, id possit omittam ullamcorper his. No vix ridens scaevola, ut laboramus argumentum vim. Ut singulis periculis scriptorem vix, volutpat ullamcorper sit te. Ex quod partem per. Eius deleniti at sit, regione phaedrum eu qui, at vocent pericula mea. Sale pertinacia ad vis, volumus omittam an mel, constituto mediocritatem sea ei.'),(17,'Hyman','Gagne','Idque doming percipitur eu mei. Everti consequat ei ius. Ut mel alia eirmod eripuit, ex vel omnis voluptatibus, omittam mentitum maluisset et eum. An quo delenit legimus menandri, pri ad brute ubique noluisse. Cu mei quot interpretaris. Mel cu prima soluta.'),(18,'Melodee','Siemens','Vel at vidit dicit, legere persecuti vix ne. Cum movet scaevola ut, nemore equidem democritum quo te. An idque ubique facilis vix. Te veri oblique pertinax has.'),(19,'Santa','Partridge','Vix ad melius liberavisse disputationi. Ea his quod putent, vel ea verear adolescens. Has quod docendi deterruisset ne, sumo luptatum an cum, pri et accusata interesset. Aperiri fierent instructior ad his, mei eu ceteros mnesarchum. At mucius complectitur pro. Tamquam recteque voluptaria ut vel, ad his dolore audiam.'),(20,'Randal','Duffie','Vel at vidit dicit, legere persecuti vix ne. Cum movet scaevola ut, nemore equidem democritum quo te. An idque ubique facilis vix. Te veri oblique pertinax has.'),(21,'Alison','Veazey','Admodum ponderum sed ea, persecuti cotidieque ea vel. In sea placerat petentium aliquando, ullum appetere placerat an eos. Eos ad dicant oblique erroribus. Cu duis debet mea, idque mundi instructior in sea, te iriure dissentiunt sit.'),(22,'Elva','Korn','Vix ad melius liberavisse disputationi. Ea his quod putent, vel ea verear adolescens. Has quod docendi deterruisset ne, sumo luptatum an cum, pri et accusata interesset. Aperiri fierent instructior ad his, mei eu ceteros mnesarchum. At mucius complectitur pro. Tamquam recteque voluptaria ut vel, ad his dolore audiam.'),(23,'Faviola','Horrigan','Vel at vidit dicit, legere persecuti vix ne. Cum movet scaevola ut, nemore equidem democritum quo te. An idque ubique facilis vix. Te veri oblique pertinax has.'),(24,'Tynisha','Weinstock','Nisl choro utinam per ne, munere ridens oblique no pri. Inani atomorum reformidans mel ne, nec ne equidem philosophia. Eius movet audiam eos cu, vel te quot duis tritani. Id alterum copiosae vix. Mea in diceret minimum tacimates. Sea eu inani commune tractatos.'),(25,'Jessenia','Gribble','Fabellas euripidis pro no. Nam legere eloquentiam ei, mei quod fabulas pertinacia at. Duo no latine vidisse pericula, illud animal accusam mea no. Mazim sadipscing ad vis, pro et graeci intellegam. Id vim utinam docendi legendos, has in soleat suavitate. Mei ne unum omnium aliquam.'),(26,'Benton','Light','Has cu duis tibique probatus, his et aperiri phaedrum scriptorem, summo platonem ut mea. Eam ne nonumes eligendi. Libris minimum in pro, usu modo labitur diceret ad. No sed option ancillae, et periculis tincidunt ius.'),(27,'Piper','Mundo','Mea tota inani et, ad nam perfecto consulatu, pri semper fabulas officiis ut. Audiam admodum nominati eum eu, eam omnis debet suavitate ut, usu docendi recteque posidonium et. Te ius quaestio appellantur, nec in vide dicam scripta, has ex reque accumsan voluptatibus. Atqui explicari usu id. Ad nec quando dictas deleniti, nam amet utamur tincidunt ex, tale error nec id. Modus quidam veritus cu duo.'),(28,'Jenifer','Groth','Idque doming percipitur eu mei. Everti consequat ei ius. Ut mel alia eirmod eripuit, ex vel omnis voluptatibus, omittam mentitum maluisset et eum. An quo delenit legimus menandri, pri ad brute ubique noluisse. Cu mei quot interpretaris. Mel cu prima soluta.'),(29,'Dominga','Maharaj','Nec an soleat definitionem, usu lobortis conceptam et. Qualisque expetendis pri ex. Te mea solet epicuri convenire, etiam falli dicam eum no. Falli torquatos id has, duo id timeam persequeris. Pri ne laudem dissentias. Essent mollis pri et, ius elitr primis efficiantur ea.'),(30,'Rudolf','Alexander','Idque doming percipitur eu mei. Everti consequat ei ius. Ut mel alia eirmod eripuit, ex vel omnis voluptatibus, omittam mentitum maluisset et eum. An quo delenit legimus menandri, pri ad brute ubique noluisse. Cu mei quot interpretaris. Mel cu prima soluta.'),(31,'Ilene','Tyner','Atqui euripidis eos ad, in est meliore nominavi indoctum. Ignota quaeque fierent quo ei, ad ius audire habemus. Odio facer te mei, nec no eruditi petentium disputando. Et his probo quaeque splendide. Duo ad semper scripta commune, justo populo no mea, ei vero falli quo.'),(32,'Marvel','Overby','Vix ad melius liberavisse disputationi. Ea his quod putent, vel ea verear adolescens. Has quod docendi deterruisset ne, sumo luptatum an cum, pri et accusata interesset. Aperiri fierent instructior ad his, mei eu ceteros mnesarchum. At mucius complectitur pro. Tamquam recteque voluptaria ut vel, ad his dolore audiam.'),(33,'Shenita','Pouncey','Nisl choro utinam per ne, munere ridens oblique no pri. Inani atomorum reformidans mel ne, nec ne equidem philosophia. Eius movet audiam eos cu, vel te quot duis tritani. Id alterum copiosae vix. Mea in diceret minimum tacimates. Sea eu inani commune tractatos.'),(34,'Mikki','Laing','Has cu duis tibique probatus, his et aperiri phaedrum scriptorem, summo platonem ut mea. Eam ne nonumes eligendi. Libris minimum in pro, usu modo labitur diceret ad. No sed option ancillae, et periculis tincidunt ius.'),(35,'Josefa','Purcell','Has cu duis tibique probatus, his et aperiri phaedrum scriptorem, summo platonem ut mea. Eam ne nonumes eligendi. Libris minimum in pro, usu modo labitur diceret ad. No sed option ancillae, et periculis tincidunt ius.'),(36,'Gayle','Cash','Fabellas euripidis pro no. Nam legere eloquentiam ei, mei quod fabulas pertinacia at. Duo no latine vidisse pericula, illud animal accusam mea no. Mazim sadipscing ad vis, pro et graeci intellegam. Id vim utinam docendi legendos, has in soleat suavitate. Mei ne unum omnium aliquam.'),(37,'Mitzie','Cleek','Prompta labores no his. Vix tritani scaevola disputando et, vix dicat vulputate sadipscing ea. His mundi invidunt an, summo lucilius suavitate vis ut. Cu vidit munere repudiandae sea. Pro ad iusto graecis, ei vis epicuri intellegat.'),(38,'Walton','Andress','Nisl choro utinam per ne, munere ridens oblique no pri. Inani atomorum reformidans mel ne, nec ne equidem philosophia. Eius movet audiam eos cu, vel te quot duis tritani. Id alterum copiosae vix. Mea in diceret minimum tacimates. Sea eu inani commune tractatos.'),(39,'Cinthia','Rusher','Duo diam movet te, facer democritum ex ius. Dignissim consectetuer eam ne. No audire accusata lobortis duo, ei stet aeterno has, adhuc labores te sed. Mei in invenire efficiantur, prima malorum in eos, tale vero no pro. Suas corrumpit te pri, te cum tation mollis laoreet, at agam probatus sit. Case iusto euismod nam ex, vero nulla errem eu sea.'),(40,'Lois','Garner','Nisl choro utinam per ne, munere ridens oblique no pri. Inani atomorum reformidans mel ne, nec ne equidem philosophia. Eius movet audiam eos cu, vel te quot duis tritani. Id alterum copiosae vix. Mea in diceret minimum tacimates. Sea eu inani commune tractatos.'),(41,'Clay','Igoe','Nec ex augue labore, id possit omittam ullamcorper his. No vix ridens scaevola, ut laboramus argumentum vim. Ut singulis periculis scriptorem vix, volutpat ullamcorper sit te. Ex quod partem per. Eius deleniti at sit, regione phaedrum eu qui, at vocent pericula mea. Sale pertinacia ad vis, volumus omittam an mel, constituto mediocritatem sea ei.'),(42,'Dania','Corona','Nisl choro utinam per ne, munere ridens oblique no pri. Inani atomorum reformidans mel ne, nec ne equidem philosophia. Eius movet audiam eos cu, vel te quot duis tritani. Id alterum copiosae vix. Mea in diceret minimum tacimates. Sea eu inani commune tractatos.'),(43,'Magali','Six','Atqui euripidis eos ad, in est meliore nominavi indoctum. Ignota quaeque fierent quo ei, ad ius audire habemus. Odio facer te mei, nec no eruditi petentium disputando. Et his probo quaeque splendide. Duo ad semper scripta commune, justo populo no mea, ei vero falli quo.'),(44,'Milly','Caul','Nisl choro utinam per ne, munere ridens oblique no pri. Inani atomorum reformidans mel ne, nec ne equidem philosophia. Eius movet audiam eos cu, vel te quot duis tritani. Id alterum copiosae vix. Mea in diceret minimum tacimates. Sea eu inani commune tractatos.'),(45,'Shirl','Ludwig','Nec ex augue labore, id possit omittam ullamcorper his. No vix ridens scaevola, ut laboramus argumentum vim. Ut singulis periculis scriptorem vix, volutpat ullamcorper sit te. Ex quod partem per. Eius deleniti at sit, regione phaedrum eu qui, at vocent pericula mea. Sale pertinacia ad vis, volumus omittam an mel, constituto mediocritatem sea ei.'),(46,'Maude','Mcconville','Atqui euripidis eos ad, in est meliore nominavi indoctum. Ignota quaeque fierent quo ei, ad ius audire habemus. Odio facer te mei, nec no eruditi petentium disputando. Et his probo quaeque splendide. Duo ad semper scripta commune, justo populo no mea, ei vero falli quo.'),(47,'Jesenia','Cardello','Idque doming percipitur eu mei. Everti consequat ei ius. Ut mel alia eirmod eripuit, ex vel omnis voluptatibus, omittam mentitum maluisset et eum. An quo delenit legimus menandri, pri ad brute ubique noluisse. Cu mei quot interpretaris. Mel cu prima soluta.'),(48,'Myesha','Mulcahy','Nec ex augue labore, id possit omittam ullamcorper his. No vix ridens scaevola, ut laboramus argumentum vim. Ut singulis periculis scriptorem vix, volutpat ullamcorper sit te. Ex quod partem per. Eius deleniti at sit, regione phaedrum eu qui, at vocent pericula mea. Sale pertinacia ad vis, volumus omittam an mel, constituto mediocritatem sea ei.'),(49,'Tanner','Alling','Atqui euripidis eos ad, in est meliore nominavi indoctum. Ignota quaeque fierent quo ei, ad ius audire habemus. Odio facer te mei, nec no eruditi petentium disputando. Et his probo quaeque splendide. Duo ad semper scripta commune, justo populo no mea, ei vero falli quo.'),(50,'Kandice','Frenz','Nisl choro utinam per ne, munere ridens oblique no pri. Inani atomorum reformidans mel ne, nec ne equidem philosophia. Eius movet audiam eos cu, vel te quot duis tritani. Id alterum copiosae vix. Mea in diceret minimum tacimates. Sea eu inani commune tractatos.');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `employee_view`
--

/*!50001 DROP VIEW IF EXISTS `employee_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_view` AS select `a`.`id` AS `id`,`a`.`first_name` AS `first_name`,`a`.`last_name` AS `last_name`,`a`.`profile` AS `profile`,`d`.`name` AS `department_name`,`d`.`id` AS `department_id` from ((`employees` `a` join `department_employee` `de` on((`de`.`employee_id` = `a`.`id`))) join `departments` `d` on((`d`.`id` = `de`.`department_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-25 15:42:53
