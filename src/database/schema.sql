CREATE DATABASE edpro;

\c edpro;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    type VARCHAR(20) NOT NULL CHECK (type IN ('student', 'instructor', 'admin'))
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    owner_id INT NOT NULL,
    phone VARCHAR(15),
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
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    CONSTRAINT fk_enrollments_student FOREIGN KEY (student_id) REFERENCES users(id) ON DELETE CASCADE,
    CONSTRAINT fk_enrollments_course FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE
);
