-- Create the Employees table if it does not exist
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    LastUpdated DATE, 
    Status VARCHAR(10) DEFAULT 'Active'
);
-- Insert sample data into the Employees table
INSERT INTO Employees (Name, Department, Salary, LastUpdated, Status) VALUES
('Aryan Gupta', 'IT', 60000.00, CURDATE(), 'Active'),
('Meera Iyer', 'HR', 55000.00, CURDATE(), 'Active'),
('Karan Rao', 'Finance', 52000.00, CURDATE(), 'Active'),
('Sneha Patel', 'IT', 62000.00, CURDATE(), 'Active'),
('Rohan Das', 'HR', 50000.00, CURDATE(), 'Active');
-- Update the new columns with default values (if needed)
UPDATE Employees SET LastUpdated = CURDATE() WHERE LastUpdated IS NULL;
UPDATE Employees SET Status = 'Active' WHERE Status IS NULL;
-- Delete records where Status is 'Inactive'
DELETE FROM Employees WHERE Status = 'Inactive';
-- Delete records older than a specific date
DELETE FROM Employees WHERE LastUpdated < '2024-01-01';
-- Verify the table after modifications
SELECT * FROM Employees;