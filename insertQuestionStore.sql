USE Mula;

INSERT INTO QuestionOptions (id, option_A, option_B, option_C, option_D, option_E) VALUES(1, '1', '4', '20', '21', '22');
INSERT INTO QuestionSolutions (id, correct_solution, diagram, explination) VALUES(1, '21', null, null);
INSERT INTO QuestionDetails (id, grade, part_type, part_number, part_size) VALUES(1, 9, 'A', 1, 10);
INSERT INTO QuestionHints (id, hint_one, hint_two, hint_three, hint_four) VALUES(1, null, null, null, null);
INSERT INTO Questions (id, question_snippet, diagram, options_id, solution_id, details_id, hints_id) VALUES(1, 'The expression $$\frac{22+20}{2}$$ is equal to', null, 1, 1, 1, 1);

INSERT INTO QuestionOptions (id, option_A, option_B, option_C, option_D, option_E) VALUES(2, '-4', '-3', '0', '3', '4');
INSERT INTO QuestionSolutions (id, correct_solution, diagram, explination) VALUES(2, '-3', null, 'On a number line, −3.4 is between −4 and −3. This means that −3.4 is closer to −4 and −3 than to any of 0, 3 or 4, and so the answer must be −4 or −3. If we start at −3 and move in the negative direction (that is, to the left), we reach −3.4 after moving 0.4 units. It then takes an additional 0.6 units to move in the negative direction from −3.4 to −4. Therefore, −3.4 is closer to −3 than to −4, and so the answer is (B) or −3. Alternatively, when comparing −3, −4 and −3.4, we could note that −3.4 is between −3.5 and −3 and so is closer to −3');
INSERT INTO QuestionDetails (id, grade, part_type, part_number, part_size) VALUES(2, 9, 'A', 4, 10);
INSERT INTO QuestionHints (id, hint_one, hint_two, hint_three, hint_four) VALUES(2, null, null, null, null);
INSERT INTO Questions (id, question_snippet, diagram, options_id, solution_id, details_id, hints_id) VALUES(2, 'Which of the following numbers is closest to −3.4', null, 2, 2, 2, 2);

