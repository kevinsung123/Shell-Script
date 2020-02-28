# Shell Sciprt  
  
### File로 실행하는방법  
1 chmod +x filename  
2 ./filename  
3 sh filename  
  
### Script syntax  
- **#!/bin/sh**  
- 위의 라인은 /bin/sh로 실행되면서 스크립트임을 알려주는 라인이므로 모든 스크립트에서 기본적으로 써주는게 좋다  
  
- #은 주석으로 처리  
 --------------------------------------
### Variable  
- 변수에 값 대입시 띄어쓰기가 없이해야한다  
> V="Hello World" (o)  
> V = "Hello World" (x)  
>  
- 변수타입 종류가 없기때문에 string, integer ,real number 모두 저장가능  
  
- 변수를 문자열에 사이에 대입 => bracket 사용 { } (중괄호)  
	```  
	#!/bin/sh  
	echo "What is your name?"  
	read USER_NAMEecho "Hello $USER_NAME"  
	echo "I will create you a file called ${USER_NAME}_file"  
	touch "${USER_NAME}_file"  
	```
--------------------------------------	
### while문

#### 문법
```
while [조건]
do 
  명령1
  명령2
done

<한줄>
while[조건]; do 명령1;명령2; done
```
#### 기본 루프처리
```
#!/bin/bash
/*number가 2보다 작을동안(less) 반복*/
number=0
while [$number -le 2]
do 
	echo "Number : ${number}"
	((number++))
done

```
#### 무한루프
```
number=0
/*2보다커지면 while문을 탗룿ㄹ*/
while:
do 
	if [ $number -gt 2]; then
		break
	fi
	echo "Number : {number}"
	number++
done	
```

#### 날짜를 이용한 루프
```
#!/bin/bash 
startDate=`date +"%Y%m%d"  -d  "20190101"` 
endDate=`date +"%Y%m%d"  -d  "20190201"` 
while [ "$startDate" != "$endDate" ] ; 
	do  echo  $startDate 
	startDate=`date +"%Y%m%d"  -d  "$startDate + 1 day"`; 
done
```
