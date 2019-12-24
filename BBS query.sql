drop database if exists BBS;
create database BBS;
use BBS;

drop table if exists user;
create table user (
	userID varchar(20),				 					-- ID
    userPassword varchar(20),							-- pw
    userName varchar(20),								-- 이름
    userGender varchar(20),								-- 성별
    userEmail varchar(50),								-- 이메일
    userEmailHash varchar(64),							-- 이메일해쉬코드
	userEmailChecked tinyint(1),						-- 이메일인증확인
	userCarModel varchar(20),							-- 제조사
    userCarName varchar(20),							-- 차량이름
    userCarType int,									-- 기름 타입
    userCarTotalKmNow double default 0,					-- 총주행거리-지금
    userCarTotalKmOld double default 0,					-- 총주행거리-이전
    userCarGasMoney double,								-- 주유비
    userCarDay varchar(20),								-- 차량관리일
    userCarMileage varchar(20),							-- 연비
    primary key(userID)
);

insert into user(userID,userPassword,userName,userGender,userEmail,userEmailHash,userEmailChecked) values('이승욱', '1234', '이승욱', '남자', 'mmdltmddnr@naver.com', 'b1c9e818f30718d1c2fdba98903574e7c4aec5416239aaf2cfee88740ef9c2ce', 1);

-- update user set userCarModel = '삼성_SM7', userCarType = 1500, userCarTotalKmOld = userCarTotalKmNow, 
-- userCarTotalKmNow = 4000,userCarGasMoney = 50000, userCarDay = curdate(), userCarMileage = (userCarTotalKmNow - userCarTotalKmOld)/(userCarGasMoney/userCarType) where userId like '이승욱';

drop table if exists BBS;
create table BBS (
bbsID int,					-- 게시글번호
bbsTitle varchar(50),		-- 제목
userID varchar(20),			-- ID
bbsDate datetime,			-- 게시날짜
bbsContent varchar(2048),	-- 게시내용
bbsAvailable int,			-- 게시글공개,비공개
bbsViewCount int default 0,	-- 조회수
primary key(bbsID)
);

insert into bbs values(1, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(2, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(3, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(4, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(5, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(6, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(7, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(8, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(9, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(10, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(11, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(12, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(13, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(14, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(15, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(16, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(17, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(18, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(19, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(20, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(21, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(22, '더미글','이승욱',null,'더미글',1,0);
insert into bbs values(23, '더미글','이승욱',null,'더미글',1,0);

update bbs set bbsDate = '2019-11-07 10:42:00' where bbsDate is null;

select * from bbs;

drop table if exists bbsreply;
create table bbsreply (
bbsID int,					-- 게시글번호
replyID int,				-- 게시글 댓글번호
userID varchar(20),			-- ID
replyDate datetime,			-- 게시날짜
replyContent varchar(2048)	-- 게시내용
);

select * from bbsreply;
select replyID FROM bbsreply where bbsID = 24 order by replyID desc;

drop table if exists repair;
create table repair(
	repairBbsID int,					-- 정비번호
	userID varchar(20),
    serviceDay varchar(20),				-- 차량정비일
    serviceCenter varchar(20),			-- 정비소
    service varchar(20),					-- 정비항목
    serviceMoney double,					-- 서비스지출금액
    serviceTotalKm double default 0      -- 서비스 당시 총 주행거리
);

select * from repair;

