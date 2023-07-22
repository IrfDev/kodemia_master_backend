SELECT
  articles.title,
  LEFT(comments.content, 20) AS preview,
  users.username,
  comments
FROM
  articles
  INNER JOIN users ON articles.created_by = users.user_id
  INNER JOIN comments ON articles.article_id = comments.article_id;