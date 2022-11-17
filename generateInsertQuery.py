'''
- Parse the questionStore json file
- Generate a insertion script for mysql DB
- Populate the DB
'''

import json

READFILE = 'questionStore.json'
WRITEFILE = 'insertQuestionStore.sql'

with open(READFILE, 'r') as f:
    data = json.load(f)

with open(WRITEFILE, 'w') as f:
    f.write("USE Mula;\n\n")
    count = 1
    for question in data['questions']:
        details = question['details']
        questionData = question['questionData']
        solutionData = question['solutionData']
        hints = question['hints']
        
        f.write(f"INSERT INTO question (id, question_snippet, diagram) VALUES({count}, {questionData['question']}, {questionData['diagram']});\n\n")
        f.write(f"INSERT INTO question_options (id, option_a, option_b, option_c, option_d, option_e, question_id) VALUES({count}, {questionData['optionA']}, {questionData['optionB']}, {questionData['optionC']}, {questionData['optionD']}, {questionData['optionE']}, {count});\n")
        f.write(f"INSERT INTO question_solutions (id, correct_solution, diagram, explanation, question_id) VALUES({count}, {solutionData['solution']}, {solutionData['diagram']}, {solutionData['explination']}, {count});\n")
        f.write(f"INSERT INTO question_details (id, grade, part_type, part_number, part_size, question_id) VALUES({count}, {details['grade']}, {details['partType']}, {details['partNumber']}, {details['partSize']}, {count});\n")
        f.write(f"INSERT INTO question_hints (id, hint_one, hint_two, hint_three, hint_four, question_id) VALUES({count}, {hints['hintOne']}, {hints['hintTwo']}, {hints['hintThree']}, {hints['hintFour']}, {count});\n")
        
        count += 1

