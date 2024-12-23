-- Active: 1734944096124@@127.0.0.1@3306
-- db

DROP DATABASE IF EXISTS CMS;

CREATE DATABASE CMS;

USE CMS;

CREATE Table users (
    user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_name varchar(50),
    profile varchar(50),
    bio varchar(255),
    password varchar(50),
    email varchar(255)
)

CREATE TABLE categories (
    categories_id int(11) NOT NULL AUTO_INCREMENT,
    categories VARCHAR(20),
    PRIMARY KEY (categories_id),
)

CREATE TABLE `tags` (
    `tag_id` INT(11) AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL UNIQUE,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);

CREATE TABLE `article_tags` (
    `article_id` INT(11) NOT NULL,
    `tag_id` INT(11) NOT NULL,
    PRIMARY KEY (`article_id`, `tag_id`),
    FOREIGN KEY (`article_id`) REFERENCES `articles` (`article_id `) ON DELETE CASCADE,
    FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`) ON DELETE CASCADE
);



CREATE Table users(
    user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_name varchar(50),
    profile varchar(50),
    bio varchar(255),
    password varchar (50),
    email varchar(255)
)

CREATE TABLE articles (
    article_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    status ENUM('brouillon', 'publie') DEFAULT 'draft',
    views INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    user_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (category_id) REFERENCES categories (category_id) ON DELETE CASCADE ON UPDATE CASCADE
);