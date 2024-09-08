CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Auth123';

CREATE DATABASE authdb;

GRANT ALL PRIVILEGES ON authdb.* TO 'auth_user'@'localhost';

USE authdb;

CREATE TABLE user (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

INSERT INTO user (email, password) VALUES ('aziz@email.com', 'Admin123');