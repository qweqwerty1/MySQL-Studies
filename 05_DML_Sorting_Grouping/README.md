# 05_DML: 데이터 정렬 및 그룹화

SELECT 문으로 조회한 결과를 특정 순서로 정렬하거나, 특정 컬럼을 기준으로 그룹화하여 통계 정보를 얻을 수 있습니다.

## ORDER BY: 결과 정렬

SELECT 문의 결과 집합을 특정 컬럼의 값을 기준으로 정렬합니다.

* ASC (Ascending): 오름차순으로 정렬합니다 (기본값).

* DESC (Descending): 내림차순으로 정렬합니다.

```SQL

SELECT * FROM members
ORDER BY created_at DESC;
```

## GROUP BY: 데이터 그룹화

특정 컬럼에서 동일한 값을 가진 행들을 하나의 그룹으로 묶습니다. 주로 각 그룹의 통계 정보를 계산하는 집계 함수와 함께 사용됩니다.

* 주요 집계 함수:

    * COUNT(): 그룹의 행 개수

    * SUM(): 그룹의 합계

    * AVG(): 그룹의 평균값

    * MAX(): 그룹의 최댓값

    * MIN(): 그룹의 최솟값

## HAVING: 그룹 필터링

GROUP BY로 생성된 그룹 결과에 대한 조건을 지정하여 필터링합니다.

* WHERE vs HAVING:

    * WHERE는 그룹화하기 전의 개별 행을 필터링합니다.

    * HAVING은 그룹화한 후의 그룹 자체를 필터링합니다.

```SQL

SELECT domain, COUNT(*)
FROM members
GROUP BY domain
HAVING COUNT(*) > 1;
```