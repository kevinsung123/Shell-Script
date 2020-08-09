### tee
- 표준 입력을 읽어서 표준 출력과 표준에러로 그리고 더 많은 파일들에 그것을 Write
- 프로그램의 출력을 break하여 ```display```그리고 파일로 ```saved in file```을 위하여 사용
![enter image description here](https://media.geeksforgeeks.org/wp-content/uploads/tee-command-linux.jpg)
#### syntax
``` tee [options] ..[file]```
#### options
- a 
	- 기본적으로 file에 overwrite하지않고  주어진 파일에 붙여씀(append)
- usage
	- ``` cat [file] 2>&1 | tee -a [log_file]```
	- 표준출력과 표준에러의 내용이 로그 파일도 나오게하고 콘솔에도나오게 함
### 표준 입/출력 
- 파일디스크립터
	- 0 : standard input
	- 1 : standard output
	- 2 : standard error
- 프로그램이 수행되면 os는 실행되는 file-descriptor를 위의 3개를 할당
- 내부적 수행시 4번쨰 file-descriptor를 할당
#### 표준입력
	- 기본적으로 keyboard
	- ex
		- cat 명령은 내부적으로 첫번쨰 arg로 지정된 파일ㅇ르 사용
		- 하지만 인자를 지정하지 않으면 표준입력장치인 키보드로 부터 입력을 받고 출력
- 표준입력 장치 변경
	- shell에서 표준입력장치를 변경방법 2가지
		- redirection
			- ```cat < /etc/hosts```
			- 일반적으로 명령어 뒤에 < 기호를 입력하고 장치명(파일명)
		- pipe
#### 표준출력과 표준출력장치 변경
- 표준출력은 redirectiont시 ```> ```를 사용
- 예시
	- ```cat /tmp/error.txt > /dev/null/```
		-  cat명령의 표준출력을 화면이 아닌 /dev/null로 변경
		- 문제는 error.txt파일이 있다면 문제 없지만, 파일이 없으면 에러메시지 출력
		- 위의 예제는 표준출력만 변경한것!
		- 사실 무언가 생략된 문자
		- 표준 file descriptor에는 출력에대한 descriptor가 2개 표준출력/표준에러
		- cat /tmp/error.txt 1> /dev/null이 정확한 문장!
		- 묵시적으로 생략시 표준출력이라고 약속
	- ```cat /tmp/error.txt > /dev/null 2>&1```
		- 2번 file descriptor(표준에러) 출력을 > 다음와 파일로 변경 
		- &1 : 1은 표준출력을 의미
		- 즉 표준 출력의 출력 자이촐 지정된 장치을 표준에러 출력장치로 함께 사용
		- 에러가 발생하면 에러메시지를 /dev/null로 redirect 한다는 의미
