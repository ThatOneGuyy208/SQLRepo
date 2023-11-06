CREATE TABLE DEPARTMENT(
	DepartmentName VarChar(35) NOT NULL,
    BudgetCode VarChar(30) NOT NULL,
    OfficeNumber VarChar(15) NOT NULL,
    DepartmentPhone VarChar(12) NOT NULL,
    CONSTRAINT DepartmentPK PRIMARY KEY(DepartmentName)
    );

CREATE TABLE EMPLOYEE(
	EmployeeNumber Int NOT NULL Auto_Increment,
    FirstName VarChar(25) NOT NULL,
    LastName VarChar(25) NOT NULL,
    Department VarChar(35) NOT NULL DEFAULT 'Human Resources',
    Position VarChar(35),
    Supervisor Int,
    OfficePhone VarChar(12),
    EmailAddress VarChar(100) NOT NULL,
    CONSTRAINT EmployeePK PRIMARY KEY(EmployeeNumber),
    CONSTRAINT EmployeeAK UNIQUE(EmailAddress),
     CONSTRAINT RecursiveFK FOREIGN KEY(Supervisor)
		REFERENCES EMPLOYEE(EmployeeNumber),
    CONSTRAINT EmpDepartmentFK FOREIGN KEY(Department)
		REFERENCES DEPARTMENT(DepartmentName)
        ON UPDATE CASCADE
    );

ALTER TABLE EMPLOYEE AUTO_INCREMENT=1;

CREATE TABLE PROJECT(
	ProjectID Int NOT NULL Auto_Increment,
    ProjectName VarChar(50) NOT NULL,
    Department VarChar(35) NOT NULL,
    MaxHours Numeric(8,2) NOT NULL DEFAULT 100,
    StartDate Date,
    EndDate Date,
    CONSTRAINT ProjectPK PRIMARY KEY(ProjectID),
    CONSTRAINT ProDepartmentFK FOREIGN KEY(Department)
		REFERENCES DEPARTMENT(DepartmentName)
        ON UPDATE CASCADE
	);

ALTER TABLE PROJECT AUTO_INCREMENT=1000;
    
CREATE TABLE ASSIGNMENT(
	ProjectID Int NOT NULL,
    EmployeeNumber Int NOT NULL,
    HoursWorked Numeric(6,2),
    CONSTRAINT AssignmentPKs PRIMARY KEY(ProjectID,EmployeeNumber),
	CONSTRAINT PrpjectFK FOREIGN KEY(ProjectID)
		REFERENCES PROJECT(ProjectID)
        ON DELETE CASCADE,
	CONSTRAINT EmployeeFK FOREIGN KEY(EmployeeNumber)
		REFERENCES EMPLOYEE(EmployeeNumber)
    );