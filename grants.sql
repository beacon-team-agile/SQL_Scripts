CREATE USER 'team_agile_leo'@'%' IDENTIFIED BY '';
CREATE USER 'team_agile_yang'@'%' IDENTIFIED BY '';
CREATE USER 'team_agile_alan'@'%' IDENTIFIED BY '';

GRANT ALL PRIVILEGES ON Authentication.* TO 'team_agile_leo'@'%';
GRANT ALL PRIVILEGES ON Authentication.* TO 'team_agile_yang'@'%';
GRANT ALL PRIVILEGES ON Authentication.* TO 'team_agile_alan'@'%';