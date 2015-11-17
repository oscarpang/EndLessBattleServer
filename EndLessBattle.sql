DROP DATABASE IF EXISTS EndLessBattle;
CREATE DATABASE EndLessBattle;

USE EndLessBattle;

CREATE TABLE LoginInfo(
	userID INT(11) not null primary key auto_increment,
	username VARCHAR(20) not null,
	userpasswordHash int(10) not null
);


INSERT INTO `EndLessBattle`.`LoginInfo` (`userID`, `username`, `userpasswordHash`) VALUES ('1', 'oscar', '34047');



