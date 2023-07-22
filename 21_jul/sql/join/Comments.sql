SELECT
  comment_id,
  articles.title,
  LEFT(comments.content, 20) AS preview,
  users.username
FROM
  comments
  INNER JOIN users ON comments.created_by = users.user_id
  INNER JOIN articles ON comments.article_id = articles.article_id;