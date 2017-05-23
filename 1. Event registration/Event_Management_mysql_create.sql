CREATE TABLE `registration ` (
	`Roll` INT(11) NOT NULL,
	`name` varchar(30) NOT NULL,
	`fathers_name` varchar(30) NOT NULL,
	`date_of_birth` DATE NOT NULL,
	`address` varchar(30) NOT NULL,
	`email` varchar(30) NOT NULL UNIQUE,
	`phone` INT(30) NOT NULL,
	`educational_qualification` varchar(30) NOT NULL,
	`last_login` TIMESTAMP NOT NULL,
	`token` varchar(30) NOT NULL,
	`token_validity` TIMESTAMP NOT NULL,
	PRIMARY KEY (`Roll`)
);

