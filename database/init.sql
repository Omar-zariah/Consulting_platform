CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255) UNIQUE,
  password VARCHAR(255),
  role VARCHAR(50) CHECK (role IN ('user', 'expert'))
);

CREATE TABLE experts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  bio TEXT,
  category VARCHAR(255),
  rating DECIMAL,
  user_id INTEGER REFERENCES users(id)
);

CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  expert_id INTEGER REFERENCES experts(id),
  date DATE,
  time TIME
);
