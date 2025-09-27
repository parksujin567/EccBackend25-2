SELECT ALL name FROM sample51;  //테이블의 name 열의 모든 행
SELECT DISTINCT name FROM sample51;  //테이블의 name 열의 중복 값을 제거한 모든 행

SELECT * FROM 테이블명 GROUP BY 열1, 열2, ...

SELECT name, COUNT(name) 
FROM sample51 
WHERE COUNT(name)=1 
GROUP BY name;

SELECT name, COUNT(name) 
FROM sample51
GROUP BY name
HAVING COUNT(name)=1;

CREATE TABLE 테이블명(
	열명 자료형 [DEFAULT 기본값] [NULL|NOT NULL]
)


DROP TABLE 테이블명
ALTER TABLE 테이블명 변경명령

ALTER TABLE 테이블명 ADD 열 정의 //열추가
ALTER TABLE 테이블명 MODIFY 열 정의 //열 속성 변경
ALTER TABLE 테이블명 CHANGE [기존 열 이름] [신규 열 정의] //열 이름과 속성 변경
ALTER TABLE 테이블명 DROP 열명 //열 삭제

ALTER TABLE sample MODIFY col VARCHAR(30) //문자열의 최대길이 연장
ALTER TABLE sample ADD new_col INTEGER //열추가

ALTER TABLE sample MODIFY c VARCHAR(30) NOT NULL;
ALTER TABLE sample ADD CONSTRAINT pkey_sample PRIMARY KEY(a);

ALTER TABLE sample MODIFY c VARCHAR(30); //c열의 NOT NULL 제약 없애기
ALTER TABLE sample DROP CONSTRAINT pkey_sample //제약 삭제하기
ALTER TABLE sample DROP PRIMARY KEY; //기본키 제약 삭제하기

CREATE INDEX 인덱스명 ON 테이블명 (열명1, 열명2, ...)
DROP INDEX 인덱스명( ON 테이블명)
EXPLAIN SQL명령

CREATE VIEW 뷰명 AS SELECT 명령 //뷰를 만드는 명령어
CREATE VIEW 뷰명(열명1, 열명2, ...) AS SELECT 명령 //열 지정하여 뷰 생성하기
DROP VIEW 뷰명 //뷰 삭제

