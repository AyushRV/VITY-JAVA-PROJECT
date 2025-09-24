DROP TABLE IF EXISTS ENROLLMENTS;
DROP TABLE IF EXISTS COURSES;
DROP TABLE IF EXISTS STUDENTS;
DROP TABLE IF EXISTS INSTRUCTORS;

CREATE TABLE INSTRUCTORS (
    FiD VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(100)
);

CREATE TABLE STUDENTS (
    id INT AUTO_INCREMENT,
    reg_no VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    status VARCHAR(20),
    registration_date DATE,
    UNIQUE (id)
);

CREATE TABLE COURSES (
    code VARCHAR(10) PRIMARY KEY,
    title VARCHAR(100),
    credits INT,
    department VARCHAR(100),
    instructor_id VARCHAR(20),
    semester VARCHAR(20),
    CONSTRAINT fk_instructor FOREIGN KEY (instructor_id) REFERENCES INSTRUCTORS(FiD)
);

CREATE TABLE ENROLLMENTS (
    student_reg_no VARCHAR(20),
    course_code VARCHAR(10),
    grade VARCHAR(2),
    PRIMARY KEY (student_reg_no, course_code),
    CONSTRAINT fk_student FOREIGN KEY (student_reg_no) REFERENCES STUDENTS(reg_no),
    CONSTRAINT fk_course FOREIGN KEY (course_code) REFERENCES COURSES(code)
);
