CREATE DATABASE compare_care;

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
  food TEXT,
  room TEXT,
  physical_therapy TEXT,
  gym TEXT,
  housekeeping TEXT,
  movie_theatre TEXT,
  swimming_pool TEXT,
  outings TEXT,
  bowling TEXT,
  library_internet TEXT
);

CREATE TABLE agedcares_services(
  agedcare_id INTEGER,
  service_id INTEGER
);


