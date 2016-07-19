CREATE TABLE review (
  id serial PRIMARY KEY,
  author_user_id integer REFERENCES a_user (id),
  stars integer CHECK (stars > 0 and stars <= 5),
  title varchar,
  review varchar,
  restaurant_id integer REFERENCES restaurant (id)
);
