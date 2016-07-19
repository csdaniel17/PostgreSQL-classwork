1. get avg stars by restaurant (restaurant name, avg star rating)

```sql
select
  restaurant.name,
  avg(review.stars) as average_stars
from
  a_user,
  restaurant,
  review
where
  review.author_user_id = a_user.id and
  review.restaurant_id = restaurant.id
group by
  restaurant.id
;
```


2. get avg stars by user (user name, avg star rating)

```sql
select
  a_user.name,
  avg(review.stars) as average_stars
from
  a_user,
  restaurant,
  review
where
  review.author_user_id = a_user.id and
  review.restaurant_id = restaurant.id
group by
  a_user.id
;
```


3. get the lowest star rating for each user (user name, lowest star rating)

```sql
select
  a_user.name,
  min(review.stars) as min_stars
from
  a_user,
  restaurant,
  review
where
  review.author_user_id = a_user.id and
  review.restaurant_id = restaurant.id
group by
  a_user.id
;
```


4. get the number of reviews by restaurant (restaurant name, review count)

```sql
select
  restaurant.name,
  count(review.review) as review_count
from
  a_user,
  restaurant,
  review
where
  review.author_user_id = a_user.id and
  review.restaurant_id = restaurant.id
group by
  restaurant.id
;
```


5. get the number of restaurants in each category (category name, restaurant count)

```sql
select
  restaurant.category,
  count(*) as restaurant_count
from
  restaurant
group by
  restaurant.category
;
```


6. get the number of 5 star reviews by restaurant (restaurant name, 5-star count)

```sql
select
  restaurant.name,
  count(review.stars) as num_of_5_stars
from
  a_user,
  restaurant,
  review
where
  review.stars = 5 and
  review.author_user_id = a_user.id and
  review.restaurant_id = restaurant.id
group by
  restaurant.name
;
```


7. average star rating for a food category (category name, avg star rating)

```sql
select
  restaurant.category,
  avg(review.stars) as average_stars
from
  a_user,
  restaurant,
  review
where
  review.author_user_id = a_user.id and
  review.restaurant_id = restaurant.id
group by
  restaurant.category
;
```
