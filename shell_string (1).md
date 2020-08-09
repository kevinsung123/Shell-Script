

## 문자열 처리

### awk
-  입력을 주어진 분리자로 분리하여 명령을 처리

- 옵션
	-  F : 문자열을 분리할 기준이 되는 분리문자
	-  v : 파라미터 전달
	
- 내장함수
	-  sub : 지정한 문자열 치환
	```
	$echo "i have a water." | awk -F " " '{sub("a", "b",$4);print $4}'
	```
	-  gsub : 문자열 일괄치환
	-  index : 주어진 문자열과 일치하는 문자의 인덱스 반환
	- length: 문자열 길이
	-  substr : 시작위치에서 주어진 길이만큼 문자열 반환
	-  split : 문자열을 분리하여 배열로 반환
	-  print : 지정한 포맷에 따라 함수 출력
	- 
### sort 
- 텍스트로 된 파일 행단위의 정렬 할 떄 사용
- usage: sort [옵션] 파일명
	- sort : 오름차순
	- sort -r :내림차순
	- sort -k 2 : 지정한 두번쨰필드를 기준으로 정렬
	- sort -f : 파일 대소문자 구분하지 않고 정렬
	- n 라인의 각 필드를 비교하는 대상을 숫자로 한정
	- f 영어를 정렬할 때, 대소문자 구별안함
	- r 출력 순서를 역순으로
	- b 앞에 붙는 공백 무시
	- t 필드 구분자 지정
	- m 정렬된 파일을 병합
	- u 정렬후, 중복행 제거
	- o 저장할 파일명을 명시, 명시하지 않으면 화면에 출력
	```
	cat words.txt | xargs -n1 | sort | uniq -c | sort -nr | awk '{print $2 " " $1}'
	- cat read file
	- tokenize with line by line output
	- sort the words to prepare for count -c
	- output unique words with count
	- sort in natural order (n) descending(-r reverse)
	- tokenize with awk to remove whitespace formatting and reverse the order given by count -c
	```

 ### xargs 
 - 앞 명령어의 출력 결과를 다음 명령어의 인자로사용
 -  n : 지정된 숫자만큼 행을 출력
 
 ### grep
 - 지정한 문자열을 포함하고 있는 행을 검색 
 -
	| 옵션 | 내용  |
	|-- | --|
	| i | 대소문자 구분없이 검색 |
	| v| 해당 문자를 제외하고 검색 |
	| n | 검색한 문자의 행 출력 |
	| l | 검색한 문자가 포함된 파일 출력 |
- 정규식을 이용한 검색 
	```
	$ cat test.txt |  grep "[a-z]"
	```
### sed(stream editor)
- 텍스트 데이터를 패턴매칭하여 처리. 표준 입려이나 파일에서 텍스트를 입력받아 데이터를 처리
-  sed내의 명령은 기본적으로 각 라인에 대해 적용 
- 삭제/치환과 같은 일반적인 편집과 출력/파일에 저장 및 패턴 공간이라 불리는 편집버를 제어하는 명령어등 포함
-  **어드레스** : 특정줄 혹은 패턴에 매치되는 조건만족하는 경우에만 적용(명령의 범위를 한정)
- sed는 스트림으로 전달되는 일련의 텍스트를 각각의 행으로 끊어서 처리
	- 읽어들인 한줄의 버퍼 콘텐츠는 패턴공간이라는 메모리상 버퍼영역에 복사
	- 패턴  공간에 대해 실행시 주어진 스크립트를 반본적으로 적용
	
- **사이클** : sed는 패턴스페이스라는 메모리 영역을 사요 입력 장치라부터 문자열을 읽고 다음과같은 라인 사이클 실행
	1.  최초 패턴 공간은 비어 있다.
	2.  표준입력으로부터 한 줄의 텍스트를 읽어 패턴 공간에 복사한다.
	3.  스크립트에 정의된 각 명령을 패턴 공간에 대해서 수행한다.
	4.  패턴 공간의 내용을 출력한다. (디폴트 동작)
	5.  패턴 공간의 내용을 지운다.
	6.  파일의 남은 데이터가 있으면 1로 돌아가서 다음 라인을 처리한다
	<br/>
- 텍스트 치환 :  s///
 - [예제참고]([https://www.lesstif.com/pages/viewpage.action?pageId=6979751](https://www.lesstif.com/pages/viewpage.action?pageId=6979751))	
-
	| 옵션 |내용  |
	|--|--|
	| f | 처리할 명령을 저장할 파일을 지정 |
	| i |원본 파일 내용을 in-place로변경 |
	| n |읽어들인 라인을 암시적으로 자동출력하는 것을 중단 |
	| e |실행될 명령에 스크립트 추가(여러개 명령어를 사용시 사용)|
```
EX)
$ sed 's/o/l/g sample.txt
=> s/이전문자/변경할문자/g 형식으로 입력
```

###  /dev/null 2>$1 
-  /dev/null : 표준출력을 null device로 redirect해준다 
-  2>$1 : 표준에러스트림을 출력스트림으로 redirect해준다
- stderr =2
- stdout=1

