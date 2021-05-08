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
	(1, 'Funny', 'https://i.imgur.com/4mkBtmV.jpg', '2021-03-22 21:47:19'),
	(2, 'No.', 'https://i.pinimg.com/564x/e8/3a/12/e83a121c31a375025c74d4424d16366c.jpg', '2021-03-22 21:47:19'),
	(3, 'No Monday', 'https://i.pinimg.com/564x/1a/87/2e/1a872e5d84e98d5732a6478bc315dc46.jpg', '2021-03-22 21:47:19'),
	(4, 'WorkTips', 'https://i.pinimg.com/564x/d3/82/3d/d3823d785c72aa003783d725429b6090.jpg', '2021-03-22 21:47:19'),
	(5, 'Really Travel', 'https://i.pinimg.com/564x/85/2f/0b/852f0bdbfd8b1675c923fb7edf88ee3d.jpg', '2021-03-22 21:47:19'),
	(6, 'No Fish', 'https://i.pinimg.com/564x/89/71/19/8971197193c03c69f7dd88496a83043b.jpg', '2021-03-22 21:47:19');


/*!40000 ALTER TABLE `images` ENABLE KEYS */;
