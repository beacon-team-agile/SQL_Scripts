use Authentication;

SHOW Tables;

-- DROP TABLE IF EXISTS RegistrationToken;
-- DROP TABLE IF EXISTS Role;
-- DROP TABLE IF EXISTS User;
-- DROP TABLE IF EXISTS UserRole;
-- DROP TABLE IF EXISTS `Role`;
-- DROP TABLE IF EXISTS `User`;
-- DROP TABLE IF EXISTS `UserRole`;

CREATE TABLE IF NOT EXISTS RegistrationToken (
	id INT AUTO_INCREMENT PRIMARY KEY,
	token VARCHAR(200),
    email VARCHAR(100),
    expiration_date VARCHAR(100),
    create_by VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS `Role`(
	id INT AUTO_INCREMENT PRIMARY KEY,
	role_name VARCHAR(50) NOT NULL,
    role_description VARCHAR(100),
    create_date VARCHAR(100) NOT NULL,
    last_modification_date VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS `User`(
	id INT AUTO_INCREMENT PRIMARY KEY,
	user_name VARCHAR(200) NOT NULL,
    email VARCHAR(100) NOT NULL,
    `password` VARCHAR(200) NOT NULL,
    create_date VARCHAR(100),
    last_modification_date VARCHAR(100),
    active_flag BOOLEAN NOT NULL DEFAULT 1 #Default - true
);

CREATE TABLE IF NOT EXISTS `UserRole`(
	id INT AUTO_INCREMENT PRIMARY KEY,
	user_id INT NOT NULL,
    role_id INT NOT NULL,
    active_flag BOOLEAN NOT NULL DEFAULT 1, #Default - true
    create_date VARCHAR(100),
    last_modification_date VARCHAR(100)
);

-- ALTER TABLE `UserRole` RENAME COLUMN create_by TO create_date;

SELECT * FROM RegistrationToken;
SELECT * FROM `Role`;
SELECT * FROM `User`;
SELECT * FROM `UserRole`;

#Role setups
INSERT INTO `Role` (role_name, role_description, create_date, last_modification_date) VALUES 
('employee', 'A role for employee with lowest authority', NOW(), NOW()),
('hr', 'A role for employee with some authority', NOW(), NOW()),
('admin', 'A role for admin with highest authority', NOW(), NOW());

#Add a single HR
INSERT INTO `User` (user_name, email, `password`, create_date, last_modification_date, active_flag) VALUES 
('hr-test', 'test_hr@beaconfire.com', '1234', NOW(), NOW(), 1);

INSERT INTO `UserRole` (user_id, role_id, active_flag, create_date, last_modification_date) VALUES 
(1, 2, 1, NOW(), NOW());
