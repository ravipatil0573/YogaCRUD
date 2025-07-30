
CREATE TABLE `adminreg` (
  `username` varchar(50) default NULL,
  `password` varchar(35) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `trainer` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) default NULL,
  `lname` varchar(100) default NULL,
  `gender` varchar(100) default NULL,
  `mobile` varchar(100) default NULL,
  `city` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `age` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  `date` varchar(100) default NULL,
  `experience` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `login` (
  `username` varchar(15) default NULL,
  `password` varchar(15) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `member` (
  `fname` varchar(30) default NULL,
  `lname` varchar(30) default NULL,
  `gender` varchar(10) default NULL,
  `city` varchar(30) default NULL,
  `email` varchar(50) default NULL,
  `age` varchar(15) default NULL,
  `address` varchar(50) default NULL,
  `date` varchar(50) default NULL,
  `mobile` varchar(50) NOT NULL,
  PRIMARY KEY  (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `recp` (
  `fname` varchar(100) default NULL,
  `lname` varchar(100) default NULL,
  `mobile` varchar(100) NOT NULL,
  `date` varchar(100) default NULL,
  PRIMARY KEY  (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `worker` (
  `fname` varchar(100) default NULL,
  `lname` varchar(100) default NULL,
  `mobile` varchar(100) NOT NULL,
  `date` varchar(100) default NULL,
  PRIMARY KEY  (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

