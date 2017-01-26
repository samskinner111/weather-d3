-- Setup the SQL database
set client_encoding='utf8';

DROP DATABASE IF EXISTS weather_development;
DROP DATABASE IF EXISTS weather_test;

CREATE DATABASE weather_development;
CREATE DATABASE weather_test;

GRANT ALL PRIVILEGES ON DATABASE weather_development TO weather_user;
GRANT ALL PRIVILEGES ON DATABASE weather_test TO weather_user;

ALTER DATABASE weather_development OWNER  TO weather_user;
ALTER DATABASE weather_test OWNER TO weather_user;