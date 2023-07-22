CREATE TYPE article_status AS ENUM ('published', 'deleted', 'unpublish');

CREATE TABLE articles(
  article_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title VARCHAR(15),
  content VARCHAR(10000),
  status article_status,
  image TEXT,
  created_by INT REFERENCES users(user_id)
);