CREATE TABLE author (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  profile_link VARCHAR(255),
  gender VARCHAR(10),
  age INT,
  location VARCHAR(255)
);

CREATE TABLE series (
  id INT PRIMARY KEY,
  title VARCHAR(255),
  description TEXT,
  author_id INT,
  first_story DATE,
  latest_update DATE,
  num_parts INT,
  FOREIGN KEY (author_id) REFERENCES author(id)
);

CREATE TABLE story (
  id INT PRIMARY KEY,
  title VARCHAR(255),
  author_id INT,
  genre VARCHAR(255),
  posted_date DATE,
  series_id INT NULL,
  series_index INT,
  storage_id INT,
  FOREIGN KEY (author_id) REFERENCES author(id),
  FOREIGN KEY (series_id) REFERENCES series(id)
);

CREATE TABLE stry_data (
  id INT PRIMARY KEY,
  data LONGTEXT,
  story_id INT,
  FOREIGN KEY (story_id) REFERENCES story(id)
);