
DROP VIEW IF EXISTS easy_math_questions_grade_7; CREATE VIEW easy_math_questions_grade_7 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 7 AND qd.part_type = 'A';


DROP VIEW IF EXISTS medium_math_questions_grade_7; CREATE VIEW medium_math_questions_grade_7 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 7 AND qd.part_type = 'B';


DROP VIEW IF EXISTS hard_math_questions_grade_7; CREATE VIEW hard_math_questions_grade_7 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 7 AND qd.part_type = 'C';


DROP VIEW IF EXISTS easy_math_questions_grade_8; CREATE VIEW easy_math_questions_grade_8 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 8 AND qd.part_type = 'A';


DROP VIEW IF EXISTS medium_math_questions_grade_8; CREATE VIEW medium_math_questions_grade_8 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 8 AND qd.part_type = 'B';


DROP VIEW IF EXISTS hard_math_questions_grade_8; CREATE VIEW hard_math_questions_grade_8 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 8 AND qd.part_type = 'C';


DROP VIEW IF EXISTS easy_math_questions_grade_9; CREATE VIEW easy_math_questions_grade_9 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 9 AND qd.part_type = 'A';


DROP VIEW IF EXISTS medium_math_questions_grade_9; CREATE VIEW medium_math_questions_grade_9 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 9 AND qd.part_type = 'B';


DROP VIEW IF EXISTS hard_math_questions_grade_9; CREATE VIEW hard_math_questions_grade_9 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 9 AND qd.part_type = 'C';


DROP VIEW IF EXISTS easy_math_questions_grade_10; CREATE VIEW easy_math_questions_grade_10 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 10 AND qd.part_type = 'A';


DROP VIEW IF EXISTS medium_math_questions_grade_10; CREATE VIEW medium_math_questions_grade_10 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 10 AND qd.part_type = 'B';


DROP VIEW IF EXISTS hard_math_questions_grade_10; CREATE VIEW hard_math_questions_grade_10 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 10 AND qd.part_type = 'C';


DROP VIEW IF EXISTS easy_math_questions_grade_11; CREATE VIEW easy_math_questions_grade_11 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 11 AND qd.part_type = 'A';


DROP VIEW IF EXISTS medium_math_questions_grade_11; CREATE VIEW medium_math_questions_grade_11 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 11 AND qd.part_type = 'B';


DROP VIEW IF EXISTS hard_math_questions_grade_11; CREATE VIEW hard_math_questions_grade_11 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 11 AND qd.part_type = 'C';


DROP VIEW IF EXISTS easy_math_questions_grade_12; CREATE VIEW easy_math_questions_grade_12 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 12 AND qd.part_type = 'A';


DROP VIEW IF EXISTS medium_math_questions_grade_12; CREATE VIEW medium_math_questions_grade_12 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 12 AND qd.part_type = 'B';


DROP VIEW IF EXISTS hard_math_questions_grade_12; CREATE VIEW hard_math_questions_grade_12 AS SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e, qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four, qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic FROM question AS q JOIN question_options AS qo ON qo.question_id = q.id JOIN question_solutions AS qs ON qs.question_id = q.id JOIN question_hints AS qh ON qh.question_id = q.id JOIN question_details AS qd ON qd.question_id = q.id WHERE qd.subject = 'math' AND qd.grade = 12 AND qd.part_type = 'C';


