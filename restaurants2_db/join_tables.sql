select
  review.author_user_id as author_id,
  a_user.name as author,
  review.title as review_title,
  review.review as full_review,
  review.stars as stars,
  review.restaurant_id as restaurant_id,
  restaurant.name as restaurant
from
  review,
  a_user,
  restaurant
where
  a_user.id = review.author_user_id and
  restaurant.id = review.restaurant_id;
