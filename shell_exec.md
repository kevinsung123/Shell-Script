#### **exec**
-  앞선 명령어의 결과를 입력으로 받아 “\;” 라는 표기자를 만날때까지 읽고 실행
- 즉 exec 커맨드의 끝을 ';'(세미콜론)으로 표기해줘야함
- '+' 옵션은 인자를 연속으로 입력해서 커맨드 한번으로 실행하게끔 해줌
```
/home/test 에 아래와 같이 3개의 파일이 있을 경우
/home/test/a.txt
/home/test/b.txt
/home/test/c.txt
```
1. /home/test 하위 파일 중 크기가 5MB 이상인 파일의 출력을 인자로 하여 ls -l 명령어를 실행합니다.
```
$ find /home/test -type f -size +5M -exec ls -l {} \;
({} <- 위치에 find 결과값의 인자가 들어갑니다.)
위 명령어를 풀어서 써보자면...
$ find /home/test -type f -size +5M -exec ls -l {} \;
=> $ ls -l /home/test/a.txt
$ ls -l /home/test/b.txt
$ ls -l /home/test/c.txt
```
2. /home/test 하위 파일 중 크기가 5MB 이상인 파일의 출력을 인자로 하여 chmod 명령어를 실행합니다.
```
$ find /home/test -type f -size +5M -exec chmod 755 {} +
위 명령어를 풀어서 써보자면...
$ find /home/test -type f -size +5M -exec chmod 755 {} +
=> $ chmod 755 /home/test/a.txt /home/test/b.txt /home/test/c.txt
```

3. /data01/custom_pgm/L2에서 해당 테이블이 포함된 파일과 해당 내용을 출력
```
$ find /data01/custom_pgm/L1 -exec grep -E -isH [table_name] {} \; >> tbl_find.txt

- find에서 찾은 파일을 명령어 인자로 넘겨 "\;"만날때 까지 읽고 실행
- grep
- E : 정규식패턴
- i : 대소문자 품시
- H : 해당 파일명 출력
- S : console에 출력하지 않음
- q : 해당 표준출력에 출력하지 않고 0/1로만 결과를 출력
```