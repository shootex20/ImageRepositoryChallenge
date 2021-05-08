CREATE DATABASE IF NOT EXISTS `imagerepository` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `imagerepository`;

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

DELETE FROM `images`;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `title`, `url`, `created_at`) VALUES
	(1, 'Dog Reaction GIF', 'https://media.giphy.com/media/DZR39sOOQWP8A7UoVs/source.gif\r', '2021-03-22 21:47:19');

/*!40000 ALTER TABLE `images` ENABLE KEYS */;
