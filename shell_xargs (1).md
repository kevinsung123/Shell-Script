#### xargs
- 앞선 명령어의 결과를 입력으로 받아 인자를 연속으로 나열하여 커맨드를 시랭함
- { } 문자열은 다른 문자여로 사용 가능
1. -l 옵션으로 txt파일을 backup폴더로 복사(기본값이 업으므로 -l{} 사용)
```
$ find /home/test -type f | xargs -l {} cp {} /home/test/backup
```
2. -i옵션으로 txt파일을 backup폴더로 복사 (옛날방식)
```
$ find /home/test -type f | xargs -i cp {} /home/test/backup
```
3. { } 대신 다른 문자열 사용 
- 옵션
	- n : 지정된 숫자만큼 행을 출력(앞에 들어오는 인자의수를 제한 n으로 지정한 인자만큼 들어온다)
	- p : 사용자에게 각 명령행을 실행할지 여부와 터미널에서 행을 읽는거에대한 여부를 물음
	- t : xargs를 통해 구성된 명령어를 표준에러로 출력
	- E : 문자열의 끝을 eof-str로 설정
	- I(i) : xargs에 전달된 라인 전체를 뒤에 나오는 명령어의 인자로 사용 (디폴트로 라인 전체를 의미하는 기호는 {} 이다)

- 파일 검색 후 cp
```$ ls -alt | grep *.txt | awk '{print $8}' | xargs -n1 cp -t ./tmp```
	- cp :t 옵션
		- t :target directory 
		- 모든 argument를 desc에 복사
