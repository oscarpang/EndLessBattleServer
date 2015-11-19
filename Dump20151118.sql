-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: EndLessBattle
-- ------------------------------------------------------
-- Server version	5.6.27

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
-- Table structure for table `LoginInfo`
--

DROP TABLE IF EXISTS `LoginInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginInfo` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `userpasswordHash` int(10) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginInfo`
--

LOCK TABLES `LoginInfo` WRITE;
/*!40000 ALTER TABLE `LoginInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoginInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters` (
  `character` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) unsigned NOT NULL,
  `characterObject` blob NOT NULL,
  PRIMARY KEY (`character`),
  UNIQUE KEY `character_UNIQUE` (`character`),
  UNIQUE KEY `userID_UNIQUE` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature`
--

DROP TABLE IF EXISTS `creature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature` (
  `CreatureID` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `race` int(11) DEFAULT NULL,
  `basicHP` int(11) DEFAULT NULL,
  `basicMP` int(11) DEFAULT NULL,
  `physicalAttack` int(11) DEFAULT NULL,
  `physicalDefence` int(11) DEFAULT NULL,
  `magicAttack` int(11) DEFAULT NULL,
  `magicDefence` int(11) DEFAULT NULL,
  `dexterity` int(11) DEFAULT NULL,
  `luck` int(11) DEFAULT NULL,
  `criticalHit` double DEFAULT NULL,
  `exp` int(11) DEFAULT NULL,
  PRIMARY KEY (`CreatureID`),
  UNIQUE KEY `CreatureID_UNIQUE` (`CreatureID`),
  KEY `race_idx` (`race`),
  CONSTRAINT `race` FOREIGN KEY (`race`) REFERENCES `race` (`RaceID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature`
--

LOCK TABLES `creature` WRITE;
/*!40000 ALTER TABLE `creature` DISABLE KEYS */;
INSERT INTO `creature` VALUES (1,1,0,200,100,20,5,15,5,5,1,0.02,100),(2,2,0,204,101,20,5,15,5,5,1,0.0204,105),(3,3,0,208,102,21,5,15,5,5,1,0.020808000000000004,110),(4,4,0,212,103,21,5,15,5,5,1,0.021224160000000002,116),(5,5,0,216,104,22,5,16,5,5,1,0.0216486432,122),(6,6,0,221,105,22,5,16,5,5,1,0.022081616064,128),(7,7,0,225,106,23,5,16,5,5,1,0.02252324838528,134),(8,8,0,230,107,23,5,16,5,5,1,0.022973713352985602,141),(9,9,0,234,108,23,5,16,5,5,1,0.023433187620045315,148),(10,10,0,239,109,24,5,16,5,5,1,0.02390185137244622,155),(11,11,0,244,110,24,6,17,6,6,1,0.024379888399895147,163),(12,12,0,249,112,25,6,17,6,6,1,0.02486748616789305,171),(13,13,0,254,113,25,6,17,6,6,1,0.025364835891250912,180),(14,14,0,259,114,26,6,17,6,6,1,0.02587213260907593,189),(15,15,0,264,115,26,6,17,6,6,1,0.02638957526125745,198),(16,16,0,269,116,27,6,17,6,6,1,0.0269173667664826,208),(17,17,0,275,117,27,6,18,6,6,1,0.027455714101812252,218),(18,18,0,280,118,28,6,18,6,6,1,0.028004828383848497,229),(19,19,0,286,120,29,6,18,6,6,1,0.028564924951525468,241),(20,20,0,291,121,29,6,18,6,6,1,0.029136223450555977,253),(21,21,0,297,122,30,6,18,6,6,1,0.0297189479195671,265),(22,22,0,303,123,30,6,18,6,6,1,0.03031332687795844,279),(23,23,0,309,124,31,6,19,6,6,1,0.03091959341551761,293),(24,24,0,315,126,32,6,19,6,6,1,0.03153798528382796,307),(25,25,0,322,127,32,6,19,6,6,1,0.03216874498950452,323),(26,26,0,328,128,33,6,19,6,6,1,0.03281211988929461,339),(27,27,0,335,130,33,6,19,6,6,1,0.03346836228708051,356),(28,28,0,341,131,34,7,20,7,7,1,0.03413772953282212,373),(29,29,0,348,132,35,7,20,7,7,1,0.03482048412347856,392),(30,30,0,355,133,36,7,20,7,7,1,0.03551689380594813,412),(31,31,0,362,135,36,7,20,7,7,1,0.03622723168206709,432),(32,32,0,370,136,37,7,20,7,7,1,0.03695177631570843,454),(33,33,0,377,137,38,7,21,7,7,1,0.0376908118420226,476),(34,34,0,384,139,38,7,21,7,7,1,0.038444628078863056,500),(35,35,0,392,140,39,7,21,7,7,1,0.03921352064044032,525),(36,36,0,400,142,40,7,21,7,7,1,0.039997791053249125,552),(37,37,0,408,143,41,7,21,7,7,1,0.04079774687431411,579),(38,38,0,416,145,42,7,22,7,7,1,0.041613701811800394,608),(39,39,0,424,146,42,7,22,7,7,1,0.0424459758480364,639),(40,40,0,433,147,43,7,22,7,7,1,0.04329489536499713,670),(41,41,0,442,149,44,7,22,7,7,1,0.04416079327229707,704),(42,42,0,450,150,45,8,23,8,8,2,0.045044009137743014,739),(43,43,0,459,152,46,8,23,8,8,2,0.045944889320497874,776),(44,44,0,469,153,47,8,23,8,8,2,0.046863787106907834,815),(45,45,0,478,155,48,8,23,8,8,2,0.04780106284904599,856),(46,46,0,488,156,49,8,23,8,8,2,0.048757084106026916,899),(47,47,0,497,158,50,8,24,8,8,2,0.049732225788147455,943),(48,48,0,507,160,51,8,24,8,8,2,0.050726870303910404,991),(49,49,0,517,161,52,8,24,8,8,2,0.05174140770998861,1040),(50,50,0,528,163,53,8,24,8,8,2,0.052776235864188385,1092),(51,51,0,538,164,54,8,25,8,8,2,0.053831760581472154,1147),(52,52,0,549,166,55,8,25,8,8,2,0.0549083957931016,1204),(53,53,0,560,168,56,8,25,8,8,2,0.05600656370896363,1264),(54,54,0,571,169,57,8,25,8,8,2,0.057126694983142906,1327),(55,55,0,583,171,58,9,26,9,9,2,0.058269228882805765,1394),(56,56,0,594,173,59,9,26,9,9,2,0.05943461346046188,1464),(57,57,0,606,175,61,9,26,9,9,2,0.06062330572967112,1537),(58,58,0,618,176,62,9,26,9,9,2,0.06183577184426454,1614),(59,59,0,631,178,63,9,27,9,9,2,0.06307248728114984,1694),(60,60,0,643,180,64,9,27,9,9,2,0.06433393702677283,1779),(61,61,0,656,182,66,9,27,9,9,2,0.06562061576730828,1868),(62,62,0,669,183,67,9,28,9,9,2,0.06693302808265444,1961),(63,63,0,683,185,68,9,28,9,9,2,0.06827168864430753,2059),(64,64,0,696,187,70,9,28,9,9,2,0.06963712241719369,2162),(65,65,0,710,189,71,9,28,9,9,2,0.07102986486553757,2270),(66,66,0,725,191,72,10,29,10,10,2,0.07245046216284833,2384),(67,67,0,739,193,74,10,29,10,10,2,0.0738994714061053,2503),(68,68,0,754,195,75,10,29,10,10,2,0.0753774608342274,2628),(69,69,0,769,197,77,10,30,10,10,2,0.07688501005091196,2760),(70,70,0,784,199,78,10,30,10,10,2,0.0784227102519302,2898),(71,71,0,800,201,80,10,30,10,10,2,0.07999116445696881,3043),(72,72,0,816,203,82,10,30,10,10,2,0.08159098774610819,3195),(73,73,0,832,205,83,10,31,10,10,2,0.08322280750103035,3355),(74,74,0,849,207,85,10,31,10,10,2,0.08488726365105095,3522),(75,75,0,866,209,87,10,31,10,10,2,0.08658500892407198,3698),(76,76,0,883,211,88,11,32,11,11,2,0.08831670910255342,3883),(77,77,0,901,213,90,11,32,11,11,2,0.09008304328460448,4077),(78,78,0,919,215,92,11,32,11,11,2,0.09188470415029658,4281),(79,79,0,937,217,94,11,33,11,11,2,0.09372239823330251,4495),(80,80,0,956,219,96,11,33,11,11,2,0.09559684619796857,4720),(81,81,0,975,222,98,11,33,11,11,2,0.09750878312192794,4956),(82,82,0,995,224,99,11,34,11,11,2,0.0994589587843665,5204),(83,83,0,1014,226,101,11,34,11,11,2,0.10144813796005384,5464),(84,84,0,1035,228,103,11,34,11,11,2,0.10347710071925491,5737),(85,85,0,1055,231,106,12,35,12,12,2,0.10554664273364,6024),(86,86,0,1077,233,108,12,35,12,12,2,0.1076575755883128,6325),(87,87,0,1098,235,110,12,35,12,12,2,0.10981072710007907,6642),(88,88,0,1120,238,112,12,36,12,12,2,0.11200694164208065,6974),(89,89,0,1142,240,114,12,36,12,12,2,0.11424708047492227,7322),(90,90,0,1165,242,117,12,36,12,12,2,0.11653202208442072,7689),(91,91,0,1189,245,119,12,37,12,12,2,0.11886266252610914,8073),(92,92,0,1212,247,121,12,37,12,12,2,0.12123991577663132,8477),(93,93,0,1237,250,124,12,37,12,12,2,0.12366471409216395,8901),(94,94,0,1261,252,126,13,38,13,13,3,0.12613800837400724,9346),(95,95,0,1287,255,129,13,38,13,13,3,0.1286607685414874,9813),(96,96,0,1312,257,131,13,39,13,13,3,0.13123398391231714,10303),(97,97,0,1339,260,134,13,39,13,13,3,0.13385866359056348,10819),(98,98,0,1365,263,137,13,39,13,13,3,0.13653583686237475,11360),(99,99,0,1393,265,139,13,40,13,13,3,0.13926655359962226,11928),(100,100,0,1421,268,142,13,40,13,13,3,0.1420518846716147,12524),(101,1,1,100,200,15,3,20,15,6,2,0.01,100),(102,2,1,101,204,15,3,20,15,6,2,0.0101,105),(103,3,1,102,208,15,3,21,16,6,2,0.010201,110),(104,4,1,103,212,15,3,21,16,6,2,0.01030301,116),(105,5,1,104,216,16,3,22,16,6,2,0.0104060401,122),(106,6,1,105,221,16,3,22,17,6,2,0.010510100501,128),(107,7,1,106,225,16,3,23,17,6,2,0.01061520150601,134),(108,8,1,107,230,16,3,23,17,6,2,0.010721353521070101,141),(109,9,1,108,234,16,3,23,18,6,2,0.010828567056280802,148),(110,10,1,109,239,16,3,24,18,7,2,0.01093685272684361,155),(111,11,1,110,244,17,3,24,18,7,2,0.011046221254112046,163),(112,12,1,112,249,17,3,25,19,7,2,0.011156683466653166,171),(113,13,1,113,254,17,3,25,19,7,2,0.011268250301319699,180),(114,14,1,114,259,17,3,26,19,7,2,0.011380932804332895,189),(115,15,1,115,264,17,3,26,20,7,2,0.011494742132376225,198),(116,16,1,116,269,17,3,27,20,7,2,0.011609689553699988,208),(117,17,1,117,275,18,4,27,21,7,2,0.011725786449236988,218),(118,18,1,118,280,18,4,28,21,7,2,0.011843044313729357,229),(119,19,1,120,286,18,4,29,21,7,2,0.01196147475686665,241),(120,20,1,121,291,18,4,29,22,7,2,0.012081089504435318,253),(121,21,1,122,297,18,4,30,22,7,2,0.012201900399479671,265),(122,22,1,123,303,18,4,30,23,7,2,0.012323919403474468,279),(123,23,1,124,309,19,4,31,23,7,2,0.012447158597509214,293),(124,24,1,126,315,19,4,32,24,8,3,0.012571630183484306,307),(125,25,1,127,322,19,4,32,24,8,3,0.01269734648531915,323),(126,26,1,128,328,19,4,33,25,8,3,0.01282431995017234,339),(127,27,1,130,335,19,4,33,25,8,3,0.012952563149674065,356),(128,28,1,131,341,20,4,34,26,8,3,0.013082088781170806,373),(129,29,1,132,348,20,4,35,26,8,3,0.013212909668982514,392),(130,30,1,133,355,20,4,36,27,8,3,0.013345038765672338,412),(131,31,1,135,362,20,4,36,27,8,3,0.013478489153329061,432),(132,32,1,136,370,20,4,37,28,8,3,0.013613274044862352,454),(133,33,1,137,377,21,4,38,28,8,3,0.013749406785310975,476),(134,34,1,139,384,21,4,38,29,8,3,0.013886900853164085,500),(135,35,1,140,392,21,4,39,29,8,3,0.014025769861695726,525),(136,36,1,142,400,21,4,40,30,8,3,0.014166027560312683,552),(137,37,1,143,408,21,4,41,31,9,3,0.01430768783591581,579),(138,38,1,145,416,22,4,42,31,9,3,0.014450764714274969,608),(139,39,1,146,424,22,4,42,32,9,3,0.014595272361417718,639),(140,40,1,147,433,22,4,43,32,9,3,0.014741225085031895,670),(141,41,1,149,442,22,4,44,33,9,3,0.014888637335882214,704),(142,42,1,150,450,23,5,45,34,9,3,0.015037523709241036,739),(143,43,1,152,459,23,5,46,34,9,3,0.015187898946333447,776),(144,44,1,153,469,23,5,47,35,9,3,0.015339777935796783,815),(145,45,1,155,478,23,5,48,36,9,3,0.015493175715154751,856),(146,46,1,156,488,23,5,49,37,9,3,0.0156481074723063,899),(147,47,1,158,497,24,5,50,37,9,3,0.015804588547029364,943),(148,48,1,160,507,24,5,51,38,10,3,0.015962634432499657,991),(149,49,1,161,517,24,5,52,39,10,3,0.016122260776824653,1040),(150,50,1,163,528,24,5,53,40,10,3,0.0162834833845929,1092),(151,51,1,164,538,25,5,54,40,10,3,0.01644631821843883,1147),(152,52,1,166,549,25,5,55,41,10,3,0.01661078140062322,1204),(153,53,1,168,560,25,5,56,42,10,3,0.016776889214629453,1264),(154,54,1,169,571,25,5,57,43,10,3,0.016944658106775746,1327),(155,55,1,171,583,26,5,58,44,10,3,0.017114104687843502,1394),(156,56,1,173,594,26,5,59,45,10,3,0.017285245734721937,1464),(157,57,1,175,606,26,5,61,45,10,3,0.017458098192069157,1537),(158,58,1,176,618,26,5,62,46,11,4,0.01763267917398985,1614),(159,59,1,178,631,27,5,63,47,11,4,0.01780900596572975,1694),(160,60,1,180,643,27,5,64,48,11,4,0.017987096025387048,1779),(161,61,1,182,656,27,5,66,49,11,4,0.01816696698564092,1868),(162,62,1,183,669,28,6,67,50,11,4,0.018348636655497328,1961),(163,63,1,185,683,28,6,68,51,11,4,0.018532123022052302,2059),(164,64,1,187,696,28,6,70,52,11,4,0.018717444252272824,2162),(165,65,1,189,710,28,6,71,53,11,4,0.018904618694795552,2270),(166,66,1,191,725,29,6,72,54,11,4,0.019093664881743508,2384),(167,67,1,193,739,29,6,74,55,12,4,0.019284601530560944,2503),(168,68,1,195,754,29,6,75,57,12,4,0.019477447545866555,2628),(169,69,1,197,769,30,6,77,58,12,4,0.019672222021325222,2760),(170,70,1,199,784,30,6,78,59,12,4,0.019868944241538476,2898),(171,71,1,201,800,30,6,80,60,12,4,0.02006763368395386,3043),(172,72,1,203,816,30,6,82,61,12,4,0.0202683100207934,3195),(173,73,1,205,832,31,6,83,62,12,4,0.020470993121001334,3355),(174,74,1,207,849,31,6,85,64,12,4,0.020675703052211346,3522),(175,75,1,209,866,31,6,87,65,13,4,0.02088246008273346,3698),(176,76,1,211,883,32,6,88,66,13,4,0.021091284683560797,3883),(177,77,1,213,901,32,6,90,68,13,4,0.021302197530396406,4077),(178,78,1,215,919,32,6,92,69,13,4,0.02151521950570037,4281),(179,79,1,217,937,33,7,94,70,13,4,0.021730371700757374,4495),(180,80,1,219,956,33,7,96,72,13,4,0.021947675417764947,4720),(181,81,1,222,975,33,7,98,73,13,4,0.022167152171942598,4956),(182,82,1,224,995,34,7,99,75,13,4,0.022388823693662026,5204),(183,83,1,226,1014,34,7,101,76,14,5,0.022612711930598647,5464),(184,84,1,228,1035,34,7,103,78,14,5,0.022838839049904636,5737),(185,85,1,231,1055,35,7,106,79,14,5,0.02306722744040368,6024),(186,86,1,233,1077,35,7,108,81,14,5,0.023297899714807717,6325),(187,87,1,235,1098,35,7,110,82,14,5,0.023530878711955795,6642),(188,88,1,238,1120,36,7,112,84,14,5,0.02376618749907535,6974),(189,89,1,240,1142,36,7,114,86,14,5,0.024003849374066105,7322),(190,90,1,242,1165,36,7,117,87,15,5,0.024243887867806766,7689),(191,91,1,245,1189,37,7,119,89,15,5,0.024486326746484835,8073),(192,92,1,247,1212,37,7,121,91,15,5,0.024731190013949685,8477),(193,93,1,250,1237,37,7,124,93,15,5,0.024978501914089183,8901),(194,94,1,252,1261,38,8,126,95,15,5,0.025228286933230076,9346),(195,95,1,255,1287,38,8,129,96,15,5,0.025480569802562376,9813),(196,96,1,257,1312,39,8,131,98,15,5,0.025735375500588,10303),(197,97,1,260,1339,39,8,134,100,16,5,0.02599272925559388,10819),(198,98,1,263,1365,39,8,137,102,16,5,0.026252656548149816,11360),(199,99,1,265,1393,40,8,139,104,16,5,0.026515183113631314,11928),(200,100,1,268,1421,40,8,142,107,16,5,0.026780334944767628,12524),(201,1,2,300,50,25,3,3,3,10,5,0.03,100),(202,2,2,315,51,26,3,3,3,10,5,0.0306,105),(203,3,2,331,51,27,3,3,3,10,5,0.031212,110),(204,4,2,347,52,27,3,3,3,11,5,0.03183624,116),(205,5,2,365,52,28,3,3,3,11,5,0.032472964800000004,122),(206,6,2,383,53,29,3,3,3,11,5,0.033122424096000004,128),(207,7,2,402,53,30,3,3,3,11,5,0.033784872577920004,134),(208,8,2,422,54,31,3,3,3,11,5,0.0344605700294784,141),(209,9,2,443,54,32,3,3,3,12,5,0.03514978143006797,148),(210,10,2,465,55,33,3,3,3,12,5,0.035852777058669336,155),(211,11,2,489,55,34,3,3,3,12,6,0.03656983259984272,163),(212,12,2,513,56,35,3,3,3,12,6,0.037301229251839575,171),(213,13,2,539,56,36,3,3,3,13,6,0.03804725383687637,180),(214,14,2,566,57,37,3,3,3,13,6,0.038808198913613895,189),(215,15,2,594,57,38,3,3,3,13,6,0.039584362891886174,198),(216,16,2,624,58,39,3,3,3,13,6,0.0403760501497239,208),(217,17,2,655,59,40,4,4,4,14,6,0.041183571152718375,218),(218,18,2,688,59,41,4,4,4,14,6,0.04200724257577274,229),(219,19,2,722,60,43,4,4,4,14,6,0.0428473874272882,241),(220,20,2,758,60,44,4,4,4,15,6,0.04370433517583396,253),(221,21,2,796,61,45,4,4,4,15,6,0.04457842187935064,265),(222,22,2,836,62,47,4,4,4,15,6,0.04546999031693765,279),(223,23,2,878,62,48,4,4,4,15,6,0.0463793901232764,293),(224,24,2,921,63,49,4,4,4,16,6,0.047306977925741935,307),(225,25,2,968,63,51,4,4,4,16,6,0.04825311748425677,323),(226,26,2,1016,64,52,4,4,4,16,6,0.04921817983394191,339),(227,27,2,1067,65,54,4,4,4,17,6,0.05020254343062075,356),(228,28,2,1120,65,56,4,4,4,17,7,0.05120659429923317,373),(229,29,2,1176,66,57,4,4,4,17,7,0.05223072618521783,392),(230,30,2,1235,67,59,4,4,4,18,7,0.05327534070892219,412),(231,31,2,1297,67,61,4,4,4,18,7,0.05434084752310064,432),(232,32,2,1361,68,63,4,4,4,18,7,0.05542766447356265,454),(233,33,2,1429,69,64,4,4,4,19,7,0.0565362177630339,476),(234,34,2,1501,69,66,4,4,4,19,7,0.05766694211829458,500),(235,35,2,1576,70,68,4,4,4,20,7,0.05882028096066048,525),(236,36,2,1655,71,70,4,4,4,20,7,0.05999668657987369,552),(237,37,2,1738,72,72,4,4,4,20,7,0.06119662031147117,579),(238,38,2,1824,72,75,4,4,4,21,7,0.06242055271770059,608),(239,39,2,1916,73,77,4,4,4,21,7,0.06366896377205461,639),(240,40,2,2011,74,79,4,4,4,22,7,0.0649423430474957,670),(241,41,2,2112,74,82,4,4,4,22,7,0.06624118990844562,704),(242,42,2,2218,75,84,5,5,5,23,8,0.06756601370661452,739),(243,43,2,2328,76,87,5,5,5,23,8,0.06891733398074681,776),(244,44,2,2445,77,89,5,5,5,23,8,0.07029568066036175,815),(245,45,2,2567,77,92,5,5,5,24,8,0.07170159427356898,856),(246,46,2,2696,78,95,5,5,5,24,8,0.07313562615904036,899),(247,47,2,2830,79,97,5,5,5,25,8,0.07459833868222117,943),(248,48,2,2972,80,100,5,5,5,25,8,0.07609030545586559,991),(249,49,2,3120,81,103,5,5,5,26,8,0.0776121115649829,1040),(250,50,2,3276,81,106,5,5,5,26,8,0.07916435379628256,1092),(251,51,2,3440,82,110,5,5,5,27,8,0.08074764087220822,1147),(252,52,2,3612,83,113,5,5,5,27,8,0.08236259368965239,1204),(253,53,2,3793,84,116,5,5,5,28,8,0.08400984556344544,1264),(254,54,2,3982,85,120,5,5,5,29,8,0.08569004247471436,1327),(255,55,2,4182,86,123,5,5,5,29,9,0.08740384332420864,1394),(256,56,2,4391,86,127,5,5,5,30,9,0.08915192019069282,1464),(257,57,2,4610,87,131,5,5,5,30,9,0.09093495859450668,1537),(258,58,2,4841,88,135,5,5,5,31,9,0.09275365776639681,1614),(259,59,2,5083,89,139,5,5,5,32,9,0.09460873092172475,1694),(260,60,2,5337,90,143,5,5,5,32,9,0.09650090554015925,1779),(261,61,2,5604,91,147,5,5,5,33,9,0.09843092365096244,1868),(262,62,2,5884,92,152,6,6,6,33,9,0.1003995421239817,1961),(263,63,2,6178,93,156,6,6,6,34,9,0.10240753296646132,2059),(264,64,2,6487,94,161,6,6,6,35,9,0.10445568362579055,2162),(265,65,2,6811,95,166,6,6,6,36,9,0.10654479729830636,2270),(266,66,2,7152,95,171,6,6,6,36,10,0.1086756932442725,2384),(267,67,2,7510,96,176,6,6,6,37,10,0.11084920710915795,2503),(268,68,2,7885,97,181,6,6,6,38,10,0.11306619125134111,2628),(269,69,2,8279,98,187,6,6,6,38,10,0.11532751507636793,2760),(270,70,2,8693,99,192,6,6,6,39,10,0.1176340653778953,2898),(271,71,2,9128,100,198,6,6,6,40,10,0.1199867466854532,3043),(272,72,2,9584,101,204,6,6,6,41,10,0.12238648161916227,3195),(273,73,2,10064,102,210,6,6,6,42,10,0.12483421125154552,3355),(274,74,2,10567,103,216,6,6,6,42,10,0.12733089547657644,3522),(275,75,2,11095,104,223,6,6,6,43,10,0.12987751338610798,3698),(276,76,2,11650,105,229,6,6,6,44,11,0.13247506365383013,3883),(277,77,2,12232,107,236,6,6,6,45,11,0.13512456492690675,4077),(278,78,2,12844,108,243,6,6,6,46,11,0.1378270562254449,4281),(279,79,2,13486,109,251,7,7,7,47,11,0.1405835973499538,4495),(280,80,2,14160,110,258,7,7,7,48,11,0.14339526929695287,4720),(281,81,2,14868,111,266,7,7,7,49,11,0.14626317468289193,4956),(282,82,2,15612,112,274,7,7,7,50,11,0.14918843817654978,5204),(283,83,2,16392,113,282,7,7,7,51,11,0.15217220694008077,5464),(284,84,2,17212,114,291,7,7,7,52,11,0.15521565107888238,5737),(285,85,2,18073,115,299,7,7,7,53,12,0.15831996410046004,6024),(286,86,2,18976,116,308,7,7,7,54,12,0.16148636338246924,6325),(287,87,2,19925,118,318,7,7,7,55,12,0.16471609065011864,6642),(288,88,2,20921,119,327,7,7,7,56,12,0.168010412463121,6974),(289,89,2,21967,120,337,7,7,7,57,12,0.17137062071238343,7322),(290,90,2,23066,121,347,7,7,7,58,12,0.1747980331266311,7689),(291,91,2,24219,122,358,7,7,7,59,12,0.17829399378916375,8073),(292,92,2,25430,124,368,7,7,7,61,12,0.18185987366494702,8477),(293,93,2,26702,125,379,7,7,7,62,12,0.18549707113824596,8901),(294,94,2,28037,126,391,8,8,8,63,13,0.18920701256101088,9346),(295,95,2,29438,127,402,8,8,8,64,13,0.19299115281223111,9813),(296,96,2,30910,129,414,8,8,8,66,13,0.19685097586847575,10303),(297,97,2,32456,130,427,8,8,8,67,13,0.20078799538584527,10819),(298,98,2,34079,131,440,8,8,8,68,13,0.20480375529356218,11360),(299,99,2,35783,133,453,8,8,8,70,13,0.20889983039943344,11928),(300,100,2,37572,134,466,8,8,8,71,13,0.21307782700742212,12524),(301,1,3,350,0,30,3,0,0,2,1,0.01,100),(302,2,3,368,0,31,3,0,0,2,1,0.0101,105),(303,3,3,386,0,32,3,0,0,2,1,0.010201,110),(304,4,3,405,0,34,3,0,0,2,1,0.01030301,116),(305,5,3,425,0,35,3,0,0,2,1,0.0104060401,122),(306,6,3,447,0,36,3,0,0,2,1,0.010510100501,128),(307,7,3,469,0,38,3,0,0,2,1,0.01061520150601,134),(308,8,3,492,0,39,3,0,0,2,1,0.010721353521070101,141),(309,9,3,517,0,41,3,0,0,2,1,0.010828567056280802,148),(310,10,3,543,0,43,3,0,0,2,1,0.01093685272684361,155),(311,11,3,570,0,44,3,0,0,2,1,0.011046221254112046,163),(312,12,3,599,0,46,3,0,0,2,1,0.011156683466653166,171),(313,13,3,629,0,48,3,0,0,2,1,0.011268250301319699,180),(314,14,3,660,0,50,3,0,0,2,1,0.011380932804332895,189),(315,15,3,693,0,52,3,0,0,2,1,0.011494742132376225,198),(316,16,3,728,0,54,3,0,0,2,1,0.011609689553699988,208),(317,17,3,764,0,56,4,0,0,2,1,0.011725786449236988,218),(318,18,3,802,0,58,4,0,0,2,1,0.011843044313729357,229),(319,19,3,842,0,61,4,0,0,2,1,0.01196147475686665,241),(320,20,3,884,0,63,4,0,0,2,1,0.012081089504435318,253),(321,21,3,929,0,66,4,0,0,2,1,0.012201900399479671,265),(322,22,3,975,0,68,4,0,0,2,1,0.012323919403474468,279),(323,23,3,1024,0,71,4,0,0,2,1,0.012447158597509214,293),(324,24,3,1075,0,74,4,0,0,3,1,0.012571630183484306,307),(325,25,3,1129,0,77,4,0,0,3,1,0.01269734648531915,323),(326,26,3,1185,0,80,4,0,0,3,1,0.01282431995017234,339),(327,27,3,1244,0,83,4,0,0,3,1,0.012952563149674065,356),(328,28,3,1307,0,87,4,0,0,3,1,0.013082088781170806,373),(329,29,3,1372,0,90,4,0,0,3,1,0.013212909668982514,392),(330,30,3,1441,0,94,4,0,0,3,1,0.013345038765672338,412),(331,31,3,1513,0,97,4,0,0,3,1,0.013478489153329061,432),(332,32,3,1588,0,101,4,0,0,3,1,0.013613274044862352,454),(333,33,3,1668,0,105,4,0,0,3,1,0.013749406785310975,476),(334,34,3,1751,0,109,4,0,0,3,1,0.013886900853164085,500),(335,35,3,1839,0,114,4,0,0,3,1,0.014025769861695726,525),(336,36,3,1931,0,118,4,0,0,3,1,0.014166027560312683,552),(337,37,3,2027,0,123,4,0,0,3,1,0.01430768783591581,579),(338,38,3,2128,0,128,4,0,0,3,1,0.014450764714274969,608),(339,39,3,2235,0,133,4,0,0,3,1,0.014595272361417718,639),(340,40,3,2347,0,138,4,0,0,3,1,0.014741225085031895,670),(341,41,3,2464,0,144,4,0,0,3,1,0.014888637335882214,704),(342,42,3,2587,0,150,5,0,0,3,2,0.015037523709241036,739),(343,43,3,2717,0,156,5,0,0,3,2,0.015187898946333447,776),(344,44,3,2852,0,162,5,0,0,3,2,0.015339777935796783,815),(345,45,3,2995,0,168,5,0,0,3,2,0.015493175715154751,856),(346,46,3,3145,0,175,5,0,0,3,2,0.0156481074723063,899),(347,47,3,3302,0,182,5,0,0,3,2,0.015804588547029364,943),(348,48,3,3467,0,190,5,0,0,3,2,0.015962634432499657,991),(349,49,3,3640,0,197,5,0,0,3,2,0.016122260776824653,1040),(350,50,3,3822,0,205,5,0,0,3,2,0.0162834833845929,1092),(351,51,3,4014,0,213,5,0,0,3,2,0.01644631821843883,1147),(352,52,3,4214,0,222,5,0,0,3,2,0.01661078140062322,1204),(353,53,3,4425,0,231,5,0,0,3,2,0.016776889214629453,1264),(354,54,3,4646,0,240,5,0,0,3,2,0.016944658106775746,1327),(355,55,3,4879,0,249,5,0,0,3,2,0.017114104687843502,1394),(356,56,3,5122,0,259,5,0,0,3,2,0.017285245734721937,1464),(357,57,3,5379,0,270,5,0,0,3,2,0.017458098192069157,1537),(358,58,3,5648,0,281,5,0,0,4,2,0.01763267917398985,1614),(359,59,3,5930,0,292,5,0,0,4,2,0.01780900596572975,1694),(360,60,3,6226,0,303,5,0,0,4,2,0.017987096025387048,1779),(361,61,3,6538,0,316,5,0,0,4,2,0.01816696698564092,1868),(362,62,3,6865,0,328,6,0,0,4,2,0.018348636655497328,1961),(363,63,3,7208,0,341,6,0,0,4,2,0.018532123022052302,2059),(364,64,3,7568,0,355,6,0,0,4,2,0.018717444252272824,2162),(365,65,3,7947,0,369,6,0,0,4,2,0.018904618694795552,2270),(366,66,3,8344,0,384,6,0,0,4,2,0.019093664881743508,2384),(367,67,3,8761,0,399,6,0,0,4,2,0.019284601530560944,2503),(368,68,3,9199,0,415,6,0,0,4,2,0.019477447545866555,2628),(369,69,3,9659,0,432,6,0,0,4,2,0.019672222021325222,2760),(370,70,3,10142,0,449,6,0,0,4,2,0.019868944241538476,2898),(371,71,3,10649,0,467,6,0,0,4,2,0.02006763368395386,3043),(372,72,3,11182,0,486,6,0,0,4,2,0.0202683100207934,3195),(373,73,3,11741,0,505,6,0,0,4,2,0.020470993121001334,3355),(374,74,3,12328,0,525,6,0,0,4,2,0.020675703052211346,3522),(375,75,3,12944,0,546,6,0,0,4,2,0.02088246008273346,3698),(376,76,3,13591,0,568,6,0,0,4,2,0.021091284683560797,3883),(377,77,3,14271,0,591,6,0,0,4,2,0.021302197530396406,4077),(378,78,3,14985,0,615,6,0,0,4,2,0.02151521950570037,4281),(379,79,3,15734,0,639,7,0,0,4,2,0.021730371700757374,4495),(380,80,3,16520,0,665,7,0,0,4,2,0.021947675417764947,4720),(381,81,3,17347,0,691,7,0,0,4,2,0.022167152171942598,4956),(382,82,3,18214,0,719,7,0,0,4,2,0.022388823693662026,5204),(383,83,3,19125,0,748,7,0,0,5,2,0.022612711930598647,5464),(384,84,3,20081,0,778,7,0,0,5,2,0.022838839049904636,5737),(385,85,3,21085,0,809,7,0,0,5,2,0.02306722744040368,6024),(386,86,3,22139,0,841,7,0,0,5,2,0.023297899714807717,6325),(387,87,3,23246,0,875,7,0,0,5,2,0.023530878711955795,6642),(388,88,3,24408,0,910,7,0,0,5,2,0.02376618749907535,6974),(389,89,3,25629,0,946,7,0,0,5,2,0.024003849374066105,7322),(390,90,3,26910,0,984,7,0,0,5,2,0.024243887867806766,7689),(391,91,3,28256,0,1024,7,0,0,5,2,0.024486326746484835,8073),(392,92,3,29668,0,1065,7,0,0,5,2,0.024731190013949685,8477),(393,93,3,31152,0,1107,7,0,0,5,2,0.024978501914089183,8901),(394,94,3,32709,0,1151,8,0,0,5,3,0.025228286933230076,9346),(395,95,3,34345,0,1197,8,0,0,5,3,0.025480569802562376,9813),(396,96,3,36062,0,1245,8,0,0,5,3,0.025735375500588,10303),(397,97,3,37865,0,1295,8,0,0,5,3,0.02599272925559388,10819),(398,98,3,39759,0,1347,8,0,0,5,3,0.026252656548149816,11360),(399,99,3,41746,0,1401,8,0,0,5,3,0.026515183113631314,11928),(400,100,3,43834,0,1457,8,0,0,5,3,0.026780334944767628,12524),(401,1,4,50,50,5,5,5,5,20,10,0.05,100),(402,2,4,53,53,5,5,5,5,20,10,0.052500000000000005,105),(403,3,4,56,56,6,6,6,6,21,10,0.05512500000000001,110),(404,4,4,60,60,6,6,6,6,21,11,0.05788125000000001,116),(405,5,4,63,63,6,6,6,6,22,11,0.06077531250000001,122),(406,6,4,67,67,6,6,6,6,22,11,0.06381407812500002,128),(407,7,4,71,71,7,7,7,7,23,11,0.06700478203125003,134),(408,8,4,75,75,7,7,7,7,23,11,0.07035502113281253,141),(409,9,4,80,80,7,7,7,7,23,12,0.07387277218945316,148),(410,10,4,84,84,8,8,8,8,24,12,0.07756641079892583,155),(411,11,4,90,90,8,8,8,8,24,12,0.08144473133887213,163),(412,12,4,95,95,9,9,9,9,25,12,0.08551696790581574,171),(413,13,4,101,101,9,9,9,9,25,13,0.08979281630110653,180),(414,14,4,107,107,9,9,9,9,26,13,0.09428245711616186,189),(415,15,4,113,113,10,10,10,10,26,13,0.09899657997196995,198),(416,16,4,120,120,10,10,10,10,27,13,0.10394640897056845,208),(417,17,4,127,127,11,11,11,11,27,14,0.10914372941909688,218),(418,18,4,135,135,11,11,11,11,28,14,0.11460091589005172,229),(419,19,4,143,143,12,12,12,12,29,14,0.12033096168455432,241),(420,20,4,151,151,13,13,13,13,29,15,0.12634750976878203,253),(421,21,4,160,160,13,13,13,13,30,15,0.13266488525722114,265),(422,22,4,170,170,14,14,14,14,30,15,0.13929812952008222,279),(423,23,4,180,180,15,15,15,15,31,15,0.14626303599608634,293),(424,24,4,191,191,15,15,15,15,32,16,0.15357618779589066,307),(425,25,4,202,202,16,16,16,16,32,16,0.1612549971856852,323),(426,26,4,215,215,17,17,17,17,33,16,0.16931774704496946,339),(427,27,4,227,227,18,18,18,18,33,17,0.17778363439721795,356),(428,28,4,241,241,19,19,19,19,34,17,0.18667281611707887,373),(429,29,4,256,256,20,20,20,20,35,17,0.1960064569229328,392),(430,30,4,271,271,21,21,21,21,36,18,0.20580677976907946,412),(431,31,4,287,287,22,22,22,22,36,18,0.21609711875753346,432),(432,32,4,304,304,23,23,23,23,37,18,0.22690197469541015,454),(433,33,4,323,323,24,24,24,24,38,19,0.23824707343018067,476),(434,34,4,342,342,25,25,25,25,38,19,0.2501594271016897,500),(435,35,4,363,363,26,26,26,26,39,20,0.2626673984567742,525),(436,36,4,384,384,28,28,28,28,40,20,0.2758007683796129,552),(437,37,4,407,407,29,29,29,29,41,20,0.28959080679859356,579),(438,38,4,432,432,30,30,30,30,42,21,0.30407034713852327,608),(439,39,4,458,458,32,32,32,32,42,21,0.3192738644954494,639),(440,40,4,485,485,34,34,34,34,43,22,0.3352375577202219,670),(441,41,4,514,514,35,35,35,35,44,22,0.35199943560623304,704),(442,42,4,545,545,37,37,37,37,45,23,0.3695994073865447,739),(443,43,4,578,578,39,39,39,39,46,23,0.3880793777558719,776),(444,44,4,613,613,41,41,41,41,47,23,0.40748334664366553,815),(445,45,4,649,649,43,43,43,43,48,24,0.4278575139758488,856),(446,46,4,688,688,45,45,45,45,49,24,0.44925038967464126,899),(447,47,4,730,730,47,47,47,47,50,25,0.47171290915837333,943),(448,48,4,773,773,50,50,50,50,51,25,0.495298554616292,991),(449,49,4,820,820,52,52,52,52,52,26,0.5200634823471066,1040),(450,50,4,869,869,55,55,55,55,53,26,0.546066656464462,1092),(451,51,4,921,921,57,57,57,57,54,27,0.5733699892876851,1147),(452,52,4,976,976,60,60,60,60,55,27,0.6020384887520694,1204),(453,53,4,1035,1035,63,63,63,63,56,28,0.632140413189673,1264),(454,54,4,1097,1097,66,66,66,66,57,29,0.6637474338491567,1327),(455,55,4,1163,1163,70,70,70,70,58,29,0.6969348055416146,1394),(456,56,4,1233,1233,73,73,73,73,59,30,0.7317815458186954,1464),(457,57,4,1306,1306,77,77,77,77,61,30,0.7683706231096301,1537),(458,58,4,1385,1385,81,81,81,81,62,31,0.8067891542651117,1614),(459,59,4,1468,1468,85,85,85,85,63,32,0.8471286119783673,1694),(460,60,4,1556,1556,89,89,89,89,64,32,0.8894850425772857,1779),(461,61,4,1649,1649,93,93,93,93,66,33,0.93395929470615,1868),(462,62,4,1748,1748,98,98,98,98,67,33,0.9806572594414575,1961),(463,63,4,1853,1853,103,103,103,103,68,34,1.0296901224135304,2059),(464,64,4,1964,1964,108,108,108,108,70,35,1.081174628534207,2162),(465,65,4,2082,2082,114,114,114,114,71,36,1.1352333599609175,2270),(466,66,4,2207,2207,119,119,119,119,72,36,1.1919950279589633,2384),(467,67,4,2340,2340,125,125,125,125,74,37,1.2515947793569115,2503),(468,68,4,2480,2480,131,131,131,131,75,38,1.3141745183247573,2628),(469,69,4,2629,2629,138,138,138,138,77,38,1.3798832442409952,2760),(470,70,4,2787,2787,145,145,145,145,78,39,1.448877406453045,2898),(471,71,4,2954,2954,152,152,152,152,80,40,1.5213212767756972,3043),(472,72,4,3131,3131,160,160,160,160,82,41,1.597387340614482,3195),(473,73,4,3319,3319,168,168,168,168,83,42,1.6772567076452063,3355),(474,74,4,3518,3518,176,176,176,176,85,42,1.7611195430274666,3522),(475,75,4,3729,3729,185,185,185,185,87,43,1.84917552017884,3698),(476,76,4,3953,3953,194,194,194,194,88,44,1.9416342961877822,3883),(477,77,4,4190,4190,204,204,204,204,90,45,2.038716010997171,4077),(478,78,4,4441,4441,214,214,214,214,92,46,2.1406518115470297,4281),(479,79,4,4708,4708,225,225,225,225,94,47,2.2476844021243814,4495),(480,80,4,4990,4990,236,236,236,236,96,48,2.3600686222306004,4720),(481,81,4,5290,5290,248,248,248,248,98,49,2.4780720533421308,4956),(482,82,4,5607,5607,260,260,260,260,99,50,2.6019756560092375,5204),(483,83,4,5944,5944,273,273,273,273,101,51,2.7320744388096996,5464),(484,84,4,6300,6300,287,287,287,287,103,52,2.868678160750185,5737),(485,85,4,6678,6678,301,301,301,301,106,53,3.0121120687876943,6024),(486,86,4,7079,7079,316,316,316,316,108,54,3.162717672227079,6325),(487,87,4,7504,7504,332,332,332,332,110,55,3.320853555838433,6642),(488,88,4,7954,7954,349,349,349,349,112,56,3.486896233630355,6974),(489,89,4,8431,8431,366,366,366,366,114,57,3.661241045311873,7322),(490,90,4,8937,8937,384,384,384,384,117,58,3.8443030975774666,7689),(491,91,4,9473,9473,404,404,404,404,119,59,4.03651825245634,8073),(492,92,4,10042,10042,424,424,424,424,121,61,4.238344165079157,8477),(493,93,4,10644,10644,445,445,445,445,124,62,4.450261373333115,8901),(494,94,4,11283,11283,467,467,467,467,126,63,4.6727744419997705,9346),(495,95,4,11960,11960,491,491,491,491,129,64,4.906413164099759,9813),(496,96,4,12677,12677,515,515,515,515,131,66,5.151733822304747,10303),(497,97,4,13438,13438,541,541,541,541,134,67,5.409320513419985,10819),(498,98,4,14244,14244,568,568,568,568,137,68,5.679786539090984,11360),(499,99,4,15099,15099,596,596,596,596,139,70,5.963775866045534,11928),(500,100,4,16005,16005,626,626,626,626,142,71,6.261964659347811,12524);
/*!40000 ALTER TABLE `creature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment` (
  `equipmentID` int(11) NOT NULL,
  `typeID` int(11) DEFAULT NULL,
  `rankID` int(11) DEFAULT NULL,
  `MinHP` int(11) DEFAULT NULL,
  `MaxHP` int(11) DEFAULT NULL,
  `MinMP` int(11) DEFAULT NULL,
  `MaxMP` int(11) DEFAULT NULL,
  `MinPhysicalAttack` int(11) DEFAULT NULL,
  `MaxPhysicallAttack` int(11) DEFAULT NULL,
  `MinPhysicalDefence` int(11) DEFAULT NULL,
  `MaxPhysicalDefence` int(11) DEFAULT NULL,
  `MinMagicAttack` int(11) DEFAULT NULL,
  `MaxMagicAttack` int(11) DEFAULT NULL,
  `MinMagicDefence` int(11) DEFAULT NULL,
  `MaxMagicDefence` int(11) DEFAULT NULL,
  `MinDexterity` int(11) DEFAULT NULL,
  `MaxDexterity` int(11) DEFAULT NULL,
  `MinLuck` int(11) DEFAULT NULL,
  `MaxLuck` int(11) DEFAULT NULL,
  `MinCriticalHit` double DEFAULT NULL,
  `MaxCriticalHit` double DEFAULT NULL,
  `growRate` double DEFAULT NULL,
  PRIMARY KEY (`equipmentID`),
  UNIQUE KEY `EquipmentID_UNIQUE` (`equipmentID`),
  KEY `typeID_idx` (`typeID`),
  KEY `rankID_idx` (`rankID`),
  CONSTRAINT `rankID` FOREIGN KEY (`rankID`) REFERENCES `rank` (`RankID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `typeID` FOREIGN KEY (`typeID`) REFERENCES `etype` (`ETypeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,0,0,0,5,0,5,0,0,0,5,0,0,0,5,0,2,0,2,0,0.02,1.1),(2,0,1,2,15,2,15,0,0,0,15,0,0,0,15,0,4,0,3,0,0.025,1.2),(3,0,2,5,25,5,25,0,0,0,25,0,0,0,25,0,6,0,4,0,0.03,1.3),(4,0,3,10,50,10,50,0,0,0,45,0,0,0,45,0,8,0,5,0,0.035,1.4),(5,0,4,15,75,15,75,0,0,0,55,0,0,0,55,0,10,0,6,0,0.04,1.5),(6,1,0,0,15,0,15,0,0,0,20,0,0,0,20,0,1,0,1,0,0,1.1),(7,1,1,4,25,4,25,0,0,3,25,0,0,3,25,0,3,0,1,0,0,1.2),(8,1,2,7,55,7,55,0,0,5,30,0,0,5,30,0,5,0,2,0,0,1.3),(9,1,3,15,75,15,75,0,0,7,50,0,0,7,50,0,7,0,2,0,0,1.4),(10,1,4,25,120,25,120,0,0,10,80,0,0,10,80,0,9,0,3,0,0,1.5),(11,2,0,0,0,0,0,0,10,0,0,0,10,0,0,0,5,0,0,0,0.02,1.1),(12,2,1,0,0,0,0,3,20,0,0,3,20,0,0,0,7,0,0,0,0.03,1.2),(13,2,2,0,0,0,0,5,30,0,0,5,30,0,0,0,9,0,0,0,0.05,1.3),(14,2,3,0,0,0,0,8,40,0,0,8,40,0,0,0,13,0,0,0,0.08,1.4),(15,2,4,0,0,0,0,10,60,0,0,10,60,0,0,0,15,0,0,0,0.1,1.5),(16,3,0,0,0,0,0,0,0,0,2,0,0,0,2,0,5,0,3,0,0.02,1.1),(17,3,1,0,0,0,0,0,0,0,3,0,0,0,3,0,10,0,5,0,0.02,1.2),(18,3,2,0,0,0,0,0,0,0,5,0,0,0,5,0,15,0,7,0,0.03,1.3),(19,3,3,0,0,0,0,0,0,0,7,0,0,0,7,0,20,0,9,0,0.04,1.4),(20,3,4,0,0,0,0,0,0,0,9,0,0,0,9,0,25,0,11,0,0.05,1.5);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etype`
--

DROP TABLE IF EXISTS `etype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etype` (
  `ETypeID` int(11) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ETypeID`),
  UNIQUE KEY `ETypeID_UNIQUE` (`ETypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etype`
--

LOCK TABLES `etype` WRITE;
/*!40000 ALTER TABLE `etype` DISABLE KEYS */;
INSERT INTO `etype` VALUES (0,'head'),(1,'body'),(2,'hand'),(3,'feet');
/*!40000 ALTER TABLE `etype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `growrate`
--

DROP TABLE IF EXISTS `growrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `growrate` (
  `race` int(11) NOT NULL,
  `bHP` int(11) DEFAULT NULL,
  `gHP` double DEFAULT NULL,
  `bMP` int(11) DEFAULT NULL,
  `gMP` double DEFAULT NULL,
  `bPhysicalAttack` int(11) DEFAULT NULL,
  `gPhysicalAttack` double DEFAULT NULL,
  `bPhysicalDefence` int(11) DEFAULT NULL,
  `gPhysicalDefence` double DEFAULT NULL,
  `bMagicAttack` int(11) DEFAULT NULL,
  `gMagicAttack` double DEFAULT NULL,
  `bMagicDefence` int(11) DEFAULT NULL,
  `gMagicDefence` double DEFAULT NULL,
  `bDexterity` int(11) DEFAULT NULL,
  `gDexterity` double DEFAULT NULL,
  `bLuck` int(11) DEFAULT NULL,
  `gLuck` double DEFAULT NULL,
  `bCriticalHit` double DEFAULT NULL,
  `gCriticalHit` double DEFAULT NULL,
  `bexp` int(11) DEFAULT NULL,
  `gexp` double DEFAULT NULL,
  PRIMARY KEY (`race`),
  UNIQUE KEY `race_UNIQUE` (`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `growrate`
--

LOCK TABLES `growrate` WRITE;
/*!40000 ALTER TABLE `growrate` DISABLE KEYS */;
INSERT INTO `growrate` VALUES (0,200,1.02,100,1.01,20,1.02,5,1.01,15,1.01,5,1.01,5,1.01,1,1.01,0.02,1.02,100,1.05),(1,100,1.01,200,1.02,15,1.01,3,1.01,20,1.02,15,1.02,6,1.01,2,1.01,0.01,1.01,100,1.05),(2,300,1.05,50,1.01,25,1.03,3,1.01,3,1.01,3,1.01,10,1.02,5,1.01,0.03,1.02,100,1.05),(3,350,1.05,0,0,30,1.04,3,1.01,0,0,0,0,2,1.01,1,1.01,0.01,1.01,100,1.05),(4,50,1.06,50,1.06,5,1.05,5,1.05,5,1.05,5,1.05,20,1.02,10,1.02,0.05,1.05,100,1.05);
/*!40000 ALTER TABLE `growrate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race`
--

DROP TABLE IF EXISTS `race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race` (
  `RaceID` int(11) NOT NULL,
  `RaceName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`RaceID`),
  UNIQUE KEY `idRace_UNIQUE` (`RaceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race`
--

LOCK TABLES `race` WRITE;
/*!40000 ALTER TABLE `race` DISABLE KEYS */;
INSERT INTO `race` VALUES (0,'Human'),(1,'Elf'),(2,'Drawf'),(3,'Orc'),(4,'Unknown');
/*!40000 ALTER TABLE `race` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank` (
  `RankID` int(11) NOT NULL,
  `RankName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`RankID`),
  UNIQUE KEY `RankID_UNIQUE` (`RankID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank`
--

LOCK TABLES `rank` WRITE;
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
INSERT INTO `rank` VALUES (0,'broken'),(1,'basic'),(2,'magic'),(3,'rare'),(4,'legendary');
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-18 16:46:36
