# Host: localhost  (Version 5.6.45)
# Date: 2022-09-25 20:25:20
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "partido_oficial"
#

DROP TABLE IF EXISTS `partido_oficial`;
CREATE TABLE `partido_oficial` (
  `id_oficial` int(11) NOT NULL AUTO_INCREMENT,
  `equipo1` varchar(255) DEFAULT NULL,
  `marcador1` int(11) DEFAULT NULL,
  `equipo2` varchar(11) DEFAULT NULL,
  `marcador2` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id_oficial`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "partido_oficial"
#

INSERT INTO `partido_oficial` VALUES (1,'Qatar',2,'Ecuador',1,'2022-11-20 17:00:00'),(2,'Inglaterra',0,'Iran',0,'2022-11-21 14:00:00'),(3,'Senegal',0,'Holanda',0,'2022-11-21 17:00:00'),(4,'USA',0,'Gales',0,'2022-11-21 20:00:00'),(5,'Argentina',0,'Arabia Saud',0,'2022-11-22 11:00:00'),(6,'Dinamarca',0,'Tunez',0,'2022-11-22 14:00:00'),(7,'Mexico',0,'Polonia',0,'2022-11-22 17:00:00'),(8,'Francia',0,'Australia',0,'2022-11-22 20:00:00'),(9,'Marruecos',0,'Croacia',0,'2022-11-23 11:00:00'),(10,'Alemania',0,'Japon',0,'2022-11-23 14:00:00');

#
# Structure for table "posicion"
#

DROP TABLE IF EXISTS `posicion`;
CREATE TABLE `posicion` (
  `id_posicion` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `punteo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_posicion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "posicion"
#

INSERT INTO `posicion` VALUES (1,1,'Jose ',50),(2,2,'Israel',49),(3,3,'Carlos',35);

#
# Structure for table "quiniela"
#

DROP TABLE IF EXISTS `quiniela`;
CREATE TABLE `quiniela` (
  `id_quiniela` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_oficial` varchar(255) DEFAULT NULL,
  `marcador1` int(11) DEFAULT NULL,
  `marcador2` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `punteo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_quiniela`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "quiniela"
#

INSERT INTO `quiniela` VALUES (1,1,'1',2,1,'2022-11-20 17:00:00',3),(2,3,'5',5,0,'2022-09-24 21:00:00',0),(3,3,'5',5,0,'2022-09-24 21:00:00',NULL);

#
# Structure for table "usuario"
#

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "usuario"
#

INSERT INTO `usuario` VALUES (5,'Israel','iavalos@gmail,com','isra','avalos2022'),(6,'Carlos','Carlos@gmail,com','Carlos','Quintana2022');
