
-- ── 1. Department ────────────────────────────────────────────
CREATE TABLE Department (
    dept_id            INT           NOT NULL AUTO_INCREMENT,
    dept_name          VARCHAR(100)  NOT NULL,
    dept_code          CHAR(10)      NOT NULL,
    building_location  VARCHAR(100)  NOT NULL,
    head_of_dept_id    INT           DEFAULT NULL,
    PRIMARY KEY (dept_id),
    UNIQUE KEY uq_dept_name (dept_name),
    UNIQUE KEY uq_dept_code (dept_code),
    UNIQUE KEY uq_dept_head (head_of_dept_id)  
);


-- ── 2. Student ───────────────────────────────────────────────
CREATE TABLE Student (
    student_id    INT           NOT NULL AUTO_INCREMENT,
    first_name    VARCHAR(50)   NOT NULL,
    last_name     VARCHAR(50)   NOT NULL,
    street        VARCHAR(150)  NOT NULL,
    city          VARCHAR(100)  NOT NULL,
    zip_code      CHAR(10)      NOT NULL,
    date_of_birth DATE          NOT NULL,
    email         VARCHAR(150)  NOT NULL,
    PRIMARY KEY (student_id),
    UNIQUE KEY uq_student_email (email),
);


-- ── 3. Instructor ────────────────────────────────────────────
CREATE TABLE Instructor (
    instructor_id  INT            NOT NULL AUTO_INCREMENT,
    first_name     VARCHAR(50)    NOT NULL,
    last_name      VARCHAR(50)    NOT NULL,
    salary         DECIMAL(10,2)  NOT NULL,
    hire_date      DATE           NOT NULL,
    street         VARCHAR(150)   NOT NULL,
    city           VARCHAR(100)   NOT NULL,
    zip_code       CHAR(10)       NOT NULL,
    email          VARCHAR(150)   NOT NULL,
    dept_id        INT            NOT NULL,
    PRIMARY KEY (instructor_id),
    UNIQUE KEY uq_instructor_email (email),
    CONSTRAINT chk_salary CHECK (salary > 0),
    CONSTRAINT fk_instructor_dept
        FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
        ON DELETE RESTRICT ON UPDATE CASCADE
);


ALTER TABLE Department
    ADD CONSTRAINT fk_dept_head
        FOREIGN KEY (head_of_dept_id) REFERENCES Instructor(instructor_id)
        ON DELETE SET NULL ON UPDATE CASCADE;


-- ── 4. Student Phone Numbers (Multivalued) ───────────────────
CREATE TABLE StudentPhone (
    student_id    INT          NOT NULL,
    phone_number  VARCHAR(20)  NOT NULL,
    PRIMARY KEY (student_id, phone_number),
    CONSTRAINT fk_stphone_student
        FOREIGN KEY (student_id) REFERENCES Student(student_id)
        ON DELETE CASCADE
);


-- ── 5. Instructor Phone Numbers (Multivalued) ────────────────
CREATE TABLE InstructorPhone (
    instructor_id  INT          NOT NULL,
    phone_number   VARCHAR(20)  NOT NULL,
    PRIMARY KEY (instructor_id, phone_number),
    CONSTRAINT fk_inphone_instructor
        FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id)
        ON DELETE CASCADE
);


-- ── 6. Course ────────────────────────────────────────────────
CREATE TABLE Course (
    course_id    INT           NOT NULL AUTO_INCREMENT,
    course_code  VARCHAR(10)   NOT NULL,
    title        VARCHAR(150)  NOT NULL,
    credits      TINYINT       NOT NULL,
    dept_id      INT           NOT NULL,
    PRIMARY KEY (course_id),
    UNIQUE KEY uq_course_code (course_code),
    CONSTRAINT chk_credits CHECK (credits BETWEEN 1 AND 6),
    CONSTRAINT fk_course_dept
        FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
        ON DELETE RESTRICT ON UPDATE CASCADE
);


-- ── 7. Course Prerequisites  ──────────────────
CREATE TABLE CoursePrerequisite (
    course_id  INT  NOT NULL,   
    prereq_id  INT  NOT NULL,  
    PRIMARY KEY (course_id, prereq_id),
    CONSTRAINT chk_no_self_prereq CHECK (course_id <> prereq_id),
    CONSTRAINT fk_cp_course FOREIGN KEY (course_id) REFERENCES Course(course_id) ON DELETE CASCADE,
    CONSTRAINT fk_cp_prereq FOREIGN KEY (prereq_id) REFERENCES Course(course_id) ON DELETE CASCADE
);


-- ── 8. Dependent  ──────────────
CREATE TABLE Dependent (
    dependent_id  INT           NOT NULL AUTO_INCREMENT,
    student_id    INT           NOT NULL,
    dep_name      VARCHAR(100)  NOT NULL,
    birthdate     DATE          NOT NULL,
    relationship  VARCHAR(50)   NOT NULL,
    PRIMARY KEY (dependent_id),
    UNIQUE KEY uq_dep_per_student (student_id, dep_name),  -- partial key
    CONSTRAINT chk_relationship
        CHECK (relationship IN ('Spouse','Child','Parent','Sibling','Other')),
    CONSTRAINT fk_dep_student
        FOREIGN KEY (student_id) REFERENCES Student(student_id)
        ON DELETE CASCADE  
);


-- ── 9. Enrollment  ──────────────────────
CREATE TABLE Enrollment (
    enrollment_id  INT      NOT NULL AUTO_INCREMENT,
    student_id     INT      NOT NULL,
    course_id      INT      NOT NULL,
    enroll_date    DATE     NOT NULL,
    grade          CHAR(2)  DEFAULT NULL,
    PRIMARY KEY (enrollment_id),
    UNIQUE KEY uq_enrollment (student_id, course_id), 
    CONSTRAINT chk_grade
        CHECK (grade IN ('A+','A','A-','B+','B','B-','C+','C','C-','D','F') OR grade IS NULL),
    CONSTRAINT fk_enroll_student
        FOREIGN KEY (student_id) REFERENCES Student(student_id) ON DELETE CASCADE,
    CONSTRAINT fk_enroll_course
        FOREIGN KEY (course_id)  REFERENCES Course(course_id)   ON DELETE CASCADE
);
