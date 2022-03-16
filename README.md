# README

A simple Note taking application made on the Ruby on Rails framework.

# Database

PostGreSQL Hosted on Heroku

CREATE TABLE notes (
id serial NOT NULL PRIMARY KEY,
note TEXT
);

CREATE TABLE tags (
id serial NOT NULL PRIMARY KEY,
tag TEXT
);

CREATE TABLE notetags (
id serial NOT NULL PRIMARY KEY,
tagid INTEGER REFERENCES tags (id) NOT NULL,
noteid INTEGER REFERENCES notes (id) NOT NULL
);
