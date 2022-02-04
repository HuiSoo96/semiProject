
DROP SEQUENCE REVIEWBOARD_NOSEQ;
DROP SEQUENCE REVIEWBOARD_GROPSEQ;
DROP TABLE REVIEWBOARD;

CREATE SEQUENCE REVIEWBOARD_NOSEQ;
CREATE SEQUENCE REVIEWBOARD_GROPSEQ;

--글 번호, ID, 글제목, 글내용, 조회수, 작성일
CREATE TABLE REVIEWBOARD(
	REVIEWBOARD_NO NUMBER PRIMARY KEY, 
	REVIEWBOARD_GROUPNO NUMBER NOT NULL,
	REVIEWBOARD_GROUPSQ NUMBER NOT NULL,
	REVIEWBOARD_TITLETAB NUMBER NOT NULL,
	REVIEWBOARD_ID VARCHAR2(300) NOT NULL,
	REVIEWBOARD_TITLE VARCHAR2(1000) NOT NULL,
	REVIEWBOARD_CONTENT CLOB NOT NULL,
	REVIEWBOARD_REGDATE DATE NOT NULL,
	REVIEWBOARD_HITS NUMBER NOT NULL,
	REVIEWBOARD_CATEGORY NUMBER NOT NULL
);

UPDATE INTO REVIEWBOARD 

DELETE FROM REVIEWBOARD;

SELECT * FROM REVIEWBOARD;

SELECT COUNT(*) AS CNT FROM REVIEWBOARD WHERE REVIEWBOARD_CONTENT LIKE '%TEST%'OR REVIEWBOARD_TITLE LIKE '%TEST%';
SELECT COUNT(*) AS CNT FROM REVIEWBOARD WHERE REVIEWBOARD_ID LIKE '%ADMIN%';

SELECT * FROM REVIEWBOARD WHERE REVIEWBOARD_TITLE LIKE '%test%' OR REVIEWBOARD_CONTENT LIKE '%test%';


SELECT REVIEWBOARD_NO, REVIEWBOARD_GROUPNO, REVIEWBOARD_GROUPSQ, REVIEWBOARD_TITLETAB, REVIEWBOARD_ID, REVIEWBOARD_TITLE, REVIEWBOARD_CONTENT, REVIEWBOARD_REGDATE, REVIEWBOARD_HITS, REVIEWBOARD_CATEGORY
FROM ( SELECT ROWNUM RN, REVIEWBOARD_NO, REVIEWBOARD_GROUPNO, REVIEWBOARD_GROUPSQ,REVIEWBOARD_TITLETAB, REVIEWBOARD_ID, REVIEWBOARD_TITLE, REVIEWBOARD_CONTENT, REVIEWBOARD_REGDATE, REVIEWBOARD_HITS, REVIEWBOARD_CATEGORY
FROM ( SELECT REVIEWBOARD_NO, REVIEWBOARD_GROUPNO, REVIEWBOARD_GROUPSQ, REVIEWBOARD_TITLETAB, REVIEWBOARD_ID, REVIEWBOARD_TITLE, REVIEWBOARD_CONTENT, REVIEWBOARD_REGDATE, REVIEWBOARD_HITS, REVIEWBOARD_CATEGORY 
FROM REVIEWBOARD ORDER BY REVIEWBOARD_NO DESC, REVIEWBOARD_GROUPNO))
WHERE RN>=1 AND RN<=10;

SELECT * FROM REVIEWBOARD ORDER BY REVIEWBOARD_GROUPNO DESC, REVIEWBOARD_GROUPSQ ;


INSERT INTO REVIEWBOARD( REVIEWBOARD_NO, REVIEWBOARD_GROUPNO, REVIEWBOARD_GROUPSQ, REVIEWBOARD_TITLETAB, REVIEWBOARD_ID, REVIEWBOARD_TITLE, REVIEWBOARD_CONTENT, REVIEWBOARD_REGDATE, REVIEWBOARD_HITS, REVIEWBOARD_CATEGORY)
VALUES( REVIEWBOARD_NOSEQ.NEXTVAL, REVIEWBOARD_GROPSEQ.NEXTVAL, 1,0, 'ADMIN', 'TEST01', 'TEST01', SYSDATE, 10, 1);


SELECT * FROM REVIEWBOARD 
WHERE REVIEWBOARD_CONTENT LIKE '%test%'
ORDER BY REVIEWBOARD_GROUPNO DESC, REVIEWBOARD_GROUPSQ;


select dbms_lob.substr(reviewboard_content,dbms_lob.getlength(reviewboard_content)) from REVIEWBOARD;

select * from REVIEWBOARD;

update REVIEWBOARD set REVIEWBOARD_HITS = 2 where REVIEWBOARD_NO = 2;

select * from (SELECT * FROM REVIEWBOARD ORDER BY REVIEWBOARD_HITS DESC) 
<![CDATA[
WHERE ROWNUM <= 3]]> ;
