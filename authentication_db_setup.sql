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
	username VARCHAR(200) NOT NULL,
    email VARCHAR(100) NOT NULL,
    `password` VARCHAR(200) NOT NULL,
    create_date VARCHAR(100),
    last_modification_date VARCHAR(100),
    active_flag BOOLEAN NOT NULL DEFAULT 0 #Default - false
);
ALTER TABLE `User` ALTER active_flag SET DEFAULT 0;
ALTER TABLE `User` RENAME COLUMN user_name TO username;
ALTER TABLE `User` DROP COLUMN username;

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

DELETE FROM RegistrationToken WHERE id = 1;

ALTER TABLE RegistrationToken DROP COLUMN create_by;
ALTER TABLE RegistrationToken DROP COLUMN create_by_user;
ALTER TABLE RegistrationToken DROP FOREIGN KEY FK5xqfepakhepf2iupullx15huk;
ALTER TABLE RegistrationToken DROP COLUMN createBy;

ALTER TABLE  `Role` DROP FOREIGN KEY FKtk0065mekgpvul3668qp89gvt;
ALTER TABLE  `Role` DROP COLUMN roles;
ALTER TABLE  `User` DROP COLUMN `status`;

INSERT INTO `UserRole` (user_id, role_id, active_flag, create_date, last_modification_date) VALUES 
(2, 1, 1, NOW(), NOW());

DELETE FROM `User` WHERE id >= 3;