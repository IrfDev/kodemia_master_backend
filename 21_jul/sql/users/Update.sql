UPDATE
  users
SET
  last_login = NOW()
WHERE
  user_id = 7 RETURNING *;