-- Create departments table

CREATE TABLE departments (
	dept_no VARCHAR(255) PRIMARY KEY,
	dept_name VARCHAR(255)
);

-- Create titles table

CREATE TABLE titles (
	title_id VARCHAR(255) PRIMARY KEY,
	title VARCHAR(255)
);

-- Create employee table
CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(255),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date VARCHAR(10),
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(1),
	hire_date VARCHAR(10)
);

-- Create department employees junction table

CREATE TABLE dept_emp (
	emp_no INTEGER, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(255), 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create department manager junction table

CREATE TABLE dept_manager (
	dept_no VARCHAR(255),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create salaries table

CREATE TABLE salaries (
	emp_no INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INTEGER
);