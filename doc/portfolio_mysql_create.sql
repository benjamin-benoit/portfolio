CREATE TABLE `User` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`email` varchar(255) NOT NULL UNIQUE,
	`name` varchar(255) NOT NULL,
	`password` varchar(255) NOT NULL,
	`birthday` DATE(255) NOT NULL,
	`createdAt` DATE(255) NOT NULL,
	`updatedAt` DATE(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Project` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`title` varchar(255) NOT NULL,
	`description` varchar(255) NOT NULL,
	`githubUrl` varchar(255) NOT NULL,
	`urlProject` varchar(255) NOT NULL,
	`type` varchar(255) NOT NULL,
	`createdAt` DATE(255) NOT NULL,
	`updatedAt` DATE(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Tag` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`label` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Experience` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`job` varchar(255) NOT NULL,
	`description` varchar(255) NOT NULL,
	`start` DATE(255) NOT NULL,
	`end` DATE(255) NOT NULL,
	`company` varchar(255) NOT NULL,
	`link` varchar(255),
	PRIMARY KEY (`id`)
);

CREATE TABLE `Formation` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`start` DATE NOT NULL,
	`end` DATE NOT NULL,
	`name` varchar(255) NOT NULL,
	`school` varchar(255) NOT NULL,
	`link` varchar(255),
	`description` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `UserFormation` (
	`userId` INT NOT NULL,
	`formationId` INT NOT NULL
);

CREATE TABLE `UserProject` (
	`userId` INT NOT NULL,
	`projectId` INT NOT NULL
);

CREATE TABLE `ProjectTag` (
	`projectId` INT NOT NULL,
	`tagId` INT NOT NULL
);

CREATE TABLE `UserExperience` (
	`userId` INT NOT NULL,
	`experienceId` INT NOT NULL
);

ALTER TABLE `UserFormation` ADD CONSTRAINT `UserFormation_fk0` FOREIGN KEY (`userId`) REFERENCES `User`(`id`);

ALTER TABLE `UserFormation` ADD CONSTRAINT `UserFormation_fk1` FOREIGN KEY (`formationId`) REFERENCES `Formation`(`id`);

ALTER TABLE `UserProject` ADD CONSTRAINT `UserProject_fk0` FOREIGN KEY (`userId`) REFERENCES `User`(`id`);

ALTER TABLE `UserProject` ADD CONSTRAINT `UserProject_fk1` FOREIGN KEY (`projectId`) REFERENCES `Project`(`id`);

ALTER TABLE `ProjectTag` ADD CONSTRAINT `ProjectTag_fk0` FOREIGN KEY (`projectId`) REFERENCES `Project`(`id`);

ALTER TABLE `ProjectTag` ADD CONSTRAINT `ProjectTag_fk1` FOREIGN KEY (`tagId`) REFERENCES `Tag`(`id`);

ALTER TABLE `UserExperience` ADD CONSTRAINT `UserExperience_fk0` FOREIGN KEY (`userId`) REFERENCES `User`(`id`);

ALTER TABLE `UserExperience` ADD CONSTRAINT `UserExperience_fk1` FOREIGN KEY (`experienceId`) REFERENCES `Experience`(`id`);

