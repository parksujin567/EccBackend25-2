SELECT * FROM samplea
UNION
SELECT * FROM sampleB;

SELECT * FROM samplea
UNION ALL
SELECT * FROM sampleb;

SELECT * FROM 테이블명1, 테이블명2;

SELECT * FROM 상품, 재고수 
WHERE 상품.상품코드=재고수.상품코드
    AND 상품.상품분류='식료품';

SELECT 상품.상품명, 재고수.재고수
FROM 상품 INNER JOIN 재고수
    ON 상품.상품코드=재고수.상품코드
WHERE 상품.상품분류='식료품';

SELECT S1.상품명, S2.상품명
FROM 상품 S1 INNER JOIN 상품 S2
    ON S1.상품코드=S2.상품코드;

SELECT 상품3.상품명, 재고수.재고수
FROM 상품3 LEFT JOIN 재고수
    ON 상품3.상품코드=재고수.상품코드
WHERE 상품3.상품분류='식료품';

START TRANSACTION
COMMIT
ROLLBACK