### ls command in Linux/Unix
- ls : 파일과 디렉터리들의 내용을 리스트시키는 명령어

#### ls syntax
``` $ ls [options] [file|dir]```
#### ls command options
- a:  "."으로 시작하는 모든 hidden파일들을 보여줌
- d : '*/'와 함께 디렉터리들을 리스트화해줌(파일은 제외)
- l : 긴 format으로 리스트시킴 ( 권한까지 보여줌)
- lh : readable file size를 긴 포맷으로 보여줌
- ls : file size를 긴 포맷을 ㅗ보여줌
- r : reverse order 
- R : recursively directory tree
- s : list file size
- S : sort by file size
- t : sort by time & date

### dirname
- usage: dirname [options] name
- DESCRIPTION : 마지막 non-slash 컴포넌의 NAME을 출력 그리고 뒤에 따르는 slash들을 제거

### basename
- NAME : 디렉터리 그리고 파일이름들의 suffix(확장자들을) strip(제거)
- DESCRIPTION : 컴포넌들을 leading하는 어떤 디렉터리든 제거하고  프린트
