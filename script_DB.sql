CREATE DATABASE cursophp;
CREATE TABLE`cursophp`.`jobs` (
  `id`INT NOT NULL AUTO_INCREMENT,
  `title`TEXT NULL,
  `description`TEXT NULL,
  `visible` TINYINT(1) NULL,
  `months`INT NULL,
  PRIMARY KEY (`id`));


  CREATE TABLE`cursophp`.`proyects` (
  `id`INT NOT NULL AUTO_INCREMENT,
  `title`TEXT NULL,
  `description`TEXT NULL,
  `visible` TINYINT(1) NULL,
  `months`INT NULL,
  PRIMARY KEY (`id`));

  CREATE TABLE `cursophp`.`users` (
     `id` INT(10) NOT NULL AUTO_INCREMENT ,
      `email` VARCHAR(200) NOT NULL ,
       `password` VARCHAR(200) NOT NULL ,
        `created_at` DATETIME NOT NULL ,
         PRIMARY KEY (`id`)) ENGINE = InnoDB;

  ALTER TABLE `jobs` ADD `image` VARCHAR(500)  NOT NULL AFTER `months`;
  ALTER TABLE `jobs` ADD `created_at` DATETIME NOT NULL AFTER `months`, ADD `updated_at` DATETIME NOT NULL AFTER `created_at`;
  ALTER TABLE `proyects` ADD `created_at` DATETIME NOT NULL AFTER `months`, ADD `updated_at` DATETIME NOT NULL AFTER `created_at`;
  ALTER TABLE `jobs` ADD `deleted_at` DATETIME NOT NULL AFTER `updated_at`;
  ALTER TABLE `users` ADD `updated_at` DATETIME NOT NULL AFTER `created_at`;