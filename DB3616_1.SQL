/********************************************************************************/
/*																				*/
/*	Kroenke, Auer, and Vandenberg												*/
/*  Database Processing (16th Edition) Chapters 07								*/
/*																				*/
/*  Wedgewood Pacific [WP_CH07] Database Insert Data							*/
/*																				*/
/*	These are the MySQL 8.0 SQL code solutions									*/
/*																				*/
/********************************************************************************/

USE wp_ch07;


/*****   DEPARTMENT DATA   ******************************************************/


INSERT INTO DEPARTMENT VALUES('Administration', 'BC-100-10', 'BLDG01-210', '360-285-8100');
INSERT INTO DEPARTMENT VALUES('Legal', 'BC-200-10', 'BLDG01-220', '360-285-8200');
INSERT INTO DEPARTMENT VALUES('Human Resources', 'BC-300-10', 'BLDG01-230', '360-285-8300');
INSERT INTO DEPARTMENT VALUES('Finance', 'BC-400-10', 'BLDG01-110', '360-285-8400');
INSERT INTO DEPARTMENT VALUES('Accounting', 'BC-500-10', 'BLDG01-120', '360-285-8405');
INSERT INTO DEPARTMENT VALUES('Sales and Marketing', 'BC-600-10', 'BLDG01-250', '360-287-8500');
INSERT INTO DEPARTMENT VALUES('InfoSystems', 'BC-700-10', 'BLDG02-210', '360-287-8600');
INSERT INTO DEPARTMENT VALUES('Research and Development', 'BC-800-10', 'BLDG02-250', '360-287-8700');
INSERT INTO DEPARTMENT VALUES('Production', 'BC-900-10', 'BLDG02-110', '360-287-8800');

/*****   EMPLOYEE DATA   ********************************************************/

INSERT INTO EMPLOYEE VALUES(
	null, 'Mary', 'Jacobs', 'Administration', 'CEO', null, '360-285-8110', 'Mary.Jacobs@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null, 'Rosalie', 'Jackson', 'Administration', 'Admin Assistant', 1,
	'360-285-8120', 'Rosalie.Jackson@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'Richard', 'Bandalone', 'Legal', 'Attorney', 1,
	'360-285-8210', 'Richard.Bandalone@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'George', 'Smith', 'Human Resources', 'HR3', 1,
	'360-285-8310', 'George.Smith@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'Alan', 'Adams', 'Human Resources', 'HR1', 4,
	'360-285-8320', 'Alan.Adams@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'Ken', 'Evans', 'Finance', 'CFO', 1,
	'360-285-8410', 'Ken.Evans@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'Mary', 'Abernathy', 'Finance', 'FA3', 6,
    '360-285-8420', 'Mary.Abernathy@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'Tom', 'Caruthers', 'Accounting', 'FA2', 6,
	'360-285-8430', 'Tom.Caruthers@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'Heather', 'Jones', 'Accounting', 'FA2', 6,
	'360-285-8440', 'Heather.Jones@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'Ken', 'Numoto', 'Sales and Marketing', 'SM3', 1,
	 '360-287-8510', 'Ken.Numoto@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'Linda', 'Granger', 'Sales and Marketing', 'SM2', 10,
	 '360-287-8520', 'Linda.Granger@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'James', 'Nestor', 'InfoSystems', 'CIO', 1,
	'360-287-8610', 'James.Nestor@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null, 'Rick', 'Brown', 'InfoSystems', 'IS2', 12, null, 'Rick.Brown@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null, 'Mike', 'Nguyen', 'Research and Development', 'CTO', 1,
	'360-287-8710', 'Mike.Nguyen@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'Jason', 'Sleeman', 'Research and Development', 'RD3', 14,
	'360-287-8720', 'Jason.Sleeman@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'Mary', 'Smith', 'Production', 'OPS3', 1,
	'360-287-8810', 'Mary.Smith@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'Tom', 'Jackson', 'Production', 'OPS2', 16,
	'360-287-8820', 'Tom.Jackson@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'George', 'Jones', 'Production', 'OPS2', 17,
	'360-287-8830', 'George.Jones@WP.com');
INSERT INTO EMPLOYEE VALUES(
	null,'Julia', 'Hayakawa', 'Production', 'OPS1', 17, null, 'Julia.Hayakawa@WP.com');
INSERT INTO EMPLOYEE  VALUES(
	null,'Sam', 'Stewart', 'Production', 'OPS1', 17, null, 'Sam.Stewart@WP.com');

/*****   PROJECT DATA   *********************************************************/


INSERT INTO PROJECT VALUES(
	1000,'2021 Q3 Production Plan', 'Production', 100.00, '2021-05-10', '2021-06-15');
INSERT INTO PROJECT VALUES(
	1100,'2021 Q3 Marketing Plan', 'Sales and Marketing', 135.00, '2021-05-10', '2021-06-15');
INSERT INTO PROJECT VALUES(
	1200,'2021 Q3 Portfolio Analysis', 'Finance', 120.00, '2021-07-05', '2021-07-25' );
INSERT INTO PROJECT VALUES(
	1300,'2021 Q3 Tax Preparation', 'Accounting', 145.00, '2021-08-10', '2021-10-15');
INSERT INTO PROJECT VALUES(
	1400,'2021 Q4 Production Plan', 'Production', 100.00, '2021-08-10', '2021-09-15');
INSERT INTO PROJECT VALUES(
	1500,'2021 Q4 Marketing Plan', 'Sales and Marketing', 135.00, '2021-08-10', '2021-09-15');
INSERT INTO PROJECT (ProjectID,ProjectName, Department, MaxHours, StartDate)				
	VALUES(										
	1600,'2021 Q4 Portfolio Analysis', 'Finance', 140.00, '2021-10-05');			


/*****   ASSIGNMENT DATA   ******************************************************/

INSERT INTO ASSIGNMENT VALUES(1000, 1, 30.0);
INSERT INTO ASSIGNMENT VALUES(1000, 6, 50.0);
INSERT INTO ASSIGNMENT VALUES(1000, 10, 50.0);
INSERT INTO ASSIGNMENT VALUES(1000, 16, 75.0);
INSERT INTO ASSIGNMENT VALUES(1000, 17, 75.0);
INSERT INTO ASSIGNMENT VALUES(1100, 1, 30.0);
INSERT INTO ASSIGNMENT VALUES(1100, 6, 75.0);
INSERT INTO ASSIGNMENT VALUES(1100, 10, 55.0);
INSERT INTO ASSIGNMENT VALUES(1100, 11, 55.0);
INSERT INTO ASSIGNMENT VALUES(1200, 3, 20.0);
INSERT INTO ASSIGNMENT VALUES(1200, 6, 40.0);
INSERT INTO ASSIGNMENT VALUES(1200, 7, 45.0);
INSERT INTO ASSIGNMENT VALUES(1200, 8, 45.0);
INSERT INTO ASSIGNMENT VALUES(1300, 3, 25.0);
INSERT INTO ASSIGNMENT VALUES(1300, 6, 40.0);
INSERT INTO ASSIGNMENT VALUES(1300, 8, 50.0);
INSERT INTO ASSIGNMENT VALUES(1300, 9, 50.0);
INSERT INTO ASSIGNMENT VALUES(1400, 1, 30.0);
INSERT INTO ASSIGNMENT VALUES(1400, 6, 50.0);
INSERT INTO ASSIGNMENT VALUES(1400, 10, 50.0);
INSERT INTO ASSIGNMENT VALUES(1400, 16, 75.0);
INSERT INTO ASSIGNMENT VALUES(1400, 17, 75.0);
INSERT INTO ASSIGNMENT VALUES(1500, 1, 30.0);
INSERT INTO ASSIGNMENT VALUES(1500, 6, 75.0);
INSERT INTO ASSIGNMENT VALUES(1500, 10, 55.0);
INSERT INTO ASSIGNMENT VALUES(1500, 11, 55.0);
INSERT INTO ASSIGNMENT VALUES(1600, 3, 20.0);
INSERT INTO ASSIGNMENT VALUES(1600, 6, 40.0);
INSERT INTO ASSIGNMENT VALUES(1600, 7, 45.0);
INSERT INTO ASSIGNMENT VALUES(1600, 8, 45.0);

/****************************************************************************************/

