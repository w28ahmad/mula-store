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
        
        f.write(f"INSERT INTO question_options (id, option_A, option_B, option_C, option_D, option_E) VALUES({count}, {questionData['optionA']}, {questionData['optionB']}, {questionData['optionC']}, {questionData['optionD']}, {questionData['optionE']});\n")
        f.write(f"INSERT INTO question_solutions (id, correct_solution, diagram, explination) VALUES({count}, {solutionData['solution']}, {solutionData['diagram']}, {solutionData['explination']});\n")
        f.write(f"INSERT INTO question_details (id, grade, part_type, part_number, part_size) VALUES({count}, {details['grade']}, {details['partType']}, {details['partNumber']}, {details['partSize']});\n")
        f.write(f"INSERT INTO question_hints (id, hint_one, hint_two, hint_three, hint_four) VALUES({count}, {hints['hintOne']}, {hints['hintTwo']}, {hints['hintThree']}, {hints['hintFour']});\n")
        f.write(f"INSERT INTO question (id, question_snippet, diagram, options_id, solution_id, details_id, hints_id) VALUES({count}, {questionData['question']}, {questionData['diagram']}, {count}, {count}, {count}, {count});\n\n")
        
        count += 1

