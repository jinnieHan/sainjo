create table habit_sns(
	hs_no number(5) primary key,
	hs_nickname varchar2(10 char),
	hs_date date not null, 
	hs_contents varchar2(300 char) not null,
	constraint sns_nickname
		foreign key(hs_nickname) references habit_members(h_nickname)
		on delete cascade

);
create sequence habit_sns_seq;

--constraint 조건명
--	foreign key(필드명) references 테이블명(필드명)
--	on delete cascade 

create table habit_sns_reply(
	hsr_no number(5) primary key, -- 댓글번호
	hsr_hs_no number(5) not null, -- 소속된 글 번호
	hsr_nickname varchar2(10 char) not null,
	hsr_contents varchar2(200 char) not null,
	hsr_date date not null,
	constraint habit_sns_reply 
		foreign key(hsr_hs_no) references habit_sns(hs_no)
		on delete cascade,
	constraint habit_sns_reply_nickname	
		foreign key(hsr_nickname) references habit_members(h_nickname)
		on delete cascade

);
create sequence habit_sns_reply_seq;

select * from habit_sns;
drop table habit_sns_reply cascade constraint purge;
