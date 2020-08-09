### find 후 rm -rf
``` find . -type f name "*(1).md" | tr "\n" "\0" | xargs -0 rm```
	- find명령어로 찾으면 tr를 이용해서 newlines 들을  null byte로 치환
``` find . -type f -name "*(1).md" -print0 | xrags rm```
- print0
     - True;  print  the  full file name on the standard output, followed by a null character (instead of
       the newline character that **-print** uses).  This allows file names that contain  newlines  or  other
       types  of  white space to be correctly interpreted by programs that process the **find** output.  This
       option corresponds to the **-0** option of **xargs**.
 - 0
	 -  Input items are terminated by a null character instead  of  by  whitespace,  and  the  quotes  and
       backslash  are not special (every character is taken literally).  Disables the end of file string,
       which is treated like any other argument.  Useful when input  items  might  contain  white  space,
       quote marks, or backslashes.  The GNU find -print0 option produces input suitable for this mode.
---
### find directory만 찾기고 특정파일 복제
-  ``` find -maxdepth=1 -type d```
- ``` find -max-depth=1 -type d -exec cp -r [복제파일]
