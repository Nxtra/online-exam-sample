-- Exams
INSERT INTO EXAM (name, description) VALUES ('Java Exam', 'Show your Java skills!');


-- Java Questions with Answers
INSERT INTO QUESTION (exam_id, name, multi_answer) VALUES (1, 'Virtual method invocation relates to:', 0);
INSERT INTO ANSWER (question_id, name, is_correct) VALUES (1, 'Polymorphism', 1);
INSERT INTO ANSWER (question_id, name, is_correct) VALUES (1, 'Functional Programming', 0);
INSERT INTO ANSWER (question_id, name, is_correct) VALUES (1, 'Serialization', 0);

INSERT INTO QUESTION (exam_id, name, multi_answer) VALUES (1, 'Which kind of methods are new to Java 8?', 1);
INSERT INTO ANSWER (question_id, name, is_correct) VALUES (2, 'Abstract methods', 0);
INSERT INTO ANSWER (question_id, name, is_correct) VALUES (2, 'Default methods', 1);
INSERT INTO ANSWER (question_id, name, is_correct) VALUES (2, 'Final methods', 1);

INSERT INTO QUESTION (exam_id, name, multi_answer) VALUES (1, 'The default access modifier is ?', 0);
INSERT INTO ANSWER (question_id, name, is_correct) VALUES (3, 'package private', 1);
INSERT INTO ANSWER (question_id, name, is_correct) VALUES (3, 'protected', 0);
INSERT INTO ANSWER (question_id, name, is_correct) VALUES (3, 'public', 0);

-- -- Scala Questions with Answers
-- INSERT INTO QUESTION (exam_id, name, multi_answer) VALUES (2, 'How to write a for loop?', 0);
-- INSERT INTO ANSWER (question_id, name, is_correct) VALUES (4, 'for (i <- 0 until 10) { ... }', 1);
-- INSERT INTO ANSWER (question_id, name, is_correct) VALUES (4, 'for (int i=0; i < 10; i++) { ... }', 0);
-- INSERT INTO ANSWER (question_id, name, is_correct) VALUES (4, 'Scala have no for loops', 0);
--
-- INSERT INTO QUESTION (exam_id, name, multi_answer) VALUES (2, 'What is Scala?', 1);
-- INSERT INTO ANSWER (question_id, name, is_correct) VALUES (5, 'Programming language', 1);
-- INSERT INTO ANSWER (question_id, name, is_correct) VALUES (5, 'Teatro La Scala, Milano, Italy', 1);
-- INSERT INTO ANSWER (question_id, name, is_correct) VALUES (5, 'The Rock in Russia', 1);
--
-- INSERT INTO QUESTION (exam_id, name, multi_answer) VALUES (2, 'Can I use existing Java code from Scala?', 0);
-- INSERT INTO ANSWER (question_id, name, is_correct) VALUES (6, 'Yes', 1);
-- INSERT INTO ANSWER (question_id, name, is_correct) VALUES (6, 'No', 0);
-- INSERT INTO ANSWER (question_id, name, is_correct) VALUES (6, 'Only starting from Java 8', 0);
