-- Create db if it doesnt exist

CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- Create user and password
CREATE USER IF NOT EXISTS hbnb_test@localhost IDENTIFIED BY 'hbnb_test_pwd';

-- grant privileges
GRANT ALL PRIVILEGES ON hbnb_test_db.*
TO hbnb_test@localhost;

-- Enable changes without reloading
FLUSH PRIVILEGES;

-- Grant select privileges on performance schema
GRANT SELECT PRIVILEGES ON performance_schema.* 
TO hbnb_test@localhost;
