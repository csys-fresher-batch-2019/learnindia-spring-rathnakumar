insert into instructor_info(instructor_id,instructor_name,instructor_email,instructor_password,area_of_interest)
values(instructor_id_seq.nextval,'Robert','robert@gmail.com','pass12345','Business Science');
insert into instructor_info(instructor_id,instructor_name,instructor_email,instructor_password,area_of_interest)
values(instructor_id_seq.nextval,'SalmanKhan','khan@gmail.com','khan12345','Mathematics');
insert into instructor_info(instructor_id,instructor_name,instructor_email,instructor_password,area_of_interest)
values(instructor_id_seq.nextval,'Vasudevan','vasu@gmail.com','vasu12345','Personality Development');
insert into instructor_info(instructor_id,instructor_name,instructor_email,instructor_password,area_of_interest)
values(instructor_id_seq.nextval,'J.B.Gupta','suptajb@gmail.com','jbgu12345','Power Systems');
insert into instructor_info(instructor_id,instructor_name,instructor_email,instructor_password,area_of_interest)
values(instructor_id_seq.nextval,'Hari','hari@gmail.com','hari12345','Quantum Physics');
insert into instructor_info(instructor_id,instructor_name,instructor_email,instructor_password,area_of_interest)
values(instructor_id_seq.nextval,'Robin','robin1@gmail.com','pass1234','Music');
insert into instructor_info(instructor_id,instructor_name,instructor_email,instructor_password,area_of_interest)
values(instructor_id_seq.nextval,'Manickam','manick@gmail.com','pass1234','Econmics');


insert into course_info(course_id,course_name,duration_of_course,instructor_name,course_category,price,instructor_id)
values(course_id_seq.nextval,'Digital Marketing',8,'Robert','Business',1500,1);
insert into course_info(course_id,course_name,duration_of_course,instructor_name,course_category,price,instructor_id)
values(course_id_seq.nextval,'Music Theory',16,'Robin','Arts',2000,6);
insert into course_info(course_id,course_name,duration_of_course,instructor_name,course_category,price,instructor_id)
values(course_id_seq.nextval,'Quantum Physics',24,'Hari','Science',3000,5);
insert into course_info(course_id,course_name,duration_of_course,instructor_name,course_category,price,instructor_id)
values(course_id_seq.nextval,'Power Systems',12,'J.B.Gupta','Engineering',1000,4);
insert into course_info(course_id,course_name,duration_of_course,instructor_name,course_category,price,instructor_id)
values(course_id_seq.nextval,'Vector Calculus',8,'Salman Khan','Maths',1500,2);
insert into course_info(course_id,course_name,duration_of_course,instructor_name,course_category,price,instructor_id)
values(course_id_seq.nextval,'Effective Communication',8,'Vasudevan','Personality Development',1000,3);
insert into course_info(course_id,course_name,duration_of_course,instructor_name,course_category,price,instructor_id)
values(course_id_seq.nextval,'Method of Financing',14,'Manickam','Finance',1500,7);

