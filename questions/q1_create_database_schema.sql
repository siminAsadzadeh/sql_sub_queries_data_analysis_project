-- q1_create database schema 

-- employees
CREATE TABLE employees (
    emp_id CHAR(9) NOT NULL, 
    f_name VARCHAR(15) NOT NULL,
    l_name VARCHAR(15) NOT NULL,
    ssn CHAR(9),
    b_date DATE,
    sex CHAR,
    address VARCHAR(50),
    job_id CHAR(9),
    salary DECIMAL(10,2),
    manager_id CHAR(9),
    dep_id CHAR(9) NOT NULL,
    PRIMARY KEY (emp_id)
);

-- job_history
CREATE TABLE job_history (
    empl_id CHAR(9) NOT NULL, 
    start_date DATE,
    jobs_id CHAR(9) NOT NULL,
    dept_id CHAR(9),
    PRIMARY KEY (empl_id, jobs_id)
);

-- jobs
CREATE TABLE jobs (
    job_ident CHAR(9) NOT NULL, 
    job_title VARCHAR(30),
    min_salary DECIMAL(10,2),
    max_salary DECIMAL(10,2),
    PRIMARY KEY (job_ident)
);

-- departments
CREATE TABLE departments (
    dept_id_dep CHAR(9) NOT NULL, 
    dep_name VARCHAR(20),
    manager_id CHAR(9),
    loc_id CHAR(9),
    PRIMARY KEY (dept_id_dep)
);

-- locations
CREATE TABLE locations (
    loct_id CHAR(9) NOT NULL,
    dep_id_loc CHAR(9) NOT NULL,
    PRIMARY KEY (loct_id, dep_id_loc)
);


  
