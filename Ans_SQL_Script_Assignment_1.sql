create schema nairobi_academy;

create table students  
(student_id INT primary key,
first_name VARCHAR(50) not null,
last_name VARCHAR(50) not null,
gender VARCHAR(1),
date_of_birth date,
class VARCHAR(10),
city VARCHAR(50)
);

set search_path to nairobi_academy;

select * from students;

create table  subjects
(subject_id INT primary key,
subject_name VARCHAR(100) not null unique ,
department VARCHAR(50),
teachers_name VARCHAR(100),
credits INT);

select * from subjects;


create table exam_results
(result_id INT primary key,
student_id INT references students(student_id) not NULL,
subject_id INT references subjects(subject_id) not NULL,
marks INT not null,
exam_date DATE,
grade VARCHAR(2)
);


select * from exam_results;


alter table students 
add column phone_number VARCHAR(20);

alter table subjects
rename column credits to credit_hours;

alter table students 
drop column phone_number;


insert into students (student_id, first_name, last_name, gender, date_of_birth, class, city)
values
(1, 'Amina', 'Wanjiku', 'F', '2008-03-12', 'Form 3', 'Nairobi'),
(2, 'Brian', 'Ochieng', 'M', '2007-07-25', 'Form 4', 'Mombasa'),
(3, 'Cynthia', 'Mutua', 'F', '2008-11-05', 'Form 3', 'Kisumu'),
(4, 'David', 'Kamau', 'M', '2007-02-18', 'Form 4', 'Nairobi'),
(5, 'Esther', 'Akinyi', 'F', '2009-06-30', 'Form 2', 'Nakuru'),
(6, 'Felix', 'Otieno', 'M', '2009-09-04', 'Form 2', 'Eldoret'),
(7, 'Grace', 'Mwangi', 'F', '2008-01-22', 'Form 3', 'Nairobi'),
(8, 'Hassan', 'Abdi', 'M', '2007-04-09', 'Form 4', 'Mombasa'),
(9, 'Ivy', 'Chebet', 'F', '2009-12-01', 'Form 2', 'Nakuru'),
(10, 'James', 'Kairuiki', 'M', '2008-08-17', 'Form 3', 'Nairobi')


select * from students;


insert into subjects (subject_id , subject_name, department, teachers_name, credit_hours)
values
(1, 'Mathematics', 'Sciences', 'Mr. Njoroge', 4),
(2, 'English', 'Languages', 'Ms. Adhiambio', 3),
(3, 'Biology', 'Sciences', 'Ms. Otieno', 4),
(4, 'History', 'Humanities', 'Mr. Waweru', 3),
(5, 'Kiswahili', 'Languages', 'Ms. Nduta', 3),
(6, 'Physics', 'Sciences', 'Mr. Kamande', 4),
(7, 'Geography', 'Humanities', 'Ms. Chebet', 3),
(8, 'Chemistry', 'Sciences', 'Ms. Muthoni', 4),
(9, 'Computerr Studies', 'Sciences', 'Mr. Oduya', 3),
(10, 'Business Studies', 'Humanities', 'Ms. Wangari', 3)


select * from subjects;


insert into exam_results (result_id, student_id, subject_id, marks, exam_date, grade)
values
(1, 1, 1, 78, '2024-03-15', 'B'),
(2, 1, 2, 85, '2024-03-16', 'A'),
(3, 2, 1, 92, '2024-03-15', 'A'),
(4, 2, 3, 55, '2024-03-17', 'C'),
(5, 3, 2, 49, '2024-03-16', 'D'),
(6, 3, 4, 71, '2024-03-18', 'B'),
(7, 4, 1, 88, '2024-03-15', 'A'),
(8, 4, 6, 63, '2024-03-19', 'C'),
(9, 5, 5, 39, '2024-03-20', 'F'),
(10, 6, 9, 95, '2024-03-21', 'A');


select * from exam_results;


--select concat(first_name,' ', last_name), marks, subject_name, rank() over(partition by subject_name order by marks desc) rnk 
--from  students a join exam_results b on a.student_id = b.student_id
--join subjects c on c.subject_id = b.subject_id ;
--
--
--update subjects
--set subject_name = 'Computer Studies' where subject_name = 'Computerr Studies';
--
--select * from subjects;

update students 
set city = 'Nairobi' where  student_id = 5;

select * from students;


update exam_results 
set marks = 59 where result_id = 5 ;

select * from exam_results;


delete from exam_results
where result_id = 9;



select * from students where class = 'Form 4';


select * from subjects where department = 'Sciences';


select * from exam_results where marks >= 70;



select * from students where gender = 'F';


select * from students where class = 'Form 3' and city = 'Nairobi';


select * from students where class = 'Form 2' or class = 'Form 4';



select * from exam_results where marks between 50 and 80;


select * from exam_results where exam_date between '2024-03-15' and '2024-03-18';



select * from students where city in ('Nairobi','Mombasa', 'Kisumu');



select * from students where class not in ('Form 2', 'Form 3');



select * from students where substr(first_name,1,1) like 'A%' or substr(first_name,1,1) like 'E%';


select * from subjects where upper(subject_name) like '%STUDIES%';




select count(*) from students where class = 'Form 3';

select count(*) from exam_results where marks >= 70;






select marks, case when marks >= 80 then 'distinction' 
			when marks >= 60 then 'Merit'
			when marks >= 40 then 'Pass'
		else 'Fail' end as performance
from exam_results;






select class, case when class in ('Form 3', 'Form 4') then 'Senior'
				 else 'Junior' end as student_level   
			from students;
