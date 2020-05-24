### AWK 작동방법
**1. AWK Operations:**  
(a) Scans a file line by line  
(b) Splits each input line into fields  
(c) Compares input line/fields to pattern  
(d) Performs action(s) on matched lines

**2. Useful For:**  
(a) Transform data files  
(b) Produce formatted reports

**3. Programming Constructs:**  
(a) Format output lines  
(b) Arithmetic and string operations  
(c) Conditionals and loops

- **Syntax**
	```$awk options 'selection_criteria {action}' input > output```
- **Built in Variables in AWK**
	- NR : input레코드의 숫자 저장
	- NF : 현재 input 레코드의 필드수를 저장
	- FS : 기본으로 white space가 필드 구분자
