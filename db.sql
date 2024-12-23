-- db

DROP DATABASE IF EXISTS CMS;
CREATE DATABASE CMS ;
USE CMS ;

CREATE TABLE categories (
    categories_id int();
)

CREATE TABLE `tags` (
  `ID` INT(11) AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL UNIQUE,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);

CREATE TABLE `article_tags` (
  `article_id` INT(11) NOT NULL,
  `tag_id` INT(11) NOT NULL,
  PRIMARY KEY (`article_id`, `tag_id`),
  FOREIGN KEY (`article_id`) REFERENCES `articles`(`ID`) ON DELETE CASCADE,
  FOREIGN KEY (`tag_id`) REFERENCES `tags`(`ID`) ON DELETE CASCADE
);

