CREATE DATABASE edpro;
\c edpro;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  photo TEXT,
  full_name VARCHAR(255) NOT NULL,
  username VARCHAR(100) UNIQUE,
  email VARCHAR(255) UNIQUE NOT NULL,
  phone VARCHAR(20),
  password TEXT NOT NULL,
  role VARCHAR(50) DEFAULT 'aluno',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE courses (
  id SERIAL PRIMARY KEY,
  owner_id INT NOT NULL,
  photo TEXT,
  title VARCHAR(100) NOT NULL,
  description TEXT,
  category TEXT,
  CONSTRAINT fk_courses_owner FOREIGN KEY (owner_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE lessons (
  id SERIAL PRIMARY KEY,
  course_id INT NOT NULL,
  title TEXT NOT NULL,
  subtitle TEXT,
  content TEXT NOT NULL,
  media TEXT,
  CONSTRAINT fk_lessons_course FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE
);

CREATE TABLE enrollments (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  course_id INT NOT NULL,
  CONSTRAINT fk_enrollments_student FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  CONSTRAINT fk_enrollments_course FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE
);