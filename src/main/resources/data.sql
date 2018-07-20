-- exams
INSERT INTO exam (name, description) VALUES ('Java exam', 'Show those Java skills!');
INSERT INTO exam (name, description) VALUES ('Quiz exam', 'Quiz up ya biatch');


-- Java questions with answers
INSERT INTO question (exam_id, name, multi_answer) VALUES (1, 'Virtual method invocation relates to:', 0);
INSERT INTO answer (question_id, name, is_correct) VALUES (1, 'Polymorphism', 1);
INSERT INTO answer (question_id, name, is_correct) VALUES (1, 'Functional Programming', 0);
INSERT INTO answer (question_id, name, is_correct) VALUES (1, 'Serialization', 0);

INSERT INTO question (exam_id, name, multi_answer) VALUES (1, 'Which kind of methods are new to Java 8?', 1);
INSERT INTO answer (question_id, name, is_correct) VALUES (2, 'Abstract methods', 0);
INSERT INTO answer (question_id, name, is_correct) VALUES (2, 'Default methods', 1);
INSERT INTO answer (question_id, name, is_correct) VALUES (2, 'Final methods', 0);

INSERT INTO question (exam_id, name, multi_answer) VALUES (1, 'The default access modifier is ?', 0);
INSERT INTO answer (question_id, name, is_correct) VALUES (3, 'package private', 1);
INSERT INTO answer (question_id, name, is_correct) VALUES (3, 'protected', 0);
INSERT INTO answer (question_id, name, is_correct) VALUES (3, 'public', 0);

 -- Quiz questions with answers
 INSERT INTO question (exam_id, name, multi_answer) VALUES (2, 'Which President served more than two termes?', 0);
 INSERT INTO answer (question_id, name, is_correct) VALUES (4, 'T. Roosevelt', 0);
 INSERT INTO answer (question_id, name, is_correct) VALUES (4, 'G. Bush senior', 0);
 INSERT INTO answer (question_id, name, is_correct) VALUES (4, 'F.D. Roosevelt', 1);

 INSERT INTO question (exam_id, name, multi_answer) VALUES (2, 'Who was the first triple time world champion of cycling?', 1);
 INSERT INTO answer (question_id, name, is_correct) VALUES (5, 'Peter Sagen', 0);
 INSERT INTO answer (question_id, name, is_correct) VALUES (5, 'Alfredo Binda', 1);
 INSERT INTO answer (question_id, name, is_correct) VALUES (5, 'Eddy Merckx', 0);

 INSERT INTO question (exam_id, name, multi_answer) VALUES (2, 'What video has the Youtube views record?', 0);
 INSERT INTO answer (question_id, name, is_correct) VALUES (6, 'Gangnam Style - Psy', 0);
 INSERT INTO answer (question_id, name, is_correct) VALUES (6, 'See You Again - Wiz Khalifa', 1);
 INSERT INTO answer (question_id, name, is_correct) VALUES (6, 'Roar - Katty Perrry', 0);
