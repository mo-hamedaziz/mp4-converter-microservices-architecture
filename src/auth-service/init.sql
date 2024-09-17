-- Create database if it does not exist
CREATE DATABASE IF NOT EXISTS authdb;

-- Create user with no GRANT option
CREATE USER 'auth_user'@'%' IDENTIFIED BY 'Auth123';

-- Grant all privileges on the specific database
GRANT ALL PRIVILEGES ON authdb.* TO 'auth_user'@'%';

-- Apply changes
FLUSH PRIVILEGES;

-- Use the created database
USE authdb;

-- Create table if it does not exist
CREATE TABLE IF NOT EXISTS user (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

-- Insert initial data if it does not exist
INSERT INTO user (email, password) VALUES ('aziz@email.com', 'Admin123')
ON DUPLICATE KEY UPDATE password = VALUES(password);
