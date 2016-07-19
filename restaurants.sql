CREATE TABLE restaurant (
  id serial UNIQUE,
  name varchar NOT NULL,
  distance integer,
  stars integer CHECK (stars > 0 and stars <= 5),
  category varchar,
  favorite_dish varchar,
  does_takeout boolean,
  last_ate_there date
);
