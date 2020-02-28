#### Options for IF statement in Bash Scripting
- if구문에서 특별한 task를 수행 가능 
-  Syntax of Bash if
	```
	if^[^expression^];
	then
	fi
	```
	- 기본적으로 위와같이 space가 필요!!
	- semicolon(;)은 마지막라인
- **두 문자열이 같은지 비교**
```
#!/bin/bash
# if condition is true
if [ "hello" == "hello" ];
then
    echo "true condition"
fi
# if condition is false
if [ "hello" == "bye" ];
then
    echo "false condition"
fi
```
-  숫자비교 
	- eq : equal 같음
	- ne : not equal 다름
	- gt : greater than 큼 >
	- ge : greater than or equal
	- lt : less thn 작음 <
	- le : less than equal 작거나 같음 <=
	- == : 같음
	- != : 다름
	- z : 문자열이 null
	- n : 문자열이 null이 아님
- if -z : to check if string has zero length)
	- string 길이가 0인지 판단 후, true/false 반환
	```
	#!/bin/bash
	if [ -z "" ];
	then
	echo "zero length string"
	fi
	if [ -z "hello" ];
	then
	echo "hello is zero length string"
	else
	echo "hello is not zero length string"
	fi
	```
-  if -s : check if file size if greater than zero)
	- returns true if size of the file is greater than zero.
	```
	if [ -s /home/tutorialkart/sample.txt ];
	then
	echo "Size of sample.txt is greater than zero"
	else
	echo "Size of sample.txt is zero"
	fi
	```
- if -f : 파일이 존재 하는지 확인
- if -e: 타켓이 존재하는지 확인(유형-노드,디렉토리,소켓)상관없이
- if -d : 디렉토리
- 
