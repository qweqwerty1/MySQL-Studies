USE study_db;

-- 2번 회원 '코코'의 자기소개(bio)를 수정합니다.
UPDATE members
SET bio = '저는 MySQL을 잘하고 싶어요!'
WHERE member_id = 2;

-- 결과 확인
SELECT * FROM members WHERE member_id = 2;

-- 주문 ID가 5번인 주문 내역을 삭제합니다.
DELETE FROM orders
WHERE order_id = 5;

-- 결과 확인
SELECT * FROM orders;