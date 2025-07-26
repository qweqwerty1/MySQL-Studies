USE study_db;

-- 1. 비교 연산자
-- member_id가 2가 '아닌' 회원 조회
SELECT * FROM members WHERE member_id <> 2;

-- member_id가 2 '초과인' 회원 조회
SELECT * FROM members WHERE member_id > 2;

-- 2. 범위 조회 (BETWEEN)
-- member_id가 2에서 3 '사이인' 회원 조회 (2, 3 포함)
SELECT * FROM members WHERE member_id BETWEEN 2 AND 3;

-- 3. 목록 조회 (IN)
-- member_id가 1 또는 4인 회원 조회
SELECT * FROM members WHERE member_id IN (1, 4);

-- 4. 패턴 매칭 (LIKE)
-- 이메일이 'g'로 시작하는 회원 조회
SELECT * FROM members WHERE email LIKE 'g%';

-- 이름에 '코'가 포함된 회원 조회
SELECT * FROM members WHERE name LIKE '%코%';

-- 5. 논리 연산자 (AND, OR, NOT)
-- member_id가 2 이상'이면서' 이름이 '두부'인 회원
SELECT * FROM members WHERE member_id >= 2 AND name = '두부';

-- 이메일이 'google.com'으로 끝나'거나' 이름이 '피피'인 회원
SELECT * FROM members WHERE email LIKE '%@google.com' OR name = '피피';