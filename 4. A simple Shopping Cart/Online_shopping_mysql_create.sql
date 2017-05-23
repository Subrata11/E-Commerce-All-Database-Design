CREATE TABLE `customer` (
	`CustomerId` INT(30) NOT NULL,
	`CustomerName` varchar(100) NOT NULL,
	`Address` varchar(100) NOT NULL,
	`City` varchar(100) NOT NULL,
	`Email` varchar(100) NOT NULL UNIQUE,
	`Mobile` INT(30) NOT NULL,
	`Gender` varchar(30) NOT NULL,
	`BirthDate` DATE NOT NULL,
	`UserName` varchar(30) NOT NULL,
	`Password` varchar(100) NOT NULL,
	PRIMARY KEY (`CustomerId`)
);

CREATE TABLE `products` (
	`product_Id` INT(30) NOT NULL,
	`CategoryId` INT(30) NOT NULL AUTO_INCREMENT,
	`ItemName` varchar(100) NOT NULL,
	`Description` varchar(300) NOT NULL,
	`Size` varchar(100) NOT NULL,
	`Image` blob(100) NOT NULL,
	`Price` FLOAT(100) NOT NULL,
	`Discount` FLOAT(100) NOT NULL,
	`Total` FLOAT(100) NOT NULL,
	`CustomerId` varchar(30) NOT NULL,
	PRIMARY KEY (`product_Id`)
);

CREATE TABLE `shopping_cart` (
	`CartId` INT(11) NOT NULL,
	`ItemName` varchar(30) NOT NULL,
	`Quantity` INT(11) NOT NULL,
	`Price` FLOAT(30) NOT NULL,
	`Total` FLOAT(30) NOT NULL,
	`OrderDate` DATE NOT NULL,
	`CustomerId` INT(11) NOT NULL AUTO_INCREMENT,
	`product_Id` varchar(30) NOT NULL,
	PRIMARY KEY (`CartId`)
);

CREATE TABLE `offer` (
	`OfferId` INT(11) NOT NULL,
	`Offer` varchar(100) NOT NULL,
	`Detail` varchar(300) NOT NULL,
	`Valid` DATE NOT NULL,
	PRIMARY KEY (`OfferId`)
);

CREATE TABLE `feedback` (
	`FeedbackId` INT(11) NOT NULL,
	`CustomerId` INT(11) NOT NULL AUTO_INCREMENT,
	`Feedback` varchar(300) NOT NULL,
	`Date` DATE NOT NULL,
	PRIMARY KEY (`FeedbackId`)
);

CREATE TABLE `admin` (
	`Admin_Id` INT(30) NOT NULL,
	`User_Name` varchar(100) NOT NULL,
	`Password` varchar(100) NOT NULL,
	PRIMARY KEY (`Admin_Id`)
);

ALTER TABLE `products` ADD CONSTRAINT `products_fk0` FOREIGN KEY (`CustomerId`) REFERENCES `customer`(`CustomerId`);

ALTER TABLE `shopping_cart` ADD CONSTRAINT `shopping_cart_fk0` FOREIGN KEY (`CustomerId`) REFERENCES `customer`(`CustomerId`);

ALTER TABLE `shopping_cart` ADD CONSTRAINT `shopping_cart_fk1` FOREIGN KEY (`product_Id`) REFERENCES `products`(`product_Id`);

ALTER TABLE `feedback` ADD CONSTRAINT `feedback_fk0` FOREIGN KEY (`CustomerId`) REFERENCES `customer`(`CustomerId`);

