-- q1_create emplyees table 

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

INSERT INTO employees VALUES
('E101','Amir','Rahimi','183746259','1988-03-21','M','217 Laurier Ave E, Ottawa','J201',78000.00,'E105','D10'),
('E102','Lea','Marchand','508173642','1991-09-14','F','945 St-Laurent Blvd, Montreal','J202',69000.00,'E105','D20'),
('E103','Diego','Santana','394817265','1983-01-08','M','120 King St W, Toronto','J203',112000.00,'E105','D30'),
('E104','Nina','Khan','726514839','1995-06-02','F','44 Osborne St, Winnipeg','J204',58000.00,'E103','D30'),
('E105','Farah','Noori','251983746','1974-11-27','F','500 Granville St, Vancouver','J205',145000.00,NULL,'D10');

-- job_history
CREATE TABLE job_history (
    empl_id CHAR(9) NOT NULL, 
    start_date DATE,
    jobs_id CHAR(9) NOT NULL,
    dept_id CHAR(9),
    PRIMARY KEY (empl_id, jobs_id)
);

INSERT INTO job_history VALUES
('E101','2016-05-01','J201','D10'),
('E102','2018-09-15','J202','D20'),
('E103','2012-03-20','J203','D30'),
('E104','2021-07-12','J204','D30'),
('E105','2007-10-01','J205','D10');

-- jobs
CREATE TABLE jobs (
    job_ident CHAR(9) NOT NULL, 
    job_title VARCHAR(30),
    min_salary DECIMAL(10,2),
    max_salary DECIMAL(10,2),
    PRIMARY KEY (job_ident)
);

INSERT INTO jobs VALUES
('J201','Data Analyst',60000.00,90000.00),
('J202','UX Designer',55000.00,85000.00),
('J203','Data Engineer',90000.00,130000.00),
('J204','QA Analyst',50000.00,80000.00),
('J205','Director',130000.00,170000.00);

-- departments
CREATE TABLE departments (
    dept_id_dep CHAR(9) NOT NULL, 
    dep_name VARCHAR(20),
    manager_id CHAR(9),
    loc_id CHAR(9),
    PRIMARY KEY (dept_id_dep)
);

INSERT INTO departments VALUES
('D10','Analytics','E105','L10'),
('D20','Design','E102','L20'),
('D30','Engineering','E103','L30'),
('D40','HR',NULL,'L20'),
('D50','Finance',NULL,'L10');

-- locations
CREATE TABLE locations (
    loct_id CHAR(9) NOT NULL,
    dep_id_loc CHAR(9) NOT NULL,
    PRIMARY KEY (loct_id, dep_id_loc)
);

INSERT INTO locations VALUES
('L10','D10'),
('L10','D50'),
('L20','D20'),
('L20','D40'),
('L30','D30');

  
