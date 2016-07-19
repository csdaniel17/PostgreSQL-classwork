-- table for restaurant reviews:
CREATE TABLE restaurant (
  id serial PRIMARY KEY,
  name varchar NOT NULL,
  address varchar,
  category varchar
);
