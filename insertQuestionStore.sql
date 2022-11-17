USE Mula;

INSERT INTO question (id, question_snippet, diagram) VALUES(1, 'The expression $$\\frac{22+20}{2}$$ is equal to', null);

INSERT INTO question_options (id, option_a, option_b, option_c, option_d, option_e, question_id) VALUES(1, '1', '4', '20', '21', '22', 1);
INSERT INTO question_solutions (id, correct_solution, diagram, explanation, question_id) VALUES(1, '21', null, null, 1);
INSERT INTO question_details (id, grade, part_type, part_number, part_size, question_id) VALUES(1, 9, 'A', 1, 10, 1);
INSERT INTO question_hints (id, hint_one, hint_two, hint_three, hint_four, question_id) VALUES(1, null, null, null, null, 1);
INSERT INTO question (id, question_snippet, diagram) VALUES(2, 'The value of $$\\frac{1}{2} + \\frac{2}{4} + \\frac{4}{8} + \\frac{8}{16}$$ is', null);

INSERT INTO question_options (id, option_a, option_b, option_c, option_d, option_e, question_id) VALUES(2, '$\\frac{1}{4}$', '$\\frac{1}{2}$', '0', '4', '2', 2);
INSERT INTO question_solutions (id, correct_solution, diagram, explanation, question_id) VALUES(2, '2', null, '$$\\frac{1}{2} + \\frac{1}{2} + \\frac{1}{2} + \\frac{1}{2} = 2$$', 2);
INSERT INTO question_details (id, grade, part_type, part_number, part_size, question_id) VALUES(2, 9, 'A', 3, 10, 2);
INSERT INTO question_hints (id, hint_one, hint_two, hint_three, hint_four, question_id) VALUES(2, null, null, null, null, 2);
INSERT INTO question (id, question_snippet, diagram) VALUES(3, 'Which of the following numbers is closest to -3.4', null);

INSERT INTO question_options (id, option_a, option_b, option_c, option_d, option_e, question_id) VALUES(3, '-4', '-3', '0', '3', '4', 3);
INSERT INTO question_solutions (id, correct_solution, diagram, explanation, question_id) VALUES(3, '-3', null, 'On a number line, -3.4 is between -4 and -3. This means that -3.4 is closer to -4 and -3 than to any of 0, 3 or 4, and so the answer must be -4 or -3. If we start at -3 and move in the negative direction (that is, to the left), we reach -3.4 after moving 0.4 units. It then takes an additional 0.6 units to move in the negative direction from -3.4 to -4. Therefore, -3.4 is closer to -3 than to -4, and so the answer is (B) or -3. Alternatively, when comparing -3, -4 and -3.4, we could note that -3.4 is between -3.5 and -3 and so is closer to -3', 3);
INSERT INTO question_details (id, grade, part_type, part_number, part_size, question_id) VALUES(3, 9, 'A', 4, 10, 3);
INSERT INTO question_hints (id, hint_one, hint_two, hint_three, hint_four, question_id) VALUES(3, null, null, null, null, 3);
INSERT INTO question (id, question_snippet, diagram) VALUES(4, 'Robyn has 4 tasks to do and Sasha has 14 tasks to do. In order for Robyn and Sasha to do the same number of tasks, how many of Sasha\'s tasks should Robyn do?', null);

INSERT INTO question_options (id, option_a, option_b, option_c, option_d, option_e, question_id) VALUES(4, '6', '4', '5', '7', '2', 4);
INSERT INTO question_solutions (id, correct_solution, diagram, explanation, question_id) VALUES(4, '5', null, 'Between them, Robyn and Sasha have 4 + 14 = 18 tasks to do. If each does the same number of tasks, each must do 18 ÷ 2 = 9 tasks. This means that Robyn must do 9 - 4 = 5 of Sasha\'s tasks.', 4);
INSERT INTO question_details (id, grade, part_type, part_number, part_size, question_id) VALUES(4, 9, 'A', 6, 10, 4);
INSERT INTO question_hints (id, hint_one, hint_two, hint_three, hint_four, question_id) VALUES(4, null, null, null, null, 4);
