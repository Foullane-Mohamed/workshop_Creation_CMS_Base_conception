-- db

DROP DATABASE IF EXISTS CMS;
CREATE DATABASE CMS ;
USE CMS ;

CREATE TABLE categories (
    categories_id int(11) NOT NULL AUTO_INCREMENT,
    categories VARCHAR(20),
    PRIMARY KEY (categories_id),
    article_id int(11), 
    FOREIGN KEY (article_id) REFERENCES articles (article_id),     
    
)
