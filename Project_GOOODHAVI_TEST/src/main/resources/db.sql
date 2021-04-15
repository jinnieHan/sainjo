
drop table habit_habit cascade constraint purge;

create sequence h_habit_seq;

create table habit_habit(
	h_habit_seq_no number(3) primary key,	-- 기본키
	h_habit varchar2(30 char) not null,		-- 습관명
	h_keyword varchar2(5 char) not null,	-- 키워드(운동 독서 생활습관 학습 취미 돈관리)
	h_nickname varchar2(10 char) not null,	-- 닉네임
	h_start_date date not null,				-- 습관명시작일	default: sysdate
	h_check_date date,						-- 습관체크일 default: sysdate
	h_end_date date,						-- 습관종료일
	h_goal_date number(1) not null,			-- 습관횟수체크 default: 0 (3회'
	h_status char(1) not null,				-- 포기여부확인 default: N (Y포기/N진행중/E종료된습관)
	h_achivement_rate number(4,1)			-- 달성률
);
-- 운동 독서 생활습관 학습 취미 돈관리
insert into habit_habit values(h_habit_seq.nextval, '물500ml먹기', '생활습관', 'hello883', sysdate, to_date('2021-04-01', 'YYYY-MM-DD'), to_date('2021-04-01', 'YYYY-MM-DD'), 0, 'N', null);
insert into habit_habit values(h_habit_seq.nextval, '물500ml먹기', '생활습관', 'hello883', sysdate, null, null, 0, 'E', null);
insert into habit_habit values(h_habit_seq.nextval, '물500ml먹기', '생활습관', 'hello883', sysdate, null, null, 0, 'N', null);
insert into habit_habit values(h_habit_seq.nextval, '물500ml먹기', '생활습관', 'hello883', sysdate, null, null, 0, 'N', null);

insert into habit_habit values(h_habit_seq.nextval, '물500ml먹기', '생활습관', 'test2', sysdate, null, null, 0, 'Y', null);
insert into habit_habit values(h_habit_seq.nextval, '물500ml먹기', '생활습관', 'test2', sysdate, null, null, 0, 'E', null);
----------


-- 뚜벅초 N:0 / Y:1 / E:0
insert into habit_habit values(h_habit_seq.nextval, '영어 흘려듣기 30분', '학습', '뚜벅초', to_date('2021-03-15 07', 'YYYY-MM-DD HH24'), null, to_date('2021-03-22 01', 'YYYY-MM-DD HH24'), 1, 'Y', 0);
-- 정임이 N:0 / Y:1 / E:1
insert into habit_habit values(h_habit_seq.nextval, '영어 흘려듣기 30분', '학습', '정임이', to_date('2021-03-15 07', 'YYYY-MM-DD HH24'), null, to_date('2021-03-22 01', 'YYYY-MM-DD HH24'), 1, 'Y', 0);
insert into habit_habit values(h_habit_seq.nextval, '독후감 쓰기', '독서', '정임이', to_date('2021-02-22 07', 'YYYY-MM-DD HH24'), null, to_date('2021-02-25 16', 'YYYY-MM-DD HH24'), 3, 'E', 75.0);
-- 피카츄 N:1 / Y:3 / E:1
insert into habit_habit values(h_habit_seq.nextval, '토익 모의고사 1회', '학습', '피카츄', sysdate, null, null, 0, 'N', null);
insert into habit_habit values(h_habit_seq.nextval, '자기계발서 읽기', '독서', '피카츄', to_date('2021-02-21 07', 'YYYY-MM-DD HH24'), null, to_date('2021-02-23 06', 'YYYY-MM-DD HH24'), 3, 'E', 100.0);
insert into habit_habit values(h_habit_seq.nextval, '커피 안사기', '돈관리', '피카츄', to_date('2021-02-18 07', 'YYYY-MM-DD HH24'), null, to_date('2021-02-21 18', 'YYYY-MM-DD HH24'), 3, 'E', 75.0);
insert into habit_habit values(h_habit_seq.nextval, '비타민 챙겨먹기', '생활습관', '피카츄', to_date('2021-01-22 07', 'YYYY-MM-DD HH24'), null, to_date('2021-01-30 07', 'YYYY-MM-DD HH24'), 3, 'E', 37.5);
insert into habit_habit values(h_habit_seq.nextval, '학 10마리 접기', '취미', '피카츄', to_date('2021-01-02 07', 'YYYY-MM-DD HH24'), null, to_date('2021-01-12 06', 'YYYY-MM-DD HH24'), 2, 'Y', 0);
-- hello883 N:1 / Y:0 / E:0
insert into habit_habit values(h_habit_seq.nextval, '물500ml먹기', '생활습관', 'hello883', sysdate, to_date('2021-04-01', 'YYYY-MM-DD'), to_date('2021-04-01', 'YYYY-MM-DD'), 0, 'N', null);
insert into habit_habit values(h_habit_seq.nextval, '물500ml먹기', '생활습관', 'hello883', sysdate, null, null, 0, 'N', null);
-- a N:0 / Y:0 / E:0

select * from habit_habit;

select * from habit_habit
	where h_nickname = 'a';


select h_habit
from habit_habit 
where h_nickname in (
	select h_nickname
	from habit_members
	where h_nickname = 'a'
); 

select count(*) from habit_habit where h_nickname in ()

select * from habit_habit where h_nickname = 'hello883' and h_status = 'N';


update habit_habit set h_status = 'E' where h_habit_seq_no = 22;
--처음
update habit_habit set h_check_date = sysdate, h_goal_date = 0 where h_habit_seq_no = 23;
--꾸준
update habit_habit set h_check_date = to_date('2021-04-03', 'YYYY-MM-DD'), h_goal_date = 1 where h_habit_seq_no = 1;
--게으름
update habit_habit set h_check_date = to_date('2021-02-23', 'YYYY-MM-DD'), h_goal_date = 2 where h_habit_seq_no = 1;

---------------------------------------------------------------------------
---------------------------------------------------------------------------

create table dlbapm_member(
	dm_id varchar2(10 char) primary key,
	dm_pw varchar2(10 char) not null,
	dm_name varchar2(10 char) not null,
	dm_addr varchar2(200 char) not null,
	dm_photo varchar2(200 char) not null
);

select * from dlbapm_member;

insert into dlbapm_member
		values('test1', '1', '일번', '서울어딘가', 'test');
