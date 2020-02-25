create table user_info(
user_id number,
username varchar2(100) not null,
email_id varchar2(100) not null,
user_password varchar2(80) not null,
constraint user_id_pk primary key(user_id),
constraint email_uq unique(email_id),
constraint user_password_ck check((length(user_password) >= 8))
);

create table course_info(
course_id number,
course_name varchar2(100) not null,
duration_of_course number not null,
instructor_name varchar2(100) not null,
instructor_id number not  null,
course_category char(25) not null,
price number not null,
rating float,
constraint course_id_pk primary key(course_id),
constraint courses_uq unique(course_name,instructor_name),
constraint duration_of_course_ck check(duration_of_course>=4),
constraint rating_ck check(0<=rating and rating<=5),
constraint course_category_ck check(course_Category in('Business','Arts','Science','Engineering','Maths','Personality Development','Finance')),
constraint instructor_id_fk foreign key(instructor_id) references instructor_info(instructor_id),
constraint price_ck check(price>=0)
);

create table enrollment_info(
enrollment_id number,
course_id number not null,
user_id number not null,
enrolled_date date not null,
ending_date date not null,
status varchar2(50) not null,
rating number,
constraint rating_cq check(rating>=0 and rating<=5),
constraint enrollment_id_pk primary key(enrollment_id),
constraint unique_con unique(user_id,course_id),
constraint course_id_fk foreign key(course_id) references course_info(course_id),
constraint user_id_fk foreign key(user_id) references user_info(user_id),
constraint status_ck check(status in('ONGOING','COMPLETED'))
);

create table instructor_info(
instructor_id number,
instructor_name varchar2(60) not null,
instructor_email varchar2(60) not null,
instructor_password varchar2(60) not null,
area_of_interest varchar2(60) not null,
recent_works varchar2(150),
constraint instructor_id_pk primary key(instructor_id),
constraint instructor_email_uq unique(instructor_email),
constraint instructor_password_ch check(length(instructor_password)>=8)
);

create sequence user_id_seq start with 1;
create sequence course_id_seq increment by 1 start with 20201;
create sequence enrollment_id_seq increment by 1 start with 220;
create sequence instructor_id_seq increment by 1 start with 1;