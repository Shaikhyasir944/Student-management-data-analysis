# Student-management-data-analysis
Student Management Data Analysis using  SQL, for student performance insights..
# Database Set
Creates StudentManagement database and Students table with all required fields (StudentID as PK auto-increment, Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore).
# 12 Student Records 
with a good mix of genders, ages, grades (A/B/C), and score ranges.
All 7  Query
1
 shows all student details
2
AVG() per subject — class performance overview
3
ORDER BY TotalScore DESC LIMIT 1 — top performer
4
GROUP BY Grade + COUNT(*) — students per grade
5
GROUP BY Gender + AVG() — performance by gender
6
WHERE MathScore > 80 — high math scorers
7
UPDATE ... SET Grade — updates a student's grade
