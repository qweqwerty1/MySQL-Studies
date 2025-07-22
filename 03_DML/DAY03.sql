-- study_db를 사용하겠다고 지정합니다.
USE study_db;

-- members 테이블에 첫 번째 회원 데이터를 추가합니다.
INSERT INTO members (member_id, email, name, bio)
VALUES (1, 'contact@google.com', '곰두리', '데이터베이스를 배우는 중입니다.');

-- bio 컬럼을 생략하고 데이터를 추가합니다. (bio는 NULL을 허용하므로 가능)
INSERT INTO members (member_id, email, name)
VALUES (2, 'hello@naver.com', '코코');

-- 여러 회원을 한 번에 추가합니다.
INSERT INTO members (member_id, email, name, bio)
VALUES
(3, 'world@kakao.com', '두부', '리액트를 좋아해요.'),
(4. 'dev@gmail.com', '피피', '저는 개발자입니다.');

-- members 테이블의 모든 컬럼(*) 데이터를 조회합니다.
SELECT * FROM members;

-- 원하는 컬럼만 골라서 조회합니다.
SELECT name, email FROM members;

-- 특정 조건을 만족하는 데이터만 조회합니다. (WHERE 절 사용)
-- 이름이 '코코'인 회원의 정보를 조회합니다.
SELECT * FROM members
WHERE name = '코코';