### tee
- 표준입력을 일고 표준출력 그리고 파일들에 그것을 write
- syntax
	-$ tee [OPTION] ... [FILE]
- option 
	-  a : 	덮어쓰기 하지않고 주어진 파일에 붙여쓰기

#### shift
-  argument 리스트의 처음에서부터 한개씩 제거
```
$1,$2,$3이 있을때
1번 shift : $1<-$2
2번 shift : $1<-$3
```
