drop table habit_members cascade constraint purge;
create table habit_members(
	h_nickname varchar2(10 char) primary key,
	h_emailaddr varchar2(40 char) not null,
	h_password varchar2(30 char) not null,
	h_gen varchar2(5 char) not null,
	h_pic varchar2(100 char) not null,
	h_keyword varchar2(10 char) not null
);
select * from HABIT_MEMBERS;

insert into habit_members values('정임이', 'jinnie@gmail.com', '1', 'f', 'a.jpg', 'a');


select * from habit_members where h_nickname = 'a';


