USE study_db;

-- 주문 정보를 담을 orders 테이블 생성
CREATE TABLE orders (
    order_id     INT NOT NULL AUTO_INCREMENT,
    member_id    INT,
    product_name VARCHAR(100) NOT NULL,
    order_date   DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (order_id)
);

-- 주문 데이터 추가 (1, 2, 4번 회원이 주문한 상황)
INSERT INTO orders (member_id, product_name)
VALUES
(1, '노트북'),
(2, '키보드'),
(1, '마우스'),
(4, '모니터'),
(2, '웹캠');

-- 주문한 회원들의 정보와 그 주문 내용을 함께 조회
SELECT
    m.name,
    m.email,
    o.product_name,
    o.order_date
FROM members AS m
INNER JOIN orders AS o ON m.member_id = o.member_id;

-- 모든 회원을 기준으로, 주문 내역이 있다면 함께 조회
SELECT
    m.name,
    m.email,
    o.product_name
FROM members AS m
LEFT JOIN orders AS o ON m.member_id = o.member_id;