## Writing Queries

Write queries to get

1. The names of the restaurants that you gave a 5 stars to
```sql
select name from restaurant where stars = 5;
```

2. The favorite dishes of all 5-star restaurants
```sql
select favorite_dish from restaurant where stars = 5;
```

3. The the id of a restaurant by a specific restaurant name, say 'NaanStop'
```sql
select id from restaurant where name = 'NaanStop';
```

4. restaurants in the category of 'BBQ'
```sql
select name from restaurant where category = 'BBQ';
```

5. restaurants that do take out
```sql
select name from restaurant where does_takeout = TRUE;
```

6. restaurants that do take out and is in the category of 'BBQ'
```sql
select name from restaurant where does_takeout = TRUE and category = 'BBQ';
```

7. restaurants within 2 miles
```sql
select name from restaurant where distance <= 2;
```

8. restaurants you haven't ate at in the last week
```sql
select name from restaurant where last_ate_there < '2016-07-12';
```
or:
```sql
select name from restaurant where last_ate_there < current_date - interval '1 week';
```

9. restaurants you haven't ate at in the last week and has 5 stars
```sql
select name from restaurant where last_ate_there < current_date - interval '1 week' and stars = 5;
```
