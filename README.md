# sql_sub_querries_data_analysis_ project

### Objective

This project is designed as a SQL and data analysis practice exercise.
The goal is to simulate a small company database with employees, jobs, departments, and locations.
By creating tables, inserting realistic data, and running queries, you can practice database design, writing queries, and analyzing results.

### Steps

### 1. Create the Schema

Start by creating the database tables (employees, job_history, jobs, departments, locations).
This step gives you hands-on practice in defining database structure and relationships.

### 2. Insert Sample Data

Load realistic test data into the tables.
This provides a base for queries and allows you to simulate real-world employee and company data.

### 3. Practice SQL Queries

- Work through a series of challenges that cover:

- Aggregations (average, max, min)

- Subqueries

- Filtering with conditions

- Age and salary analysis

Working with job history

Each query is a small data analysis task, helping you learn how to extract insights from raw data.

### Schema Visualization  
Mermaid ER diagrams included for clear data structure mapping.  

```mermaid
erDiagram
    employees {
        CHAR emp_id PK
        VARCHAR f_name
        VARCHAR l_name
        CHAR ssn
        DATE b_date
        CHAR sex
        VARCHAR address
        CHAR job_id FK
        DECIMAL salary
        CHAR manager_id
        CHAR dep_id FK
    }

    job_history {
        CHAR empl_id PK, FK
        DATE start_date
        CHAR jobs_id PK, FK
        CHAR dept_id FK
    }

    jobs {
        CHAR job_ident PK
        VARCHAR job_title
        DECIMAL min_salary
        DECIMAL max_salary
    }

    departments {
        CHAR dept_id_dep PK
        VARCHAR dep_name
        CHAR manager_id
        CHAR loc_id FK
    }

    locations {
        CHAR loct_id PK
        CHAR dep_id_loc PK, FK
    }

    employees ||--o{ job_history : "has history"
    employees }o--|| jobs : "assigned"
    employees }o--o{ departments : "belongs to"
    departments }o--o{ locations : "based in"
```
