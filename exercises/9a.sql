-- We're going to be adding a "genres" table to the database

-- It just needs two columns:
  -- "id" should be autoincrementing integer
  -- "name" is a unique string

-- Could you write the SQL to create the table?

CREATE TABLE genres (
    id integer primary key autoincrement,
    name text unique not null
);
