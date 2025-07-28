# 06_DML: 테이블 조인 (JOIN)
관계형 데이터베이스에서 가장 중요한 기능 중 하나로, 두 개 이상의 테이블을 공통된 컬럼을 기준으로 연결하여 하나의 결과 집합처럼 조회할 수 있게 합니다.

## INNER JOIN
두 테이블에 모두 존재하는 데이터만을 합쳐서 보여주는, 가장 일반적인 조인 방식입니다. 수학의 교집합과 같습니다.

* ON: JOIN할 두 테이블의 연결 조건을 명시합니다.

* AS: 테이블이나 컬럼에 별칭(alias)을 붙여 쿼리를 간결하게 만들 수 있습니다.

```SQL
SELECT m.name, o.product_name
FROM members AS m
INNER JOIN orders AS o ON m.member_id = o.member_id;
```

## LEFT JOIN (LEFT OUTER JOIN)

왼쪽 테이블(먼저 작성된 테이블)의 모든 행을 일단 결과에 포함시키고, 오른쪽 테이블은 ON 조건에 맞는 데이터가 있을 때만 값을 보여줍니다. 조건에 맞는 데이터가 없으면 해당 컬럼은 NULL로 표시됩니다.

* 용도: 한쪽 테이블의 전체 목록을 기준으로, 다른 테이블에 관련 데이터가 있는지 없는지 확인할 때 유용합니다. (예: 전체 회원 목록과 그들의 주문 내역 조회)

```SQL
SELECT m.name, o.product_name
FROM members AS m
LEFT JOIN orders AS o ON m.member_id = o.member_id;
```