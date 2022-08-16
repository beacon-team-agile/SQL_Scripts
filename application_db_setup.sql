use ApplicationService;

SHOW Tables;

-- DROP TABLE IF EXISTS ApplicationWorkFlow;
-- DROP TABLE IF EXISTS DigitalDocument;
DROP TABLE IF EXISTS House;
DROP TABLE IF EXISTS Landlord;
DROP TABLE IF EXISTS Facility;
DROP TABLE IF EXISTS FacilityReport;
DROP TABLE IF EXISTS FacilityReportDetail;
-- SELECT * FROM House;
-- SELECT * FROM Landlord;
-- SELECT * FROM Facility;
-- SELECT * FROM FacilityReport;
-- SELECT * FROM FacilityReportDetail;

CREATE TABLE IF NOT EXISTS ApplicationWorkFlow (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    create_date VARCHAR(100),
    last_modification_date VARCHAR(100),
    `status` BOOLEAN NOT NULL DEFAULT 0, #Default - false
    `comment` VARCHAR(300) 
);

ALTER TABLE ApplicationWorkFlow MODIFY employee_id VARCHAR(100);

CREATE TABLE IF NOT EXISTS DigitalDocument (
    id INT AUTO_INCREMENT PRIMARY KEY,
    `type` VARCHAR(50) NOT NULL,
    is_required BOOLEAN NOT NULL DEFAULT 0, #Default - false
    `path` VARCHAR(300),
    `description` VARCHAR(500),
    title VARCHAR(100)
);

SELECT * FROM ApplicationWorkFlow;
SELECT * FROM DigitalDocument;