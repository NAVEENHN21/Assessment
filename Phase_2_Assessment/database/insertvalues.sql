use learners_academy;

INSERT INTO subjects (id, name)
VALUES (1, 'Mathematics'), (2, 'English'), (3, 'Science'), (4, 'Social Studies');

INSERT INTO teachers (id, name)
VALUES (1, 'Chethana'), (2, 'Pavan'), (3, 'Ravi Kumar'), (4, 'Dinesh');

INSERT INTO classes (id, name)
VALUES (1, 'Class 1A'), (2, 'Class 1B'), (3, 'Class 2A'), (4, 'Class 2B');

INSERT INTO class_subjects (class_id, subject_id)
VALUES (1, 1), (1, 2), (1, 3), (1, 4), (2, 1), (2, 2), (2, 3), (2, 4),
 (3, 1), (3, 2), (3, 3), (3, 4), (4, 1), (4, 2), (4, 3), (4, 4);
 
INSERT INTO class_teachers (class_id, teacher_id)
VALUES (1, 1), (1, 2), (2, 2), (2, 3), (3, 3), (3, 4), (4, 1), (4, 4);

INSERT INTO students (id,name,class_id) VALUES (1, 'Sunil', 1),(2, 'Anil', 1),
(3, 'Arun', 2),(4, 'pavana', 2),(5, 'Anu', 3),(6, 'Vishwas', 3),
(7, 'Sumukh', 4),(8, 'Supriya', 4);