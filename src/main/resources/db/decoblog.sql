
/* Drop Tables */

DROP TABLE DB_BBS_ATTACH CASCADE CONSTRAINTS;
DROP TABLE DB_REPLY CASCADE CONSTRAINTS;
DROP TABLE DB_BBS CASCADE CONSTRAINTS;
DROP TABLE DB_BOARD CASCADE CONSTRAINTS;
DROP TABLE DB_BLOCK CASCADE CONSTRAINTS;
DROP TABLE DB_BLOCK_TEMPLATE CASCADE CONSTRAINTS;
DROP TABLE DB_MENU CASCADE CONSTRAINTS;
DROP TABLE DB_STAT CASCADE CONSTRAINTS;
DROP TABLE DB_SUBSCRIBE CASCADE CONSTRAINTS;
DROP TABLE DB_Template CASCADE CONSTRAINTS;
DROP TABLE DB_USER CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE DB_BBS
(
	-- 게시글 고유 번호
	bbsNo number(10) NOT NULL,
	-- 게시판 번호
	boardNo number(6) NOT NULL UNIQUE,
	-- 게시글 제목
	bbsTitle varchar2(100) NOT NULL,
	-- 게시글 내용
	bbsContent blob,
	-- 게시글 조회수
	bbsCount number(6) DEFAULT 0,
	-- 게시글 좋아요 수
	bbsLike number(6) DEFAULT 0,
	-- 부모 게시글 번호
	bbsParent number(10) NOT NULL UNIQUE,
	-- 게시글 깊이(0: 부모, 1: 자식)
	bbsDepth number(1),
	-- 게시글 순서(같은 부모 내 게시글 순서)
	bbsSeq number(4),
	-- 게시글 등록일
	bbsRegDate date DEFAULT SYSDATE,
	-- 게시글 수정일
	bbsEditDate date,
	PRIMARY KEY (bbsNo)
);


CREATE TABLE DB_BBS_ATTACH
(
	-- 첨부파일 고유번호
	attachNo number(10) NOT NULL,
	-- 게시글 고유 번호
	attachBbsNo number(10) NOT NULL UNIQUE,
	-- 첨부파일 원본 파일명
	attachOriginalFile varchar2(200) NOT NULL,
	-- 첨부파일 저장 파일명
	attachSavedFile varchar2(200) NOT NULL,
	PRIMARY KEY (attachNo)
);


CREATE TABLE DB_BLOCK
(
	-- 블록 고유 번호
	blockNo number(10) NOT NULL,
	-- 블록이 속한 메뉴 번호
	blockMenuNo number(10) NOT NULL UNIQUE,
	-- 템플릿 번호
	blockTmpNo number(10) NOT NULL,
	-- 블로그 내에서 배치될 블록 순서
	blockSeq number(2) DEFAULT 1 NOT NULL,
	-- 블록 내용
	blockContent blob NOT NULL,
	-- 블록 배경 번호
	blockBackgroundno number(10),
	PRIMARY KEY (blockNo)
);


CREATE TABLE DB_BLOCK_TEMPLATE
(
	-- 템플릿 번호
	blockTmpNo number(10) NOT NULL,
	-- 템플릿 고유 번호
	blockTemplateNo number(10) NOT NULL,
	-- 템플릿 타입
	blockTmpType varchar2(30) NOT NULL,
	-- 템플릿 내용
	blockTmpContent blob NOT NULL,
	-- 템플릿에 포함될 이미지 개수
	blockTmpNImages number(2) DEFAULT 0 NOT NULL,
	-- 선 포함 여부
	-- (0: 미포함 1: 포함)
	blockTmpHasLine number(1) DEFAULT 0,
	-- 버튼 포함 여부
	-- (0: 미포함 1: 포함)
	blockTmpHasButton number(1) DEFAULT 0,
	-- 롤링인덱스 포함 여부
	-- (0: 미포함 1: 포함)
	blockTmpHasRollingIndex number(1) DEFAULT 0,
	-- 컨텐츠 박스 (단일 div) 포함 여부
	-- (0: 미포함 1: 포함)
	blockTmpHasContentBox number(1) DEFAULT 0,
	-- 컨텐츠 리스트 (다중 div) 포함 여부
	-- (0: 미포함 1: 포함)
	blockTmpHasContentList number(1) DEFAULT 0,
	-- 컨텐츠 가로 개수 수정 가능 여부
	-- (0: 미포함 1: 포함)
	blockTmpNContents number(1) DEFAULT 0,
	PRIMARY KEY (blockTmpNo)
);


CREATE TABLE DB_BOARD
(
	-- 게시판 번호
	boardNo number(6) NOT NULL,
	-- 게시판 뷰가 나타날 블록 번호
	boardBlockNo number(10) NOT NULL UNIQUE,
	-- 템플릿 번호
	boardBlockTmpNo number(10) NOT NULL,
	-- 블록에서 초기에 표시할 게시글 개수
	boardInitNDisplay number(2) DEFAULT 5 NOT NULL,
	-- 게시물 번호 표시 여부
	-- 0: 표시 안 함 1: 표시 2: 항상 표시 3: 표시 불가
	boardDisplayedNo number(1) DEFAULT 1,
	-- 타이틀 표시 여부
	-- 0: 표시 안 함 1: 표시 2: 항상 표시 3: 표시 불가
	boardDisplayedTitle number(1) DEFAULT 1,
	-- 내용 표시 여부
	-- 0: 표시 안 함 1: 표시 2: 항상 표시 3: 표시 불가
	boardDisplayedContent number(1) DEFAULT 0,
	-- 표시 여부
	-- 0: 표시 안 함 1: 표시 2: 항상 표시 3: 표시 불가
	boardDisplayedAuthor number(1) DEFAULT 0,
	-- 날짜 표시 여부
	-- 0: 표시 안 함 1: 표시 2: 항상 표시 3: 표시 불가
	boardDisplayedDate number(1) DEFAULT 1,
	-- 조회수 표시 여부
	-- 0: 표시 안 함 1: 표시 2: 항상 표시 3: 표시 불가
	boardDisplayedHit number(1) DEFAULT 1,
	-- 좋아요 표시 여부
	-- 0: 표시 안 함 1: 표시 2: 항상 표시 3: 표시 불가
	boardDisplayedLike number(1) DEFAULT 0,
	-- 댓글수 표시 여부
	-- 0: 표시 안 함 1: 표시 2: 항상 표시 3: 표시 불가
	boardDisplayedComment number(1) DEFAULT 1,
	-- 하단 목록 표시 여부
	-- 0: 표시 안 함 1: 표시 2: 항상 표시 3: 표시 불가
	boardDisplayedBottomList number(1) DEFAULT 1,
	-- 검색창 표시 여부
	-- 0: 표시 안 함 1: 표시 2: 항상 표시 3: 표시 불가
	boardDisplayedSearch number(1) DEFAULT 1,
	-- 썸네일 사용여부
	-- 0: 표시 안 함 1: 표시 2: 항상 표시 3: 표시 불가
	boardDisplayedThumbnails number(1) DEFAULT 0,
	-- 날짜 표시 형식 (YYYY-MM-DD 등)
	boardDateForm varchar2(30) DEFAULT 'YYYY-MM-DD',
	PRIMARY KEY (boardNo)
);


CREATE TABLE DB_MENU
(
	-- 메뉴 고유번호
	menuNo number(10) NOT NULL,
	-- 유저번호
	menuUserNo number(4) NOT NULL,
	-- 메뉴 이름
	menuName varchar2(150) NOT NULL,
	-- 메뉴 보모 번호
	menuParent number(10) NOT NULL,
	-- 메뉴 깊이 (0: 부모, 1: 자식)
	menuDepth number(1),
	-- 메뉴 순서(같은 부모 내에서의 순서)
	menuSeq number(2) DEFAULT 1,
	-- 메뉴 표시 여부 (1: 표시 0: 숨김)
	menuVisible number(1) DEFAULT 1,
	-- 메뉴 링크
	menuLink varchar2(200),
	PRIMARY KEY (menuNo)
);


CREATE TABLE DB_REPLY
(
	-- 댓글 고유 번호
	replyNo number(10) NOT NULL,
	-- 게시글 고유 번호
	replyBbsNo number(10) NOT NULL UNIQUE,
	-- 댓글 내용
	replyContent varchar2(1000) NOT NULL,
	-- 부모 댓글
	replyParent number(10) NOT NULL UNIQUE,
	-- 댓글 깊이(0: 부모, 1:자식)
	replyDepth number(1),
	-- 댓글 순서(같은 부모 내에서의 댓글 순서)
	-- 
	replySeq number(4),
	-- 댓글 등록일
	replyRegDate date DEFAULT SYSDATE,
	-- 댓글 등록자
	replyRegUser number(4) NOT NULL UNIQUE,
	-- 댓글 수정일
	replyEditDate date,
	-- 댓글 수정자
	replyEditUser number(4),
	PRIMARY KEY (replyNo)
);


CREATE TABLE DB_STAT
(
	-- 통계 고유 번호
	statNo number(10) NOT NULL,
	-- 유저번호
	statUserNo number(4) NOT NULL UNIQUE,
	-- 블로그 방문자 통계
	statBlogCount number(5) DEFAULT 0 NOT NULL,
	-- 게시글 조회수 (합계)
	statBbsCount number(5) DEFAULT 0 NOT NULL,
	-- 댓글수 (합계)
	statReplyCount number(10) DEFAULT 0 NOT NULL,
	-- 구독자 통계
	statSubscribe number(4) DEFAULT 0 NOT NULL,
	-- 통계 등록일
	statRegDate date DEFAULT SYSDATE,
	PRIMARY KEY (statNo)
);


CREATE TABLE DB_SUBSCRIBE
(
	-- 일련번호
	subNo number(5) NOT NULL,
	-- 구독하는 사람
	subSendUser number(4) NOT NULL UNIQUE,
	-- 구독 대상
	subRecieveUser number(4) NOT NULL UNIQUE,
	-- 구독등록일자
	subRegDate date DEFAULT SYSDATE,
	PRIMARY KEY (subNo)
);


CREATE TABLE DB_Template
(
	-- 템플릿 고유 번호
	templateNo number(10) NOT NULL,
	-- 템플릿 제목
	templateTitle varchar2(30),
	PRIMARY KEY (templateNo)
);


CREATE TABLE DB_USER
(
	-- 유저번호
	userNo number(4) NOT NULL,
	-- 유저 이메일
	userEmail varchar2(200) NOT NULL UNIQUE,
	-- 유저 이름
	userName varchar2(100) NOT NULL,
	-- 유저 별명
	userNickName varchar2(100),
	-- 유저 비밀번호
	userPassword varchar2(200) NOT NULL,
	-- 비밀번호 분실 시 발급한 임시비밀번호
	userTmpPassword varchar2(200),
	-- 유저 추가정보
	userInfo varchar2(2000),
	-- 유저 프로필 사진 원본 파일명
	userProileOriinalName varchar2(400),
	-- 유저 프로필 저장 파일명
	userProfileSavedName varchar2(400),
	-- 블로그 제목
	blogTitle varchar2(100) NOT NULL,
	-- 블로그 주소
	blogAddress varchar2(50) NOT NULL UNIQUE,
	-- 블로그 방문자수
	blogCount number(8) DEFAULT 0 NOT NULL,
	-- 블로그 등록일자
	blogRegDate date DEFAULT SYSDATE NOT NULL,
	-- 우클릭 가능 여부 (1: 가능, 0: 불가)
	configRightClickable number(1) DEFAULT 1 NOT NULL,
	-- 기본 폰트
	configBasicFont varchar2(100),
	-- 사이트 배경 색상(Hex)
	configBackgroundColor varchar2(50) DEFAULT 'FFF',
	-- 사이트 배경 원본 파일명
	configBackgroundOriginFile varchar2(200),
	-- 사이트 배경 저장 파일명
	configBackgroundSavedFile varchar2(200),
	-- 파비콘 원본 파일명
	fabiconOriginalFile varchar2(200),
	-- 파비콘 저장 파일명
	fabiconSavedFile varchar2(200),
	-- 메타태그 Author
	metaAuthor varchar2(100),
	-- 메타태그 Keyword
	metaKeyword varchar2(100),
	-- 메타태그 Description
	metaDescription varchar2(300),
	-- 유저 등록일자
	userRegdate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (userNo)
);



/* Create Foreign Keys */

ALTER TABLE DB_BBS
	ADD FOREIGN KEY (bbsParent)
	REFERENCES DB_BBS (bbsNo)
;


ALTER TABLE DB_BBS_ATTACH
	ADD FOREIGN KEY (attachBbsNo)
	REFERENCES DB_BBS (bbsNo)
;


ALTER TABLE DB_REPLY
	ADD FOREIGN KEY (replyBbsNo)
	REFERENCES DB_BBS (bbsNo)
;


ALTER TABLE DB_BOARD
	ADD FOREIGN KEY (boardBlockNo)
	REFERENCES DB_BLOCK (blockNo)
;


ALTER TABLE DB_BLOCK
	ADD FOREIGN KEY (blockTmpNo)
	REFERENCES DB_BLOCK_TEMPLATE (blockTmpNo)
;


ALTER TABLE DB_BOARD
	ADD FOREIGN KEY (boardBlockTmpNo)
	REFERENCES DB_BLOCK_TEMPLATE (blockTmpNo)
;


ALTER TABLE DB_BBS
	ADD FOREIGN KEY (boardNo)
	REFERENCES DB_BOARD (boardNo)
;


ALTER TABLE DB_BLOCK
	ADD FOREIGN KEY (blockMenuNo)
	REFERENCES DB_MENU (menuNo)
;


ALTER TABLE DB_MENU
	ADD FOREIGN KEY (menuParent)
	REFERENCES DB_MENU (menuNo)
;


ALTER TABLE DB_REPLY
	ADD FOREIGN KEY (replyParent)
	REFERENCES DB_REPLY (replyNo)
;


ALTER TABLE DB_BLOCK_TEMPLATE
	ADD FOREIGN KEY (blockTemplateNo)
	REFERENCES DB_Template (templateNo)
;


ALTER TABLE DB_MENU
	ADD FOREIGN KEY (menuUserNo)
	REFERENCES DB_USER (userNo)
;


ALTER TABLE DB_REPLY
	ADD FOREIGN KEY (replyRegUser)
	REFERENCES DB_USER (userNo)
;


ALTER TABLE DB_STAT
	ADD FOREIGN KEY (statUserNo)
	REFERENCES DB_USER (userNo)
;


ALTER TABLE DB_SUBSCRIBE
	ADD FOREIGN KEY (subRecieveUser)
	REFERENCES DB_USER (userNo)
;


ALTER TABLE DB_SUBSCRIBE
	ADD FOREIGN KEY (subSendUser)
	REFERENCES DB_USER (userNo)
;



