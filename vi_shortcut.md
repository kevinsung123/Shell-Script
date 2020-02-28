#### 자동완성
- ctrl+p
- ctrl_n
#### complete옵션
- :set compelete?
	- ycm이 자동설정
	-. : 현재 편집중인 버퍼의 모든단어를 자동완성소스로 사용
 #### abbreviate
 - 축약어 등록
 - insert, command-line모드에서 작동
 - ex )
	 - :aabr consolee console
#### vim 스크립트 실행기능 
- <expr>을 사용하면 스크립트 실행결과를 완성
```
iabbr __email abcd@efgh.com
iabbr <expr> __time strftime("%Y-%m-%d %H:%M:%S")
iabbr <expr> __file expand('%:p')
iabbr <expr> __name expand('%')
iabbr <expr> __pwd expand('%:p:h')
iabbr <expr> __branch system("git rev-parse --abbrev-ref HEAD")
```
