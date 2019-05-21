CREATE DATABASE compare_cares;

ALTER SEQUENCE IF EXISTS users_id_seq RESTART WITH 1;
ALTER SEQUENCE IF EXISTS agedcares_id_seq RESTART WITH 1;
ALTER SEQUENCE IF EXISTS services_id_seq RESTART WITH 1;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  email VARCHAR(200),
  password_digest VARCHAR(200)
);

CREATE TABLE agedcares(
  id SERIAL PRIMARY KEY,
  location VARCHAR(200),
  amount FLOAT(2),
  rating INTEGER,
  user_id INTEGER
);

CREATE TABLE services(
  id SERIAL PRIMARY KEY,
  name TEXT
);

INSERT INTO services(name) VALUES ('food');
INSERT INTO services(name) VALUES ('room');
INSERT INTO services(name) VALUES ('physio_therapy');
INSERT INTO services(name) VALUES ('gym');
INSERT INTO services(name) VALUES ('housekeeping');
INSERT INTO services(name) VALUES ('movie_theatre');
INSERT INTO services(name) VALUES ('swimming_pool');
INSERT INTO services(name) VALUES ('outings');
INSERT INTO services(name) VALUES ('bowling');
INSERT INTO services(name) VALUES ('library_internet');


-- bridging table for agedcare and services due to many to many relationship
CREATE TABLE agedcares_services(
  agedcare_id INTEGER,
  service_id INTEGER
);


