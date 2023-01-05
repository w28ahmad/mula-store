# Set the grades and difficulty levels
grades=(7 8 9 10 11 12)
difficulties=(easy medium hard)

# Set the subject
subject=math

# Set the view name prefix and suffix
prefix=
suffix=questions

# Clear file
echo '' > createQuestionStoreView.sql

# Iterate over the grades and difficulties
for grade in "${grades[@]}"; do
  for difficulty in "${difficulties[@]}"; do
    # Generate the view name
    view_name="$difficulty"_"$subject"_"$suffix"_grade_"$grade"

    # Set the part_type based on the difficulty level
    if [ "$difficulty" == "easy" ]; then
        part_type="A"
    elif [ "$difficulty" == "medium" ]; then
        part_type="B"
    else
        part_type="C"
    fi

    
    # Generate the SQL statement
    statement="DROP VIEW IF EXISTS $view_name;
        CREATE VIEW $view_name AS
        SELECT q.id AS question_id, q.question_snippet, qo.option_a, qo.option_b, qo.option_c, qo.option_d, qo.option_e,
            qs.correct_solution, qs.explanation, qh.hint_one, qh.hint_two, qh.hint_three, qh.hint_four,
            qd.grade, qd.part_type, qd.part_number, qd.part_size, qd.subject, qd.topic
        FROM question AS q
        JOIN question_options AS qo ON qo.question_id = q.id
        JOIN question_solutions AS qs ON qs.question_id = q.id
        JOIN question_hints AS qh ON qh.question_id = q.id
        JOIN question_details AS qd ON qd.question_id = q.id
        WHERE qd.subject = '$subject' AND qd.grade = $grade AND qd.part_type = '$part_type';\n\n"
    
    # Print the SQL statement
    echo $statement >> createQuestionStoreView.sql
    done
done