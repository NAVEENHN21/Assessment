use learners_academy;

CREATE TABLE subjects (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE teachers (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE classes (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE class_subjects (
  class_id INT,
  subject_id INT,
  PRIMARY KEY (class_id, subject_id),
  FOREIGN KEY (class_id) REFERENCES classes(id),
  FOREIGN KEY (subject_id) REFERENCES subjects(id)
);

CREATE TABLE class_teachers (
  class_id INT,
  teacher_id INT,
  PRIMARY KEY (class_id, teacher_id),
  FOREIGN KEY (class_id) REFERENCES classes(id),
  FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  class_id INT,
  FOREIGN KEY (class_id) REFERENCES classes(id)
);