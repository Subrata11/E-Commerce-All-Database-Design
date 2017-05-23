CREATE TABLE `User` (
	`UserID` INT(11) NOT NULL AUTO_INCREMENT,
	`first_name ` varchar(30) NOT NULL,
	`last_name ` varchar(30) NOT NULL,
	`email` varchar(30) NOT NULL UNIQUE,
	`password` varchar(30) NOT NULL,
	`age` INT(30) NOT NULL,
	`contact` INT(30) NOT NULL,
	`gender` varchar(30) NOT NULL,
	PRIMARY KEY (`UserID`)
);

CREATE TABLE `Albam` (
	`albamID` INT(11) NOT NULL,
	`albamName` varchar(30) NOT NULL UNIQUE,
	`albam_category` varchar(30) NOT NULL,
	`date_of_creatation` DATE(30) NOT NULL,
	`UserID` INT(11) NOT NULL,
	PRIMARY KEY (`albamID`)
);

CREATE TABLE `Images` (
	`imagesID` INT(11) NOT NULL AUTO_INCREMENT,
	`imagesName` varchar(30) NOT NULL,
	`imagesCategory` varchar(30) NOT NULL,
	`UserID` INT(11) NOT NULL,
	`albamID` INT(11) NOT NULL,
	PRIMARY KEY (`imagesID`)
);

ALTER TABLE `Albam` ADD CONSTRAINT `Albam_fk0` FOREIGN KEY (`UserID`) REFERENCES `User`(`UserID`);

ALTER TABLE `Images` ADD CONSTRAINT `Images_fk0` FOREIGN KEY (`UserID`) REFERENCES `User`(`UserID`);

ALTER TABLE `Images` ADD CONSTRAINT `Images_fk1` FOREIGN KEY (`albamID`) REFERENCES `Albam`(`albamID`);

