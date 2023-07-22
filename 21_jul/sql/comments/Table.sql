CREATE TABLE comments (
  comment_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  content VARCHAR (250),
  created_by INT REFERENCES users(user_id),
  article_id INT REFERENCES articles(article_id)
);