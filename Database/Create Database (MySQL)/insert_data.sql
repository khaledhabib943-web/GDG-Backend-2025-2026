-- ── 1. Departments (5) ──────────────────────────────────────
INSERT INTO Department (dept_name, dept_code, building_location) VALUES
    ('Computer Science',        'CS',   'Engineering Hall A'),
    ('Mathematics',             'MATH', 'Science Block B'),
    ('Physics',                 'PHY',  'Science Block C'),
    ('Business Administration', 'BUS',  'Commerce Tower'),
    ('Information Technology',  'IT',   'Engineering Hall B');


-- ── 2. Students (20) ────────────────────────────────────────
INSERT INTO Student (first_name, last_name, street, city, zip_code, date_of_birth, email) VALUES
    ('Ali',     'Hassan',  '12 Nile St',       'Cairo',       '11511', '2002-03-15', 'ali.hassan@uni.edu'),
    ('Sara',    'Ahmed',   '7 Pyramid Ave',    'Giza',        '12511', '2001-07-22', 'sara.ahmed@uni.edu'),
    ('Omar',    'Ibrahim', '33 Delta Rd',      'Alexandria',  '21511', '2003-01-10', 'omar.ibrahim@uni.edu'),
    ('Nour',    'Khalid',  '5 Sphinx Blvd',    'Cairo',       '11512', '2002-09-05', 'nour.khalid@uni.edu'),
    ('Youssef', 'Mostafa', '88 Cleopatra St',  'Cairo',       '11513', '2001-12-30', 'youssef.mostafa@uni.edu'),
    ('Layla',   'Farid',   '14 Harbor View',   'Alexandria',  '21512', '2003-04-18', 'layla.farid@uni.edu'),
    ('Karim',   'Samir',   '9 Oasis Ln',       'Luxor',       '85511', '2002-06-25', 'karim.samir@uni.edu'),
    ('Dina',    'Ramzi',   '22 Corniche Rd',   'Aswan',       '81511', '2001-11-03', 'dina.ramzi@uni.edu'),
    ('Tarek',   'Nabil',   '3 Pharaoh Ct',     'Giza',        '12512', '2003-08-14', 'tarek.nabil@uni.edu'),
    ('Rania',   'Magdy',   '55 Blue Nile St',  'Cairo',       '11514', '2002-02-27', 'rania.magdy@uni.edu'),
    ('Hassan',  'Fouad',   '17 Palm Grove',    'Sharm',       '46619', '2001-05-19', 'hassan.fouad@uni.edu'),
    ('Mona',    'Salah',   '6 Olive Tree Rd',  'Cairo',       '11515', '2003-10-07', 'mona.salah@uni.edu'),
    ('Amr',     'Zaki',    '44 Meridian Ave',  'Alexandria',  '21513', '2002-12-01', 'amr.zaki@uni.edu'),
    ('Hana',    'Wael',    '8 Jasmine St',     'Mansoura',    '35511', '2001-03-28', 'hana.wael@uni.edu'),
    ('Samy',    'Adel',    '19 Lotus Ln',      'Cairo',       '11516', '2003-07-09', 'samy.adel@uni.edu'),
    ('Aya',     'Hossam',  '31 Falcon Rd',     'Giza',        '12513', '2002-04-16', 'aya.hossam@uni.edu'),
    ('Khaled',  'Tawfik',  '2 Citadel St',     'Cairo',       '11517', '2001-09-23', 'khaled.tawfik@uni.edu'),
    ('Salma',   'Ashraf',  '77 Coral Bay',     'Hurghada',    '84511', '2003-01-31', 'salma.ashraf@uni.edu'),
    ('Mariam',  'Saber',   '10 Rosewood Ave',  'Alexandria',  '21514', '2002-08-12', 'mariam.saber@uni.edu'),
    ('Ziad',    'Hamdy',   '60 Crescent Blvd', 'Cairo',       '11518', '2001-06-06', 'ziad.hamdy@uni.edu');


-- ── 3. Instructors (20) ─────────────────────────────────────
-- dept_id: 1=CS, 2=MATH, 3=PHY, 4=BUS, 5=IT
INSERT INTO Instructor (first_name, last_name, salary, hire_date, street, city, zip_code, email, dept_id) VALUES
    ('Dr. Ahmed',   'Farouq',   95000.00, '2015-09-01', '5 Faculty Row',    'Cairo',      '11521', 'a.farouq@uni.edu',   1),
    ('Dr. Maha',    'Lotfy',    88000.00, '2018-01-15', '12 Campus Blvd',   'Giza',       '12521', 'm.lotfy@uni.edu',    1),
    ('Dr. Kamal',   'Siddiq',   91000.00, '2013-03-20', '3 Ivory Tower',    'Cairo',      '11522', 'k.siddiq@uni.edu',   1),
    ('Dr. Heba',    'Nasser',   85000.00, '2019-08-01', '9 Elm St',         'Alexandria', '21521', 'h.nasser@uni.edu',   1),
    ('Dr. Wael',    'Mansour',  78000.00, '2020-02-10', '7 Cedar Ave',      'Cairo',      '11523', 'w.mansour@uni.edu',  1),
    ('Dr. Laila',   'Bishara',  92000.00, '2014-06-01', '14 Maple Rd',      'Giza',       '12522', 'l.bishara@uni.edu',  1),
    ('Dr. Sameh',   'Ghali',    80000.00, '2017-11-01', '21 Pine St',       'Cairo',      '11524', 's.ghali@uni.edu',    2),
    ('Dr. Noha',    'Rizk',     76000.00, '2021-01-05', '6 Oak Ave',        'Alexandria', '21522', 'n.rizk@uni.edu',     2),
    ('Dr. Fady',    'Aziz',     83000.00, '2016-07-15', '18 Birch Ln',      'Cairo',      '11525', 'f.aziz@uni.edu',     2),
    ('Dr. Reem',    'Salem',    79000.00, '2019-04-20', '4 Walnut Blvd',    'Mansoura',   '35521', 'r.salem@uni.edu',    2),
    ('Dr. Tarek',   'Helmy',    97000.00, '2012-09-01', '2 Summit Rd',      'Cairo',      '11526', 't.helmy@uni.edu',    3),
    ('Dr. Iman',    'Youssef',  81000.00, '2018-03-10', '11 Valley St',     'Giza',       '12523', 'i.youssef@uni.edu',  3),
    ('Dr. Basel',   'Omar',     74000.00, '2022-06-01', '30 River Ave',     'Alexandria', '21523', 'b.omar@uni.edu',     3),
    ('Dr. Hana',    'Khalil',   86000.00, '2015-12-01', '8 Lake Rd',        'Cairo',      '11527', 'h.khalil@uni.edu',   4),
    ('Dr. Sherif',  'Badawi',   90000.00, '2014-04-15', '16 Hill Blvd',     'Cairo',      '11528', 's.badawi@uni.edu',   4),
    ('Dr. Dalia',   'Fouad',    77000.00, '2020-09-01', '5 Forest Ln',      'Alexandria', '21524', 'd.fouad@uni.edu',    4),
    ('Dr. Mostafa', 'Adly',     93000.00, '2013-01-20', '9 Tech Park Rd',   'Cairo',      '11529', 'm.adly@uni.edu',     5),
    ('Dr. Yasmine', 'Hamdi',    84000.00, '2017-05-15', '3 Innovation Ave', 'Giza',       '12524', 'y.hamdi@uni.edu',    5),
    ('Dr. Amir',    'Salim',    87000.00, '2016-08-01', '22 Digital St',    'Cairo',      '11530', 'a.salim@uni.edu',    5),
    ('Dr. Nadia',   'Wahba',    75000.00, '2021-10-01', '7 Network Blvd',   'Mansoura',   '35522', 'n.wahba@uni.edu',    5);


-- ── 4. Assign Heads of Departments ──────────────────────────
-- CS → instructor 1, MATH → 7, PHY → 11, BUS → 14, IT → 17
UPDATE Department SET head_of_dept_id = 1  WHERE dept_code = 'CS';
UPDATE Department SET head_of_dept_id = 7  WHERE dept_code = 'MATH';
UPDATE Department SET head_of_dept_id = 11 WHERE dept_code = 'PHY';
UPDATE Department SET head_of_dept_id = 14 WHERE dept_code = 'BUS';
UPDATE Department SET head_of_dept_id = 17 WHERE dept_code = 'IT';


-- ── 5. Student Phone Numbers ─────────────────────────────────
INSERT INTO StudentPhone (student_id, phone_number) VALUES
    (1,  '+20-100-1234567'), (1,  '+20-112-9876543'),
    (2,  '+20-101-2345678'),
    (3,  '+20-102-3456789'), (3,  '+20-115-8765432'),
    (4,  '+20-103-4567890'),
    (5,  '+20-106-5678901'), (5,  '+20-128-7654321'),
    (6,  '+20-107-6789012'),
    (7,  '+20-108-7890123'),
    (8,  '+20-109-8901234'), (8,  '+20-110-0987654'),
    (9,  '+20-111-9012345'),
    (10, '+20-114-0123456'),
    (11, '+20-116-1234567'), (11, '+20-117-2345678'),
    (12, '+20-118-3456789'),
    (13, '+20-119-4567890'),
    (14, '+20-120-5678901'),
    (15, '+20-121-6789012'), (15, '+20-122-7890123'),
    (16, '+20-123-8901234'),
    (17, '+20-124-9012345'),
    (18, '+20-125-0123456'), (18, '+20-126-1234567'),
    (19, '+20-127-2345678'),
    (20, '+20-129-3456789');


-- ── 6. Instructor Phone Numbers ──────────────────────────────
INSERT INTO InstructorPhone (instructor_id, phone_number) VALUES
    (1,  '+20-100-9111111'), (2,  '+20-101-9222222'),
    (3,  '+20-102-9333333'), (3,  '+20-103-9444444'),
    (4,  '+20-104-9555555'), (5,  '+20-105-9666666'),
    (6,  '+20-106-9777777'), (7,  '+20-107-9888888'),
    (8,  '+20-108-9999999'), (9,  '+20-109-9000000'),
    (10, '+20-110-8111111'), (11, '+20-111-8222222'),
    (12, '+20-112-8333333'), (13, '+20-113-8444444'),
    (14, '+20-114-8555555'), (15, '+20-115-8666666'),
    (16, '+20-116-8777777'), (17, '+20-117-8888888'),
    (18, '+20-118-8999999'), (19, '+20-119-8000000'),
    (20, '+20-120-7111111');


-- ── 7. Courses (12) ──────────────────────────────────────────
-- dept_id: 1=CS, 2=MATH, 3=PHY, 4=BUS, 5=IT
INSERT INTO Course (course_code, title, credits, dept_id) VALUES
    ('CS101',   'Introduction to Programming',  3, 1),
    ('CS102',   'Data Structures',              3, 1),
    ('CS201',   'Algorithms',                   3, 1),
    ('CS301',   'Database Systems',             3, 1),
    ('CS401',   'Software Engineering',         3, 1),
    ('MATH101', 'Calculus I',                   4, 2),
    ('MATH102', 'Calculus II',                  4, 2),
    ('MATH201', 'Linear Algebra',               3, 2),
    ('PHY101',  'General Physics I',            4, 3),
    ('BUS101',  'Principles of Management',     3, 4),
    ('IT101',   'Network Fundamentals',         3, 5),
    ('IT201',   'Web Development',              3, 5);


-- ── 8. Course Prerequisites (Recursive relationship) ─────────
INSERT INTO CoursePrerequisite (course_id, prereq_id) VALUES
    (2,  1),   -- CS102  requires CS101
    (3,  2),   -- CS201  requires CS102
    (4,  3),   -- CS301  requires CS201
    (5,  4),   -- CS401  requires CS301
    (7,  6),   -- MATH102 requires MATH101
    (8,  7),   -- MATH201 requires MATH102
    (12, 11);  -- IT201  requires IT101


-- ── 9. Dependents (Weak Entity, 10 records) ──────────────────
INSERT INTO Dependent (student_id, dep_name, birthdate, relationship) VALUES
    (1,  'Fatma Hassan',  '2010-05-12', 'Sibling'),
    (2,  'Khaled Ahmed',  '2008-11-23', 'Sibling'),
    (3,  'Leila Ibrahim', '2015-07-04', 'Child'),
    (5,  'Nadia Mostafa', '1975-03-19', 'Parent'),
    (7,  'Yasmine Samir', '2012-09-30', 'Sibling'),
    (9,  'Hana Nabil',    '2018-01-15', 'Child'),
    (11, 'Sherif Fouad',  '2005-06-22', 'Sibling'),
    (13, 'Rana Zaki',     '2020-12-01', 'Child'),
    (15, 'Maged Adel',    '2009-04-17', 'Sibling'),
    (17, 'Nour Tawfik',   '2000-08-08', 'Spouse');


-- ── 10. Enrollments (32 records) ─────────────────────────────
INSERT INTO Enrollment (student_id, course_id, enroll_date, grade) VALUES
    -- CS101 (course_id = 1)
    (1,  1,  '2024-09-01', 'A'),
    (2,  1,  '2024-09-01', 'B+'),
    (3,  1,  '2024-09-01', 'A-'),
    (4,  1,  '2024-09-02', 'B'),
    (5,  1,  '2024-09-02', 'C+'),
    (6,  1,  '2024-09-03', 'A'),
    (7,  1,  '2024-09-03', 'B-'),
    -- CS102 (course_id = 2)
    (1,  2,  '2024-09-01', 'B+'),
    (3,  2,  '2024-09-01', 'A-'),
    (8,  2,  '2024-09-04', 'C'),
    -- CS201 (course_id = 3)
    (1,  3,  '2024-09-01', 'A'),
    (9,  3,  '2024-09-04', 'B'),
    -- CS301 (course_id = 4)
    (1,  4,  '2025-01-10', NULL),
    (10, 4,  '2025-01-11', 'A-'),
    -- CS401 (course_id = 5)
    (11, 5,  '2025-01-10', 'B+'),
    -- MATH101 (course_id = 6)
    (2,  6,  '2024-09-01', 'A'),
    (4,  6,  '2024-09-02', 'B'),
    (12, 6,  '2024-09-05', 'A-'),
    (13, 6,  '2024-09-05', 'C+'),
    -- MATH102 (course_id = 7)
    (5,  7,  '2025-01-10', 'B-'),
    (14, 7,  '2025-01-12', 'A'),
    -- MATH201 (course_id = 8)
    (15, 8,  '2025-01-10', 'B'),
    -- PHY101 (course_id = 9)
    (6,  9,  '2024-09-03', 'A'),
    (16, 9,  '2024-09-06', 'B+'),
    (17, 9,  '2024-09-06', 'C'),
    -- BUS101 (course_id = 10)
    (7,  10, '2024-09-03', 'B'),
    (18, 10, '2025-01-13', 'A-'),
    -- IT101 (course_id = 11)
    (8,  11, '2024-09-04', 'B+'),
    (19, 11, '2025-01-13', 'A'),
    (20, 11, '2025-01-14', 'B'),
    -- IT201 (course_id = 12)
    (9,  12, '2025-01-14', NULL),
    (20, 12, '2025-01-14', 'B+');
