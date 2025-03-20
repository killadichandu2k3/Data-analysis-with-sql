-- Create Students Table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    MathScore INT NOT NULL,
    TotalScore INT NOT NULL
);

-- Insert Sample Data
INSERT INTO Students (Name, MathScore, TotalScore) VALUES
('Aryan Gupta', 85, 265),
('Meera Iyer', 78, 242),
('Karan Rao', 65, 203),
('Sneha Patel', 90, 276),
('Rohan Das', 82, 247),
('Priya Sharma', 88, 268),
('Vikram Singh', 60, 188),
('Ananya Reddy', 95, 275),
('Rahul Jain', 78, 240),
('Ishita Nair', 85, 260);
-- Display student names, total scores, and rank based on total scores
SELECT Name, TotalScore,
       RANK() OVER (ORDER BY TotalScore DESC) AS StudentRank
FROM Students;
-- Display running total of Math Scores in the order of StudentID
SELECT Name, MathScore,
       SUM(MathScore) OVER (ORDER BY StudentID) AS RunningTotal
FROM Students;
-- Display dense rank of students based on total scores
SELECT Name, TotalScore,
       DENSE_RANK() OVER (ORDER BY TotalScore DESC) AS DenseRank
FROM Students;
-- Calculate and display the average Math Score
SELECT AVG(MathScore) AS AverageMathScore
FROM Students;
