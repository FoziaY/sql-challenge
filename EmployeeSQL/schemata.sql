-- Drop existing tables if they exist
DROP TABLE IF EXISTS jobTitles, deptManager, deptEmployees, companyDepartments, companyEmployees, jobTitles CASCADE;

-- Create jobTitles table
CREATE TABLE jobTitles (
    titleId VARCHAR(5) PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

-- Create companyEmployees table
CREATE TABLE companyEmployees (
    empNo INT PRIMARY KEY,
    empTitleId VARCHAR(5) REFERENCES jobTitles(titleId),
    birthDate DATE NOT NULL,
    firstName VARCHAR(30) NOT NULL,
    lastName VARCHAR(30) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hireDate DATE NOT NULL
);

-- Create companyDepartments table
CREATE TABLE companyDepartments (
    deptNo VARCHAR(100) PRIMARY KEY,
    deptName VARCHAR(100) NOT NULL
);

-- Create deptEmployees table
CREATE TABLE deptEmployees (
    empNo INT REFERENCES companyEmployees(empNo),
    deptNo VARCHAR(100) REFERENCES companyDepartments(deptNo),
    PRIMARY KEY (empNo, deptNo)
);

-- Create deptManager table
CREATE TABLE deptManager (
    empNo INT,
    deptNo VARCHAR(100),
	Foreign KEY(empNo) REFERENCES companyDepartments(empNo),
	Foreign KEY (deptNo) REFERENCES companyDepartments(deptNo)	
);

-- Create employeeSalaries table
CREATE TABLE employeeSalaries (
    empNo INT PRIMARY KEY REFERENCES companyEmployees(empNo),
    salary INT NOT NULL
);
select * from employeeSalaries;
select * from jobtitles;


INSERT INTO deptManager (empNo, deptNo) VALUES
(110022, 'd001'),
(110039, 'd001'),
(110085, 'd002'),
(110114, 'd002'),
(110183, 'd003'),
(110228, 'd003'),
(110303, 'd004'),
(110344, 'd004'),
(110386, 'd004'),
(110420, 'd004'),
(110511, 'd005'),
(110567, 'd005'),
(110725, 'd006'),
(110765, 'd006'),
(110800, 'd006'),
(110854, 'd006'),
(111035, 'd007'),
(111133, 'd007'),
(111400, 'd008'),
(111534, 'd008'),
(111692, 'd009'),
(111784, 'd009'),
(111877, 'd009'),
(111939, 'd009');

---checking for every single data.
select * from deptManager;
select * from employeeSalaries;
select * from deptEmployees;
select * from companyDepartments;
select * from companyEmployees;
select * from jobTitles;








