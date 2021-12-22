-- Create db if it doesnt exist
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
CREATE DATABASE IF NOT EXISTS performance_schema;
-- Create user and password
CREATE USER IF NOT EXISTS hbnb_dev@localhost IDENTIFIED BY 'hbnb_dev_pwd';

-- grant privileges
GRANT ALL PRIVILEGES ON hbnb_dev_db.*
TO hbnb_dev@localhost;

-- Enable changes without reloading
FLUSH PRIVILEGES;

-- Grant select privileges on performance schema
GRANT SELECT PRIVILEGES ON performance_schema.* 
TO hbnb_dev@localhost;
