-- db

DROP DATABASE IF EXISTS CMS;
CREATE DATABASE CMS ;
USE CMS ;

CREATE TABLE categories (
    categories_id int();
)



CREATE Table users(
    user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_name varchar(50),
    profile varchar(50),
    bio varchar(255),
    password varchar (50),
    email varchar(255)

);