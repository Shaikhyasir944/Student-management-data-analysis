#create database studentManagement;

USE StudentManagement;

-- Create Students Table
CREATE TABLE IF NOT EXISTS Students (
    StudentID   INT PRIMARY KEY AUTO_INCREMENT,
    Name        VARCHAR(50),
    Gender      CHAR(1),
    Age         INT,
    Grade       VARCHAR(2),
    MathScore   INT,
    ScienceScore INT,
    EnglishScore INT
);

-- ============================================
-- 2. INSERT DATA (12 records with variety)
-- ==========================================
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES
('Alice Johnson',   'F', 16, 'A',  92, 88, 95),
('Bob Smith',       'M', 17, 'B',  75, 80, 70),
('Carol Williams',  'F', 15, 'A',  89, 91, 87),
('David Brown',     'M', 16, 'C',  60, 65, 58),
('Eva Martinez',    'F', 17, 'B',  78, 74, 82),
('Frank Lee',       'M', 15, 'A',  95, 90, 88),
('Grace Kim',       'F', 16, 'B',  72, 68, 76),
('Henry Davis',     'M', 17, 'C',  55, 60, 62),
('Isabella Wilson', 'F', 15, 'A',  91, 93, 96),
('James Taylor',    'M', 16, 'B',  83, 77, 79),
('Karen White',     'F', 17, 'C',  63, 59, 67),
('Liam Anderson',   'M', 15, 'A',  87, 85, 90);

-- ============================================
-- 3. SQL QUERIES
-- ============================================

-- Query 1: Show All Student Details

SELECT * FROM Students;

-- Query 2: Average Score in Each Subject

SELECT
    ROUND(AVG(MathScore), 2)    AS AvgMath,
    ROUND(AVG(ScienceScore), 2) AS AvgScience,
    ROUND(AVG(EnglishScore), 2) AS AvgEnglish
FROM Students;

-- Query 3: Top Performer (Highest Total Score)

SELECT
    Name,
    Grade,
    MathScore,
    ScienceScore,
    EnglishScore,
    (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

-- Query 4: Count Students Per Grade

SELECT
    Grade,
    COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade
ORDER BY Grade;

-- Query 5: Average Score by Gender

SELECT
    Gender,
    ROUND(AVG(MathScore), 2)    AS AvgMath,
    ROUND(AVG(ScienceScore), 2) AS AvgScience,
    ROUND(AVG(EnglishScore), 2) AS AvgEnglish,
    ROUND(AVG(MathScore + ScienceScore + EnglishScore), 2) AS AvgTotal
FROM Students
GROUP BY Gender;

-- Query 6: Students with MathScore > 80

SELECT
    StudentID,
    Name,
    Grade,
    MathScore
FROM Students
WHERE MathScore > 80
ORDER BY MathScore DESC;

-- Query 7: Update a Student's Grade
UPDATE Students
SET Grade = 'B'
WHERE StudentID = 1;