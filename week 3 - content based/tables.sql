CREATE TABLE documents (
    id serial,
    name character varying NOT NULL,
    CONSTRAINT documents_pkey PRIMARY KEY (id)
);


CREATE TABLE tags (
    id serial,
    name character varying not null,
    CONSTRAINT tags_pkey PRIMARY KEY (id)
);

CREATE TABLE users (
    id serial,
    name character varying not null,
    CONSTRAINT users_pkey PRIMARY KEY (id)
);



CREATE TABLE document_tags (
    id serial,
    document_id integer,
    tag_id integer,
    CONSTRAINT document_tags_pkey PRIMARY KEY (id)
);

CREATE TABLE user_interactions (
    id serial,
    user_id integer,
    document_id integer,
    interaction integer,
    CONSTRAINT user_interactions_pkey PRIMARY KEY (id)
);

CREATE TABLE user_profiles (
    id serial,
    user_id integer,
    tag_id integer,
    attr_preference integer,
    CONSTRAINT user_profiles_pkey PRIMARY KEY (id)
);