# Pewlett Hackard Data Engineering Project

## Overview
This project involves organizing and analyzing employee data from the 1980s and 1990s at Pewlett Hackard. It covers data modeling, engineering, and analysis tasks.

## Project Structure
- **Repository:** [sql-challenge](https://github.com/FoziaY/sql-challenge)
- **Local Directory:** EmployeeSQL

## Instructions

### Data Modeling
Inspect the following CSV files, representing various aspects of employee data:
- **departments.csv:** Department information
- **dept_manager.csv:** Department manager details
- **dept_employee.csv:** Department employee details
- **employees.csv:** General employee information
- **salaries.csv:** Salary details
- **titles.csv:** Employee titles

Provide a simple diagram or table schemas for the data. For the Entity Relationship Diagram (ERD), refer to the [EDBdiagram](./EDBdiagram.png) image file located in the same folder as this README.

### Data Engineering
- Create tables to store CSV data.
- Specify data types, primary keys, and relationships.
- Import CSV data into the SQL tables.
- For code snippets related to data engineering, check the `schemata.sql` file in the git repository.

### Data Analysis
Perform specific queries and provide the results in a .sql file.
- List the employee number, last name, first name, sex, and salary of each employee.
- List the first name, last name, and hire date for employees hired in 1986.
- List the manager of each department with department number, department name, employee number, last name, and first name.
- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
- List each employee in the Sales department, including their employee number, last name, and first name.
- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
- List the frequency counts, in descending order, of all employee last names (that is, how many employees share each last name).
- For code snippets related to data analysis, check the `query.sql` file in the git repository.

### Extra Analysis

#### Average Salary by Gender
- Analysis: Calculate the average salary for each gender and visualize the results.
- Visualization: [Average Salary by Gender Chart](./average_salary_by_gender.png)

#### Employee Distribution by Department
- Analysis: Explore the distribution of employees across different departments.
- Visualization: [Employee Distribution by Department Chart](./employee_distribution_by_department.png)

### Code Snippets
- `schemata.sql`: Contains code snippets related to data engineering (table schemas).
- `query.sql`: Contains code snippets related to data analysis queries
