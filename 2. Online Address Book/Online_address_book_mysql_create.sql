CREATE TABLE `userinfo` (
	`UserId` INT(11) NOT NULL,
	`name` varchar(30) NOT NULL,
	`email` varchar(30) NOT NULL,
	`Address` varchar(30) NOT NULL,
	`Phone` INT(30) NOT NULL,
	`id` INT NOT NULL,
	PRIMARY KEY (`UserId`)
);

CREATE TABLE `users` (
	`id` INT(30) NOT NULL,
	`name` varchar(100) NOT NULL,
	`email` varchar(100) NOT NULL,
	`password` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `userinfo` ADD CONSTRAINT `userinfo_fk0` FOREIGN KEY (`id`) REFERENCES `users`(`id`);

