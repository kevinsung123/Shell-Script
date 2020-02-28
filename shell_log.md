### 특정 timstamp로 파일 추출
- **sed ‘/love/p’ datafile**
: 기본 설정에서는 모든 행을 표준 출력으로 내보낸다. 패턴 love가 있는 행을 찾으면 그 행을 한 번 더 출력한다.
- **sed -n ‘/love/p’ datafile**
: 기본 설정에 의한 p 명령어의 동작을 제한한다. -n 옵션을 사용하면 love 패턴을 포함하는 행들만 출력한다.
- 특정 시각 이후 파일로 추출
	```
	$sed -n '/20:05/,$ p' [파일명]
	=> 20:05분 이후부터 마지막라인까지 출력후 파일로 저장
	```
- echo n : 개행없이 한 라인으로 출력
```$echo -n "test" ```
- sed n 옵션 붙이는 이유?
	- sed 프로세스는 각 라인마다 처리
	- p 옵션이 붙으면 모든 라인을 출력
	- n 옵션을 붙이면 자동 print를 disable하므로 원하는 라인만 출력가능
```
Normally, sed processes each line (doing substitutions etc), then prints the result. If the processing involves the line being printed (e.g. sed's `p` command), then it gets printed twice (once during processing, then again by the automatic post-processing print). The `-n` option disables the automatic printing, which means the lines you don't specifically tell it to print do not get printed, and lines you do explicitly tell it to print (e.g. with `p`) get printed only once.
```
