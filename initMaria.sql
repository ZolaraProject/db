CREATE DATABASE IF NOT EXISTS zolara;
GRANT ALL PRIVILEGES ON zolara.* TO 'postgres'@'%';
FLUSH PRIVILEGES;

USE zolara;

CREATE TABLE IF NOT EXISTS languages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    image_url VARCHAR(255)
);

CREATE TABLE actions_category (
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS actions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    image_url VARCHAR(255),
    actions_category_id INT NOT NULL,
    FOREIGN KEY (actions_category_id) REFERENCES actions_category(id)
);

CREATE TABLE IF NOT EXISTS levels (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS actions_levels (
    id INT AUTO_INCREMENT PRIMARY KEY,
    action_id INT NOT NULL,
    level_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    FOREIGN KEY (action_id) REFERENCES actions(id),
    FOREIGN KEY (level_id) REFERENCES levels(id)
);

CREATE TABLE IF NOT EXISTS interests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    image_url VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255),
    role ENUM('admin', 'user') DEFAULT 'user',
    oauth TINYINT(1) NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS user_activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    current_language_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (current_language_id) REFERENCES languages(id)
);

CREATE TABLE IF NOT EXISTS user_conversations (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  title VARCHAR(255),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS conversations_messages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_conversations_id INT NOT NULL,
  content VARCHAR(255),
  message_type ENUM('SELF', 'SENDER') NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_conversations_id) REFERENCES user_conversations(id)
);

CREATE TABLE IF NOT EXISTS linguistic_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lt_name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS linguistic_concepts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lc_name VARCHAR(255) NOT NULL UNIQUE,
    linguistic_type_id INT,
    FOREIGN KEY (linguistic_type_id) REFERENCES linguistic_types(id)
);

CREATE TABLE IF NOT EXISTS actions_linguistic_concepts (
   linguistic_concept_id INT NOT NULL,
   action_id INT NOT NULL,
   FOREIGN KEY (linguistic_concept_id) REFERENCES linguistic_concepts(id),
   FOREIGN KEY (action_id) REFERENCES actions(id)
);

CREATE TABLE IF NOT EXISTS flashcards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    interest_id INT,
    linguistic_concept_id INT,
    language_id INT NOT NULL DEFAULT 1,
    FOREIGN KEY (linguistic_concept_id) REFERENCES linguistic_concepts(id),
    FOREIGN KEY (interest_id) REFERENCES interests(id),
    FOREIGN KEY (language_id) REFERENCES languages(id)
);

CREATE TABLE IF NOT EXISTS gap_fills (
    id INT AUTO_INCREMENT PRIMARY KEY,
    text TEXT NOT NULL,
    interest_id INT,
    linguistic_concept_id INT,
    language_id INT NOT NULL DEFAULT 1,
    FOREIGN KEY (linguistic_concept_id) REFERENCES linguistic_concepts(id),
    FOREIGN KEY (interest_id) REFERENCES interests(id),
    FOREIGN KEY (language_id) REFERENCES languages(id)
);

CREATE TABLE IF NOT EXISTS answers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    gap_fill_id INT,
    flashcard_id INT,
    answer VARCHAR(255),
    is_correct TINYINT(1),
    answer_order INT
);

CREATE TABLE IF NOT EXISTS user_profiles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    language_id INT NOT NULL,
    actions_levels_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (language_id) REFERENCES languages(id),
    FOREIGN KEY (actions_levels_id) REFERENCES actions_levels(id)
);

CREATE TABLE IF NOT EXISTS user_interests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    interest_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (interest_id) REFERENCES interests(id)
);

CREATE TABLE IF NOT EXISTS user_exercises (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    flashcard_id INT,
    gap_fill_id INT,
    completed TINYINT(1) DEFAULT 0,
    missed TINYINT(1) DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (flashcard_id) REFERENCES flashcards(id),
    FOREIGN KEY (gap_fill_id) REFERENCES gap_fills(id)
);

CREATE TABLE IF NOT EXISTS user_mistakes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    linguistic_concept_id INT NOT NULL,
    user_id INT NOT NULL,
    message_id INT,
    FOREIGN KEY (linguistic_concept_id) REFERENCES linguistic_concepts(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (message_id) REFERENCES conversations_messages(id)
);

CREATE TABLE IF NOT EXISTS events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    event_type ENUM('USER_CREATE', 'USER_UPDATE', 'USER_DELETE') NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS videos (
    id VARCHAR(36) PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    subtitle VARCHAR(255) NOT NULL,
    likes INT NOT NULL DEFAULT 0,
    language_id INT NOT NULL,
    FOREIGN KEY (language_id) REFERENCES languages(id)
);

CREATE TABLE IF NOT EXISTS video_category (
    video_id VARCHAR(36) NOT NULL,
    actions_levels_id INT NOT NULL,
    interest_id INT,
    FOREIGN KEY (video_id) REFERENCES videos(id),
    FOREIGN KEY (actions_levels_id) REFERENCES actions_levels(id),
    FOREIGN KEY (interest_id) REFERENCES interests(id)
);

CREATE TABLE IF NOT EXISTS user_videos (
    video_id VARCHAR(36) NOT NULL,
    user_id INT NOT NULL,
    liked TINYINT(1) NOT NULL DEFAULT 0,
    not_understood TINYINT(1) NOT NULL DEFAULT 0,
    FOREIGN KEY (video_id) REFERENCES videos(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    UNIQUE (video_id, user_id)
);