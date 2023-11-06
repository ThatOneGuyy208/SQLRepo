#7.57
# Update EmployeeNumber 11 Phone to 360-287-8810
UPDATE EMPLOYEE
SET OfficePhone = '360-287-8810'
WHERE EmployeeNumber = 11;

#7.58
# Update EmployeeNumber 5 Department to Finance
UPDATE EMPLOYEE
SET Department = 'Finance'
WHERE EmployeeNumber = 5;

#7.61
# Update (ASSIGNMENT) HoursWorked to 60 for EmployeeNumber 10
UPDATE ASSIGNMENT
SET HoursWorked = 60
WHERE EmployeeNumber = 10;

#7.63 (don't run)
# Delete all date for Project '2021 Q3 Production Plan' and its rows in ASSIGNMENT
# DELETE FROM PROJECT
# WHERE ProjectName = '2021 Q3 Production Plan';

#7.68
# Create view FinanceEmployeePhoneView, show EMPLOYEE.Last/FirstName (EmployeeLast/FirstName) and EMPLOYEE.OfficePhone (EmployeePhone)
#for Finance Department Employees. Then Test view
CREATE VIEW FinanceEmployeePhoneView AS
SELECT LastName AS EmployeeLastName, FirstName AS EmployeeFirstName, OfficePhone AS EmployeePhone
FROM EMPLOYEE
WHERE Department = 'Finance';

SELECT *
FROM FinanceEmployeePhoneView;

#7.71
# Create a view DepartmentEmployeeProject-AssignmenView, show EMPLOYEE.Last/FirstName (EmployeeLast/FirstName) and EMPLOYEE.OfficePhone (Employee-Phone)
# DEPARTMENT.DepartmentName, DEPARTMENT.DepartmentPhone, and PROJECT.ProjectName. View
CREATE VIEW DepartmentEmployeeProjectAssignmenView AS
SELECT E.LastName AS EmployeeLastName, E.FirstName AS EmployeeFirstName, E.OfficePhone AS EmployeePhone,
D.DepartmentName, D.DepartmentPhone, P.ProjectName
FROM EMPLOYEE AS E JOIN DEPARTMENT AS D
ON D.DepartmentName = E.Department JOIN 
PROJECT AS P ON
P.Department = D.DepartmentName;

SELECT *
FROM DepartmentEmployeeProjectAssignmenView;

#7.72
# Create view ProjectHoursToDateView, show PROJECT.ProjectID, PROJECT.ProjectName, PROJECT.MaxHours,
#Sum of ASSIGNMENT.HoursWorked as ProjectHoursWorkedToDate. Run View
CREATE VIEW ProjectHoursToDateView AS
SELECT P.ProjectID, P.ProjectName, P.MaxHours, Sum(A.HoursWorked) AS ProjectHoursWorkedToDate
FROM PROJECT AS P JOIN ASSIGNMENT AS A
ON P.ProjectID = A.ProjectID
GROUP BY P.ProjectID, P.ProjectName, P.MaxHours;

SELECT *
FROM ProjectHoursToDateView;