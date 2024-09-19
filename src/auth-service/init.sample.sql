-- Create database if it does not exist
CREATE DATABASE IF NOT EXISTS db_name;

-- Create user with no GRANT option
CREATE USER 'db_user_username'@'%' IDENTIFIED BY 'db_user_password';

-- Grant all privileges on the specific database
GRANT ALL PRIVILEGES ON db_name.* TO 'db_user_username'@'%';

-- Apply changes
FLUSH PRIVILEGES;

-- Use the created database
USE db_name;

-- Create table if it does not exist
CREATE TABLE IF NOT EXISTS user (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

-- Insert initial data if it does not exist
INSERT INTO user (email, password) VALUES ('user1_email', 'user1_password')
ON DUPLICATE KEY UPDATE password = VALUES(password);

-- Insert another user if it does not exist
INSERT INTO user (email, password) VALUES ('user2_email', 'user2_password')
ON DUPLICATE KEY UPDATE password = VALUES(password);
