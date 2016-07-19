CREATE TABLE a_user (
  id serial PRIMARY KEY,
  name varchar,
  email varchar,
  karma integer CHECK (karma >= 0 and karma <= 7)
);
