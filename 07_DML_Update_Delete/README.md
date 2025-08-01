# 07_DML: 데이터 수정 및 삭제
데이터베이스에 저장된 데이터를 수정하거나 삭제하는 방법을 배웁니다. 이 명령어들은 데이터를 직접 변경하기 때문에 WHERE 절을 이용해 대상을 정확히 지정하는 것이 매우 중요합니다.

## UPDATE: 데이터 수정

테이블에 이미 존재하는 행의 값을 수정하는 명령어입니다.

* 기본 문법:

```SQL

UPDATE 테이블명
SET 컬럼1 = 값1, 컬럼2 = 값2, ...
WHERE 조건;
```

* 핵심: WHERE 절을 생략하면 테이블의 모든 행이 수정되므로 반드시 사용하여 수정할 대상을 명확히 지정해야 합니다.

## DELETE: 데이터 삭제

테이블에서 특정 행을 삭제하는 명령어입니다.

* 기본 문법:

```SQL

DELETE FROM 테이블명
WHERE 조건;
```

핵심: WHERE 절을 생략하면 테이블의 모든 데이터가 삭제됩니다. UPDATE와 마찬가지로 삭제할 대상을 정확히 지정하는 것이 필수적입니다.