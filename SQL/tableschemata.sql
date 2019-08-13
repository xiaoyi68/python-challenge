DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;

CREATE TABLE titles (
  emp_no integer NOT NULL,
  title character varying(255) NOT NULL,
  from_date date DEFAULT ('now'::text)::date NOT NULL,
  to_date date DEFAULT ('now'::text)::date NOT NULL
);

CREATE TABLE departments (
  dept_no character varying(45) NOT NULL,
  dept_name character varying(45) NOT NULL
);

CREATE TABLE employees (
  emp_no integer NOT NULL,
  birth_date date DEFAULT ('now'::text)::date NOT NULL,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  gender character varying(20) NOT NULL,
  hire_date date DEFAULT ('now'::text)::date NOT NULL
);

CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no character varying(45) NOT NULL,
  from_date date DEFAULT ('now'::text)::date NOT NULL,
  to_date date DEFAULT ('now'::text)::date NOT NULL
);

CREATE TABLE dept_manager (
  dept_no character varying(45) NOT NULL,
  emp_no integer NOT NULL,
  from_date date DEFAULT ('now'::text)::date NOT NULL,
  to_date date DEFAULT ('now'::text)::date NOT NULL
);

CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL,
  from_date date DEFAULT ('now'::text)::date NOT NULL,
  to_date date DEFAULT ('now'::text)::date NOT NULL
);

select * from titles;
select * from departments;
select * from employees;
select * from dept_emp;
select * from dept_manager;
select * from salaries;
