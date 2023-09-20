i-- Creates a MySQL server with:
--   Database hbnb_dev_db.
--   User hbnb_dev with password hbnb_dev_pwd in localhost.
--   Grants all privileges for hbnb_dev on hbnb_dev_db.
--   Grants SELECT privilege for hbnb_dev on performance.

--Create the database if it doesn't exist.
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

--Create a user if it doen't exist
CREATE USER IF NOT EXISTS 'hbnb_dev_db'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

--Grant all privilliges on hbnb_dev_db to hbnb_dev
GRANT ALL PRIVILEGESON hbnb_dev_db.* To 'hbnb_dev'@'localhost';

--Grant Select priveleges on perfomance_schema to hbnb_schema
GRANT SELECT ON perfomance_schema.* TO 'hbnb_dev'@'localhost';

--Flush privileges to apply changes
FLUSH PRIVILEGES;

