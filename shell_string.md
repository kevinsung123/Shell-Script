

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
 
