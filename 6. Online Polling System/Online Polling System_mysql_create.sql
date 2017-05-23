CREATE TABLE `vote` (
	`Poll_Id   ` INT(11) NOT NULL,
	`User_Id    ` INT(11) NOT NULL,
	`Polling_Option   ` varchar(30) NOT NULL,
	`Result ` varchar(30) NOT NULL,
	`Date  ` DATE NOT NULL AUTO_INCREMENT,
	`Polling_Count` INT NOT NULL,
	`Duration       ` DATE NOT NULL,
	PRIMARY KEY (`Poll_Id   `)
);

CREATE TABLE `User` (
	`User_Id   ` INT(11) NOT NULL AUTO_INCREMENT,
	`Roll_No` INT(11) NOT NULL,
	PRIMARY KEY (`User_Id   `)
);

ALTER TABLE `vote` ADD CONSTRAINT `vote_fk0` FOREIGN KEY (`User_Id    `) REFERENCES `User`(`User_Id   `);

