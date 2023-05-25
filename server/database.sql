CREATE DATABASE moviePortal;


CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    title_movie VARCHAR(255),
    year INT, 
    genre_id INT, 
    summary VARCHAR(1250),
    imageurl VARCHAR(2048)

);

CREATE TABLE genre(
    genre_id SERIAL PRIMARY KEY,
    title_genre VARCHAR(255)
);

