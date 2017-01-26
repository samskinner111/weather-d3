--Setup the app postgres user
set client_encoding='utf8';

CREATE USER weather_user WITH PASSWORD 'dev-only:J4z3H9OKmPj7Kd5sVJxpaMY2Z4ilW67QAQ==zGtG9Y5fJFggwzeb';
ALTER USER weather_user WITH CREATEDB;
-- Only on development, this is needed to be able to run test:prepare
ALTER USER weather_user WITH SUPERUSER;