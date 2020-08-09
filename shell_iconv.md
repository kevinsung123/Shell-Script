### iconv
- 어떤 text의 encoding을 다른 encoding으로 변환
- 읽을 input파일이 없을때 표준입력으로부터 받음
#### syntax
``` iconv [options] [-f from encoding] [-t to-encoding] [input_files]```
- f : 입력 문자열의 encoding 형식 지정
- t :  출력문자열의 encoding 지정
- l :  모든 알려진 문자열의 encoding들을 보여줌
- c :  terminating인 문자열들이 변환 할 수 없을떄 discard
- o : outputfile
- verbose : 여러개 파일들을 처리할때 표준에러에대한 진행 상태를 print
#### Note
- string//IGNORE
	- encoding옆에 붙였을떄 변환 할 수 없는 문자열들을 버리고 변환 후 error를 프린트
- string//TRANSLT
	- encoding옆에 붙였을때 target 문자열로 표현 될 수없을떄 , 거의 비슷한 한개 또는 여러개 문자열로 변환
	- 
