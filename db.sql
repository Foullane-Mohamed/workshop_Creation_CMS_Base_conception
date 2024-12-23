-- db

DROP DATABASE IF EXISTS CMS;

CREATE DATABASE CMS;

USE CMS;

CREATE TABLE categories ( categories_id int();

CREATE TABLE categories (
    categories_id int(11) NOT NULL AUTO_INCREMENT,
    categories VARCHAR(20),
    PRIMARY KEY (categories_id),
    article_id int(11),
    FOREIGN KEY (article_id) REFERENCES articles (article_id),
)

CREATE TABLE articles (
    article_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    status ENUM('brouillon', 'publie') DEFAULT 'draft',
    views INT DEFAULT 0,
    user_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE CASCADE
);