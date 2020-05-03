### Special Variable in Unix
- $ : 프로세스id, pid
- $0 : 현재 스크립트의 파일이름
- $n : 스크립트의 n번째 arguments
- $# : 스크립트의 argument의 수 
- $* : 모든 arguments with double quoted, 전체 리스트를 한개의 argument로 취급
- $@ : 모든 arguments가 개별적으로  double quoted으로 감싸짐
- $? : 마지막 command실해의 exit status
- $! : 마지막 백그라운드 command의 프로세스넘버

---
### Variable 사용
#### Variable 정의
- usage : [variable_name] = variable_value
- 이런 모든 variable => scalar variables
#### Accessing values
- dollar sign($)으로 변수에 접근 가능
- read only variable
	```
	#!/bin/bash
	NAME="zara"
	readonly NAME
	NAME="test"
	=>위 실행 시 결과는  /bin/sh: NAME: This variable is read only.
	```
#### Unsetting Variables
- unset [변수명] : 할당된 변수의 값을 제거

#### Variable Types
- local variable : 지역변수
- environment : shell의 자식프로세스에서 어디든지 접근 가능
- shell variables : 
---
### vi 편집기
#### Moving within a File
- k : 위쪽이동
- j : 아래이동
- h : 왼쪽이동
- l : 오른쪽이동
- $ : 마지막 line의 커서
- 1G : 첫번쨰 라인이동(=gg)
- nG : n번째 라인 이동 
- G : 마지막 라인 이동 

