create table zds_phrmo_db;
use zds_phrmo_db;
create table employee
(
	emp_id		int auto_increment primary key,
	emp_lname	varchar(30) unique,
	emp_fname 	varchar(30) unique,
	emp_mid		varchar(30),
	emp_ext 	varchar(30),
	emp_position	varchar(200),
	emp_department 	varchar(99),
	emp_contact	varchar(30),
	emp_reg_id	varchar(30) unique,
	emp_reg_date	timestamp
);

create table employee_test
(
	test_id		int auto_increment primary key,
	test_type	varchar(30),
	test_question	text,
	test_choice_a	text,
	test_choice_b	text,
	test_choice_c	text,
	test_choice_d	text,
	test_answer	text
);

create table employee_answers
(
	answer_id	int auto_increment primary key,
	answer_question	text,
	answer_choice_a	text,
	answer_choice_b	text,
	answer_choice_c	text,
	answer_choice_d	text,
	answer_choice	text,
	answer_employee	int,
	anwer_dt	timestamp
);

alter table  employee_answers add column answer_correct text;

answer_question	text,
	answer_choice_a,answer_choice_b,answer_choice_c,answer_choice_d,answer_choice,answer_employee,
test_question,test_choice_a,test_choice_b,test_choice_c,test_choice_d,test_answer
INSERT INTO employee_answers(answer_question,answer_choice_a,answer_choice_b,answer_choice_c,answer_choice_d,answer_correct) SELECT test_question,test_choice_a,test_choice_b,test_choice_c,test_choice_d,test_answer FROM employee_test order by rand()
