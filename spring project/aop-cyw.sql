use springdb;

/* 사용자 테이블 생성 */
create table `tk_user`( 
	id varchar(20) not null primary key,
    passwd varchar(20) not null,
    username varchar(20) not null
);

/* 사용자 테이블 샘플 데이터 생성 */
insert into `tk_user` values('admin','passwd','허훈식');
insert into `tk_user` values('yunwon','passwd','채윤원');
insert into `tk_user` values('boyun','passwd','장보윤');
insert into `tk_user` values('soyoung','passwd','양소영');
insert into `tk_user` values('semin','passwd','이세민');
insert into `tk_user` values('minzi','passwd','김민지');
insert into `tk_user` values('sugyeong','passwd','정수경');
insert into `tk_user` values('suin','passwd','최수인');
insert into `tk_user` values('zinzeun','passwd','전진근');
insert into `tk_user` values('minuk','passwd','송민욱');
insert into `tk_user` values('taehun','passwd','김태훈');
insert into `tk_user` values('hyunjun','passwd','백현준');
insert into `tk_user` values('hyunyong','passwd','양현용');
insert into `tk_user` values('sanghyun','passwd','이상현');
insert into `tk_user` values('youngju','passwd','이영주');
insert into `tk_user` values('jeonghee','passwd','신정희');

/* 도서 테이블 생성 */
create table `tk_book`(
	id varchar(20) not null primary key,
    author varchar(20) not null,
    title varchar(20) not null,
    price int(10) not null,
    `img` longblob
);

insert into `tk_book`(id,author,title,price) values('1','구병모','아가미','35000');

/* 리뷰 테이블 생성 */
create table `tk_review`(
	id varchar(20) not null primary key,
    booktitle varchar(20) not null,
    reviewtitle varchar(20) not null,
    content varchar(1000) not null,
    `time` timestamp default current_timestamp on update current_timestamp,
    foreign key(id) references `tk_user`(username)
);

/* 외래키 생성 오류 처리 */
CREATE INDEX idx_parent_id ON tk_user(username); 

/* 리뷰 테이블 샘플 데이터 생성 */
insert into `tk_review`(id,booktitle,reviewtitle,content) values('김민지','버드 스트라이크','초월한 사랑', '익인과 도시민의 사랑을 다룬 이야기, 마음이 먹먹하네요');
insert into `tk_review`(id,booktitle,reviewtitle,content) values('양소영','데미안','인생책 들고왔어요', '선과 악의 경계를 지나는 소년의 모습 아름답습니다');
insert into `tk_review`(id,booktitle,reviewtitle,content) values('정수경','채식주의자','화제의 책✨✨', '읽는 내내 혼돈을 걷는 기분, 공감 가는 부분이 많았다');
insert into `tk_review`(id,booktitle,reviewtitle,content) values('양현용','지적인 낙관주의자','세상을 긍정의 시각으로', '그들의 선한 영향력을 배울 수 있는 시간이었습니다');
insert into `tk_review`(id,booktitle,reviewtitle,content) values('이세민','디디의 우산','황정은의 신작!', '내내 이어질 것이다. 더는 아름답지 않고 솔직하지도 않은, 삶이.');
insert into `tk_review`(id,booktitle,reviewtitle,content) values('송민욱','달과 6펜스','신화를 만들어낸 인간들', '고통을 겪으면 인품이 고결해진다는 말은 사실이 아니다.');
insert into `tk_review`(id,booktitle,reviewtitle,content) values('백현준','아몬드','감정에 대하여', '삶은 여러 맛을 지닌 채 그저 흘러간다.');
insert into `tk_review`(id,booktitle,reviewtitle,content) values('김태훈','공허한 십자가','히가시노 게이고의 장편소설', '십자가를 메는 방식은 모두가 다를 수 있지만 어떤 방법이 맞고 옳은지 알 수 없게 된다.');
insert into `tk_review`(id,booktitle,reviewtitle,content) values('채윤원','백설공주에게 죽음을','소장하고 싶은 책', '좋아 이 책이 너무 좋아 좋습니다');
insert into `tk_review`(id,booktitle,reviewtitle,content) values('장보윤','신곡','감명받은 책 소개하고 싶네요', '성경책과 유사한 느낌을 주면서 따숩네요');
insert into `tk_review`(id,booktitle,reviewtitle,content) values('최수인','소년이 온다','한강의 특별한정판 읽었어요', '주변 인물들의 고통 받는 내면을 생생하게 그려냈다.');
insert into `tk_review`(id,booktitle,reviewtitle,content) values('이상현','작별','고통이 없다면 두려움도 없지', '그녀가 알기로 사랑이란 것은 감정인데, 강렬하게 생겼다가는 사라지고 뜨거워졌는가 싶으면 환멸 속에서 식는 무엇인데, 이 실과 접지의 느낌은 무색무취인 데다 마치 영원처럼 느껴지는 고요함이어서 거의 인간적인 것으로 느껴지지 않는다고 말하고 싶었지만, 그가 오히려 더 진지한 고백으로 받아들일 것 같아 그만두었다.');
insert into `tk_review`(id,booktitle,reviewtitle,content) values('허훈식','젊은 베르테르의 슬픔','시대의 청년들을 뒤흔든 책', '젊은 괴테의 정열적인 사랑과 절망의 체험을 바탕으로 쓰인 질풍노도 문학의 대표작. 단순히 괴테의 성공작이라기보다는 당시 젊은이들의 가슴에 커다란 충격을 안겨준 문제작으로 더 큰 의미를 갖는 작품이다. 서간체 형식으로 개인적인 고백을 서술한 이 작품은 괴테 자신이 젊은 시절에 체험한 절망적인 사랑과 불행한 연애를 소재로 했다. 그 불행한 연애가 파멸에까지 이어지므로 이 작품은 서정적이며 극적인 요소가 내재되어 있어 그 감동이 단순한 상상과 허구적 공간에서 이루어지는 소설들과는 달리 매우 절절하며 실재적으로 느껴진다..');




/* 테이블 전체 삭제 */
drop table `tk_user`;
drop table `tk_book`;
drop table `tk_review`;