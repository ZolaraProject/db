CREATE TABLE IF NOT EXISTS languages (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS actions (
    id SERIAL PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE IF NOT EXISTS levels (
    id SERIAL PRIMARY KEY,
    proficiency VARCHAR
);

CREATE TABLE IF NOT EXISTS interests (
    id SERIAL PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    email VARCHAR NOT NULL UNIQUE,
    password VARCHAR NOT NULL,
    username VARCHAR NOT NULL UNIQUE,
);


CREATE TABLE IF NOT EXISTS linguistic_concepts (
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    linguistic_type VARCHAR
);

CREATE TABLE IF NOT EXISTS flashcards (
    id SERIAL PRIMARY KEY,
    word VARCHAR NOT NULL,
    image_url VARCHAR NOT NULL,
    interest_id INTEGER,
    linguistic_concept_id INTEGER,
    FOREIGN KEY (linguistic_concept_id) REFERENCES linguistic_concepts(id),
    FOREIGN KEY (interest_id) REFERENCES interests(id)
);

CREATE TABLE IF NOT EXISTS gap_fills (
    id SERIAL PRIMARY KEY,
    answer VARCHAR NOT NULL,
    text TEXT NOT NULL,
    interest_id INTEGER,
    linguistic_concept_id INTEGER,
    FOREIGN KEY (linguistic_concept_id) REFERENCES linguistic_concepts(id),
    FOREIGN KEY (interest_id) REFERENCES interests(id)
);

CREATE TABLE IF NOT EXISTS user_profiles (
    user_id INTEGER PRIMARY KEY,
    language_id INTEGER,
    level_id INTEGER,
    action_id INTEGER,
    interest_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (language_id) REFERENCES languages(id),
    FOREIGN KEY (level_id) REFERENCES levels(id),
    FOREIGN KEY (action_id) REFERENCES actions(id),
    FOREIGN KEY (interest_id) REFERENCES interests(id)
);

CREATE TABLE IF NOT EXISTS contents (
    id SERIAL PRIMARY KEY,
    language_id INTEGER,
    FOREIGN KEY (language_id) REFERENCES languages(id)
);

CREATE TABLE IF NOT EXISTS users_exercises (
    user_id INTEGER,
    flashcard_id INTEGER,
    gap_fill_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (flashcard_id) REFERENCES flashcards(id),
    FOREIGN KEY (gap_fill_id) REFERENCES gap_fills(id)
);

CREATE TABLE IF NOT EXISTS user_mistakes (
    id SERIAL PRIMARY KEY,
    linguistic_concept_id INTEGER,
    user_id INTEGER,
    FOREIGN KEY (linguistic_concept_id) REFERENCES linguistic_concepts(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS actions_linguistic_concepts (
    linguistic_concept_id INTEGER,
    action_id INTEGER,
    FOREIGN KEY (linguistic_concept_id) REFERENCES linguistic_concepts(id),
    FOREIGN KEY (action_id) REFERENCES actions(id)
);

CREATE TABLE IF NOT EXISTS contents_actions (
    action_id INTEGER,
    content_id INTEGER,
    interest_id INTEGER,
    FOREIGN KEY (action_id) REFERENCES actions(id),
    FOREIGN KEY (content_id) REFERENCES contents(id),
    FOREIGN KEY (interest_id) REFERENCES interests(id)
);
