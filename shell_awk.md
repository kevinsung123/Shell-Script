### AWK 작동방법

1. **AWK Operations:**  
(a) Scans a file line by line  
(b) Splits each input line into fields  
(c) Compares input line/fields to pattern  
(d) Performs action(s) on matched lines

2. **Useful For:**  
(a) Transform data files  
(b) Produce formatted reports

3. **Programming Constructs:**  
(a) Format output lines  
(b) Arithmetic and string operations  
(c) Conditionals and loops
-  **Syntax**  `$awk options 'selection_criteria {action}' input > output`
-  **Built in Variables in AWK**
    -  NR : Nnumber of input Records input레코드의 숫자 저장 보통 라인수를 의미
    >the awk command with NR prints all the lines along with the line number.
    -  NF : Number of Fields 현재 input 레코드의 필드수를 저장(last field)
    >We can get the Salary using $NF , where $NF represents last field.
    -  FS : Field Separator 기본으로 white space가 필드 구분자
    -  RS : Record Separator현재 레코드의 구분자 문자를 저장 (default는 newline이다)
    - OFS : Output Field Separator 출력필드 구분자를 저장. (default는 blankspace)
    - ORS : Output Record Separator
    - BEGIN / END 
	    > awk '
	 	BEGIN { actions } 
	 	/pattern/ { actions }
	 	/pattern/ { actions }
	            ……….
		 END { actions } 
	' filenames
	-BEGIN 패턴 : awk는 어떤 input라인이 들어오기전에 action을 한번실행(첫번째 레코드를 처리하기전)
	-END 패턴 : 실행이 끝나기전에 실행(모든 레코드 처리 후 )
	- built in 변수
	```
	    ARGC        : ARGV 배열 요소의 갯수.
	    ARGV        : command line argument에 대한 배열.
	    CONVFMT     : 문자열을 숫자로 변경할 때 사용할 형식. (ex, "%.6g")
	    ENVIRON     : 환경변수에 대한 배열.
	    FILENAME    : 경로를 포함한 입력 파일 이름.
	    FNR         : 현재 파일에서 현재 레코드의 순서 값.
	    FS          : 필드 구분 문자. (기본 값 = space)
	    NF          : 현재 레코드에 있는 필드의 갯수.
	    NR          : 입력 시작 점에서 현재 레코드의 순서 값.
	    OFMT        : 문자열을 출력할 때 사용할 형식.
	    OFS         : 결과 출력 시 필드 구분 문자. (기본 값 = space)
	    ORS         : 결과 출력 시 레코드 구분 문자. (기본 값 = newline)
	    RLENGTH     : match 함수에 의해 매칭된 문자열의 길이.
	    RS          : 레코드 구분 문자. (기본 값 = newline)
	    RSTART      : match 함수에 의해 매칭된 문자열의 시작 위치.
	```
- 옵션  
	- F : 문자열을 분리할 기준이 되는 분리문자  
	- v : 파라미터 전달  
  
	- 내장함수  
	- sub : 지정한 문자열 치환  
	```  
	$echo "i have a water." | awk -F " " '{sub("a", "b",$4);print $4}'  
	```  
	- gsub : 문자열 일괄치환  
	- index : 주어진 문자열과 일치하는 문자의 인덱스 반환  
	- length: 문자열 길이  
	- substr : 시작위치에서 주어진 길이만큼 문자열 반환  
	- split : 문자열을 분리하여 배열로 반환  
	- print : 지정한 포맷에 따라 함수 출력  
- 필드 구분자 변경
``` $ awk -F ':' '{print $1}' ./file.txt ```
- awk 실행결과 레코드 정렬하기
``` $ awk '{print $0 }' file.txt | soft #오름차순```
```$ awk '{print $0 }' file.txt | sort -r #역순으로 정렬```
