### shell 자체 debugging 옵션
- v : shell이 스크립트 수행을 위해서 읽은 부분을 출력해준다
- x : 읽은 부분을 실제 싱행한 부분 을 보여준다
` sh -xv [scrip_file]`
- `set -xv`
	- script 전체가 아닌 일부분에서만 이 기능을 사용하려면 사용하려고 하는 부분앞에 다음을 추가한다
- `set +xv`
	- 위의 기능을 업애려분 필요한 부분 이이후에 다음을 추가
- `+` : shell이 실행하는 부분
- `++` : 다른 외부 프로그램이 실행하는부분
- 결과를 redirection
	- ` sh -xv [script_file] > [log] 2>&1`
- `e` : shell 실행시 결과가 0이아닌(비정상)인 경우 shell을 종료
