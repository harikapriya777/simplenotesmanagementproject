-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: snm
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `filesdata`
--

DROP TABLE IF EXISTS `filesdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filesdata` (
  `fileid` int unsigned NOT NULL AUTO_INCREMENT,
  `filename` longtext,
  `filedata` longblob,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `userid` int unsigned DEFAULT NULL,
  PRIMARY KEY (`fileid`),
  KEY `userid` (`userid`),
  CONSTRAINT `filesdata_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesdata`
--

LOCK TABLES `filesdata` WRITE;
/*!40000 ALTER TABLE `filesdata` DISABLE KEYS */;
INSERT INTO `filesdata` VALUES (2,'Abstraction.py',_binary '#abstraction:-the process of handling complexity by hiding unnessesary info from user is called abstraction.\r\n#abstract class: if a class contain one or more than one abstract method then the class is called abstract class .\r\n#abstract method: is the method is decleared without implementation is called abstract method.\r\n\r\n#abstraction:\r\n\'\'\'class A():\r\n    def method1(self):\r\n        pass\r\nobj1=A()\r\nobj1.method1()\'\'\'\r\n\r\n\'\'\'from abc import ABC,abstractmethod\r\nclass A():\r\n    @abstractmethod\r\n    def method1(self):\r\n        print(\"python\")\r\nobj1=A()\r\nobj1.method1()\'\'\'\r\n\r\n\r\n\'\'\'from abc import ABC,abstractmethod\r\nclass A(ABC):\r\n    @abstractmethod\r\n    def method1(self):\r\n        print(\"python\")\r\nobj1=A()\r\nobj1.method1()\'\'\'    #error\r\n\r\n#actual code:\r\n\'\'\'from abc import ABC,abstractmethod\r\nclass A(ABC):\r\n    @abstractmethod\r\n    def method1(self):\r\n        pass\r\n    def method2(self):\r\n        print(\"method2 is implemented\")\r\n    @abstractmethod\r\n    def method3(self):\r\n        pass\r\nclass B(A):\r\n    def method1(self):\r\n        print(\"method1 is implemented\")\r\n    def method3(self):\r\n        print(\"menthod3 is implemented\")\r\nobj1=B()\r\nobj1.method1()\r\nobj2.method2()\r\nobj3.method3()\'\'\'\r\n','2026-06-30 15:51:16',1),(4,'Jump search using array.py',_binary '#jump search\r\nimport math\r\narr=list(map(int,input(\"Enter elements:\").split()))\r\ntarget=int(input(\"Enter element to be searched:\"))\r\nn=len(arr)\r\nstep=int(math.sqrt(n))\r\ni=0\r\nwhile i<n and arr[min(i+step,n)-1]<target:\r\n    i+=step\r\nfor j in range(i,min(i+step,n)):\r\n    if arr[j]==target:\r\n        print(\"Found at index:\",j)\r\n        break\r\nelse:\r\n    print(\"not found!!!\")','2026-07-03 14:07:44',1),(5,'accessing array.py',_binary '#accessing an array element using index\r\n\'\'\'arr=list(map(int,input(\"Enter the elements of the array:\").split()))\r\nprint(arr[2])\r\nprint(arr[-2])\'\'\'\r\n\r\n#travel of an array\r\n\'\'\'arr=list(map(int,input(\"Enter the elements of the array:\").split()))\r\nfor i in range(len(arr)):\r\n    print(arr[i], end=\"->\")\'\'\'\r\n\r\n\'\'\'arr=list(map(int,input(\"Enter the elements of the array:\").split()))\r\nfor i in range(len(arr)):\r\n    print(arr[i]+1, end=\"->\")\'\'\'\r\n\r\n#program to find the minimum value in a user defined array\r\n\'\'\'arr=list(map(int,input(\"Enter the elements of the array:\").split()))\r\nmin_value= arr[0]\r\nfor i in arr:\r\n    if i<min_value:\r\n        min_value=i\r\nprint(min_value)\'\'\'\r\n\r\n#program to find the maximum value in a user defined array\r\n\'\'\'arr=list(map(int,input(\"Enter the elements of the array:\").split()))\r\nmax_value= arr[0]\r\nfor i in arr:\r\n    if i>max_value:\r\n        max_value=i\r\nprint(max_value)\'\'\'\r\n\r\n#program to reverse the words in a string\r\n\'\'\'words= input(\"Enter the words:\").split()\r\nfor word in words:\r\n    print(word[::-1],end=\" \")\'\'\'\r\n\r\n#program to find the smallest word lexcographically from the given list of words\r\n\'\'\'words= input(\"Enter the words:\").split()\r\nmin_word= words[0]\r\nfor word in words:\r\n    if word<min_word:\r\n        min_word=word\r\nprint(\"Smallest word is:\",min_word)\'\'\'\r\n\r\n#Encrypt the word using ceaser cipher\r\n\'\'\'word=input(\"Enter a word:\")\r\nkey=int(input(\"Enter a key:\"))\r\nresult= \"\"\r\nfor ch in word:\r\n    if ch.isalpha():\r\n        if ch.lower():\r\n            new= chr(ord(ch)+key)\r\n            result+= new\r\n        else:\r\n            new=chr(ord(ch)+key)\r\n            result+= new\r\nprint(result)\'\'\'\r\n\r\n\r\n\r\n\r\n','2026-07-03 14:07:53',1);
/*!40000 ALTER TABLE `filesdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notesdata`
--

DROP TABLE IF EXISTS `notesdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notesdata` (
  `notesid` int unsigned NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `description` longtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `userid` int unsigned DEFAULT NULL,
  PRIMARY KEY (`notesid`),
  KEY `userid` (`userid`),
  CONSTRAINT `notesdata_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notesdata`
--

LOCK TABLES `notesdata` WRITE;
/*!40000 ALTER TABLE `notesdata` DISABLE KEYS */;
INSERT INTO `notesdata` VALUES (3,'Taruni','Fast and Furious!!!!!!!! Faaa\r\nShe is good','2026-06-27 15:19:54',1),(5,'mysql','It is relational data base','2026-06-29 15:47:09',1),(6,'python','It is high level interpreted language','2026-07-03 14:08:45',1);
/*!40000 ALTER TABLE `notesdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone_num` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `useremail` (`useremail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'harika','harikapriyakurapati@gmail.com','12345','456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-03 14:25:03
