## DDL (Data Definition Language) - 데이터 정의어

데이터베이스의 구조를 정의, 변경, 삭제하는 명령어.

* CREATE: 데이터베이스, 테이블 등을 생성

* ALTER: 기존 구조를 수정

* DROP: 기존 구조를 삭제

---

`CREATE TABLE` - 테이블 생성

데이터를 저장할 표(테이블)의 구조를 설계하는 명령어. 테이블 이름과 함께 컬럼명, 데이터 타입, 제약 조건을 정의한다.

주요 데이터 타입

* `INT`: 정수형 숫자

* `VARCHAR(n)`: 최대 n글자까지의 문자열

* `TEXT`: 아주 긴 텍스트

* `DATETIME`: 날짜와 시간

주요 제약 조건 (Constraints)

* `NOT NULL`: null 값을 허용하지 않음 (필수 입력)

* `UNIQUE`: 해당 컬럼의 모든 값이 고유해야 함 (중복 불가)

* `PRIMARY KEY`: 테이블의 각 행을 식별하는 고유한 기본 키. NOT NULL과 UNIQUE 속성을 모두 가짐.

* `AUTO_INCREMENT`: 새 행이 추가될 때마다 값이 1씩 자동 증가

* `DEFAULT`: 값을 지정하지 않았을 때 자동으로 입력될 기본값