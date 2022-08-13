use HousingService;

SHOW Tables;

-- DROP TABLE IF EXISTS ApplicationWorkFlow;
-- DROP TABLE IF EXISTS DigitalDocument;

CREATE TABLE IF NOT EXISTS House (
	id INT AUTO_INCREMENT PRIMARY KEY,
    landlord_id INT NOT NULL,
    address VARCHAR(300) NOT NULL,
    max_occupant INT NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS Landlord (
	id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    cell_phone VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS Facility (
	id INT AUTO_INCREMENT PRIMARY KEY,
    house_id INT NOT NULL,
    `type` VARCHAR(100),
    `description` VARCHAR(500) DEFAULT "",
    quantity INT NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS FacilityReport (
	id INT AUTO_INCREMENT PRIMARY KEY,
	facility_id INT NOT NULL,
    employee_id INT NOT NULL,
    title VARCHAR(100),
    `description` VARCHAR(500) DEFAULT "",
    create_date  VARCHAR(100),
    `status` BOOLEAN NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS FacilityReportDetail (
	id INT AUTO_INCREMENT PRIMARY KEY,
	facility_report_id INT NOT NULL,
    employee_id INT NOT NULL,
    `comment` VARCHAR(300),
    create_date  VARCHAR(100),
    last_modification_date  VARCHAR(100)
);

SELECT * FROM House;
SELECT * FROM Landlord;
SELECT * FROM Facility;
SELECT * FROM FacilityReport;
SELECT * FROM FacilityReportDetail;