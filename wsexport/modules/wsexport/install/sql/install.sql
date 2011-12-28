CREATE TABLE IF NOT EXISTS `book` (
  `title` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `type` varchar(50) NOT NULL,
  `author` varchar(150) NOT NULL,
  `translator` varchar(150) NOT NULL,
  `illustrator` varchar(150) NOT NULL,
  `school` varchar(150) NOT NULL,
  `publisher` varchar(150) NOT NULL,
  `year` varchar(150) NOT NULL,
  `place` varchar(150) NOT NULL,
  `key` varchar(150) NOT NULL,
  `progress` varchar(100) NOT NULL,
  `volume` varchar(150) NOT NULL,
  `scan` varchar(100) NOT NULL,
  `coverUrl` varchar(500) NOT NULL,
  `iconUrl` varchar(500) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `downloads` int(11) NOT NULL DEFAULT '0',
  `lastrevid` int(11) NOT NULL DEFAULT '0' COMMENT 'last revision id',
  PRIMARY KEY (`lang`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `person` (
  `title` varchar(150) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `birthDate` varchar(50) NOT NULL,
  `deathDate` varchar(50) NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `key` varchar(50) NOT NULL,
  `wikipedia` varchar(150) NOT NULL,
  `wikiquote` varchar(150) NOT NULL,
  `commons` varchar(150) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `lastrevid` int(11) NOT NULL,
  PRIMARY KEY (`lang`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
