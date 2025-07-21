-- 만약 이전에 만들었던 study_db가 있다면 삭제하고 새로 시작합니다.
DROP DATABASE IF EXISTS study_db;

-- 우리가 사용할 데이터베이스(창고)를 새로 만듭니다.
CREATE DATABASE study_db;

-- study_db를 사용하겠다고 지정합니다.
USE study_db;

-- 오늘의 핵심! 회원 정보를 담을 테이블(선반)을 만듭니다.
CREATE TABLE members (
    member_id    INT NOT NULL AUTO_INCREMENT,
    email        VARCHAR(100) NOT NULL UNIQUE,
    name         VARCHAR(50) NOT NULL,
    bio          TEXT NULL,
    created_at   DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (member_id)
);

-- 테이블이 잘 만들어졌는지 구조를 확인해봅시다.
DESC members;

-- 현재 데이터베이스에 어떤 테이블들이 있는지 목록을 봅시다.
SHOW TABLES;