CREATE TABLE movies (
    id integer,
    title character varying NOT NULL
    CONSTRAINT movies_pkey PRIMARY KEY (id)
);


CREATE TABLE users (
    id integer,
    CONSTRAINT users_pkey PRIMARY KEY (id)
);



CREATE TABLE user_movie_ratings (
    id serial,
    user_id integer,
    movie_id integer,
    rating integer,
    CONSTRAINT user_movie_ratings_pkey PRIMARY KEY (id)
);
