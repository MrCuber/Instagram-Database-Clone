-- 1. Finding 5 Oldest users
SELECT * FROM users
ORDER BY created_at
LIMIT 5;

-- 2. Most Popular Registration Date
SELECT
DAYNAME(created_at) AS day,
COUNT(*) AS total
FROM USERS
GROUP BY day
ORDER BY total desc
LIMIT 2;

-- 3. Identify Inactive Users (users with no photos)
SELECT username FROM users
LEFT JOIN photos ON users.id = photos.user_id
WHERE photos.id IS NULL;

SELECT username FROM users
WHERE id NOT IN (SELECT user_id FROM photos);

-- 4. Identify Most Popular photo (and user who created it)
SELECT username, photos.id, photos.image_url, COUNT(*) AS total FROM photos
INNER JOIN likes
ON likes.photo_id = photos.id
INNER JOIN users
ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

-- 5. Calculate Avg number of photos per user
-- Total number of photos/ Total number of users
SELECT (SELECT COUNT(*) from photos)/(SELECT COUNT(*) FROM users) AS "Avg photos";

-- 6. Five Most Popular hashtags
SELECT tags.tag_name,
COUNT(*) AS total
 FROM
photo_tags
JOIN tags
ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;

-- 7. Finding Bots - users who have liked every single photo
SELECT username,
user_id,
COUNT(*) AS num_likes
FROM users
JOIN likes
ON users.id = likes.user_id
GROUP BY id
HAVING num_likes = (SELECT COUNT(*) FROM photos);
