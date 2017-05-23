CREATE TABLE `users` (
	`UserID` INT(11) NOT NULL,
	`UserName` varchar(100) NOT NULL,
	`UserEmail` varchar(100) NOT NULL,
	`Password` varchar(100) NOT NULL,
	`country` varchar(100) NOT NULL,
	`CreatedDate` DATE(100) NOT NULL,
	PRIMARY KEY (`UserID`)
);

CREATE TABLE `Posts` (
	`PostID` INT(11) NOT NULL,
	`PostTitle` varchar(100) NOT NULL AUTO_INCREMENT,
	`PostDate` varchar(100) NOT NULL AUTO_INCREMENT,
	`PostText` varchar(100) NOT NULL AUTO_INCREMENT,
	`Posttype` varchar(100) NOT NULL AUTO_INCREMENT,
	`Deleted` varchar(100) NOT NULL AUTO_INCREMENT,
	`Category` varchar(100) NOT NULL,
	`UserID` INT(11) NOT NULL,
	PRIMARY KEY (`PostID`)
);

CREATE TABLE `Comments` (
	`CommentID` INT(30) NOT NULL,
	`Comment` TEXT(300) NOT NULL AUTO_INCREMENT,
	`CommentDate` DATE(30) NOT NULL,
	`Deleted` varchar(100) NOT NULL,
	`UserID` INT(11) NOT NULL AUTO_INCREMENT,
	`PostID` INT(11) NOT NULL,
	PRIMARY KEY (`CommentID`)
);

CREATE TABLE `Reply` (
	`ReplyID` INT(11) NOT NULL,
	`Reply` TEXT(300) NOT NULL,
	`ReplyDate` DATE(30) NOT NULL,
	`Deleted` varchar(30) NOT NULL,
	`UserID` INT(11) NOT NULL,
	`PostID` INT(11) NOT NULL,
	`CommentID` INT(11) NOT NULL,
	PRIMARY KEY (`ReplyID`)
);

ALTER TABLE `Posts` ADD CONSTRAINT `Posts_fk0` FOREIGN KEY (`UserID`) REFERENCES `users`(`UserID`);

ALTER TABLE `Comments` ADD CONSTRAINT `Comments_fk0` FOREIGN KEY (`UserID`) REFERENCES `users`(`UserID`);

ALTER TABLE `Comments` ADD CONSTRAINT `Comments_fk1` FOREIGN KEY (`PostID`) REFERENCES `Posts`(`PostID`);

ALTER TABLE `Reply` ADD CONSTRAINT `Reply_fk0` FOREIGN KEY (`UserID`) REFERENCES `users`(`UserID`);

ALTER TABLE `Reply` ADD CONSTRAINT `Reply_fk1` FOREIGN KEY (`PostID`) REFERENCES `Posts`(`PostID`);

ALTER TABLE `Reply` ADD CONSTRAINT `Reply_fk2` FOREIGN KEY (`CommentID`) REFERENCES `Comments`(`CommentID`);

