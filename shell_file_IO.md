### shell file 읽기
- 파일 내용을 변수에 저장하기
```
value=$(<file.txt)
echo "${value}"
```
 - 파일 내용을 한 줄 씩 읽기
```
while read line; do
	 echo $line
done < file.txt
```
- 파일 내용을 한줄씩 읽어서 처리하기(파이프라인)
```
cat test.txt | while read line
do 
	echo $line
done
```
- 다른 예제
```
UPDATE_LIST=`cat test.txt`

FILE_LIST=""

for UPDATE_TARGET in ${UPDATE_LIST}
do
	if [ -z "$FILE_LIST" ];then #값여부 확인
		FILE_LIST=$UPDATE_TARGET
	else
		if [ $(echo ${UPDATE_TARGET} | egrep "[0-9]+") ]; then #숫자인지 여부 확인
			FILE_LIST=$FILE_LIST,$UPDATE_TARGET
		else
			FILE_LIST=$FILE_LIST' '$UPDATE_TARGET
		fi
	fi
done

echo $FILE_LIST
=> cat으로 파일읅 읽어와서 출력할떄 문장에 공백이 있는 겨우 단어를 출력
```
