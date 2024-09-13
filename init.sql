CREATE TABLE IF NOT EXISTS languages (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS actions (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS levels (
    id SERIAL PRIMARY KEY,
    proficiency VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS interests (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TYPE user_role AS ENUM ('admin', 'user');

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255),
    role user_role DEFAULT 'user',
    oauth BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS linguistic_types (
    id SERIAL PRIMARY KEY,
    lt_name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS linguistic_concepts (
    id SERIAL PRIMARY KEY,
    lc_name VARCHAR(255) NOT NULL UNIQUE,
    linguistic_type_id INTEGER,
    FOREIGN KEY (linguistic_type_id) REFERENCES linguistic_types(id)
);

CREATE TABLE IF NOT EXISTS flashcards (
    id SERIAL PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    interest_id INTEGER,
    linguistic_concept_id INTEGER,
    language_id INTEGER NOT NULL DEFAULT 1,
    FOREIGN KEY (linguistic_concept_id) REFERENCES linguistic_concepts(id),
    FOREIGN KEY (interest_id) REFERENCES interests(id),
    FOREIGN KEY (language_id) REFERENCES languages(id)
);

CREATE TABLE IF NOT EXISTS gap_fills (
    id SERIAL PRIMARY KEY,
    text TEXT NOT NULL,
    interest_id INTEGER,
    linguistic_concept_id INTEGER,
    language_id INTEGER NOT NULL DEFAULT 1,
    FOREIGN KEY (linguistic_concept_id) REFERENCES linguistic_concepts(id),
    FOREIGN KEY (interest_id) REFERENCES interests(id),
    FOREIGN KEY (language_id) REFERENCES languages(id)
);

CREATE TABLE IF NOT EXISTS answers (
    gap_fill_id INTEGER,
    flashcard_id INTEGER,
    answer VARCHAR(255),
    is_correct BOOLEAN,
    answer_order INTEGER
);

CREATE TABLE IF NOT EXISTS user_profiles (
    user_id INTEGER NOT NULL,
    language_id INTEGER NOT NULL,
    level_id INTEGER NOT NULL,
    action_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (language_id) REFERENCES languages(id),
    FOREIGN KEY (level_id) REFERENCES levels(id),
    FOREIGN KEY (action_id) REFERENCES actions(id)
);

CREATE TABLE IF NOT EXISTS user_interests (
    user_id INTEGER NOT NULL,
    interest_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (interest_id) REFERENCES interests(id)
);

CREATE TABLE IF NOT EXISTS contents (
    id SERIAL PRIMARY KEY,
    language_id INTEGER NOT NULL,
    content_url VARCHAR(255),
    FOREIGN KEY (language_id) REFERENCES languages(id)
);

CREATE TABLE IF NOT EXISTS user_exercises (
    user_id INTEGER NOT NULL,
    flashcard_id INTEGER,
    gap_fill_id INTEGER,
    completed BOOLEAN DEFAULT FALSE,
    missed BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (flashcard_id) REFERENCES flashcards(id),
    FOREIGN KEY (gap_fill_id) REFERENCES gap_fills(id)
);

CREATE TABLE IF NOT EXISTS user_mistakes (
    id SERIAL PRIMARY KEY,
    linguistic_concept_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    level_id INTEGER NOT NULL,
    FOREIGN KEY (linguistic_concept_id) REFERENCES linguistic_concepts(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (level_id) REFERENCES levels(id)
);

CREATE TABLE IF NOT EXISTS actions_linguistic_concepts (
    linguistic_concept_id INTEGER NOT NULL,
    action_id INTEGER NOT NULL,
    FOREIGN KEY (linguistic_concept_id) REFERENCES linguistic_concepts(id),
    FOREIGN KEY (action_id) REFERENCES actions(id)
);

CREATE TABLE IF NOT EXISTS contents_actions (
    action_id INTEGER NOT NULL,
    content_id INTEGER,
    interest_id INTEGER,
    FOREIGN KEY (action_id) REFERENCES actions(id),
    FOREIGN KEY (content_id) REFERENCES contents(id),
    FOREIGN KEY (interest_id) REFERENCES interests(id)
);

CREATE TYPE event_type AS ENUM ('USER_CREATE', 'USER_UPDATE', 'USER_DELETE');

CREATE TABLE IF NOT EXISTS events (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    event_type event_type NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS video (
    id INTEGER PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    subtitle VARCHAR(255) NOT NULL,
    likes INTEGER NOT NULL DEFAULT 0,
    language_id INTEGER NOT NULL,
    level_id INTEGER NOT NULL,
    action_id INTEGER NOT NULL,
    FOREIGN KEY (language_id) REFERENCES languages(id),
    FOREIGN KEY (level_id) REFERENCES levels(id),
    FOREIGN KEY (action_id) REFERENCES actions(id)
);

CREATE TABLE IF NOT EXISTS user_video (
    user_id INTEGER NOT NULL,
    language_id INTEGER NOT NULL,
    level_id INTEGER NOT NULL,
    difficult_count INTEGER NOT NULL DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (language_id) REFERENCES languages(id),
    FOREIGN KEY (level_id) REFERENCES levels(id)
);