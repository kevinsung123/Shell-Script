
| 종료 코드 번호 | 뜻 |예제 |  비고 | 
|--|--|--|--|
| 1 | 광범위한 일반적 에러 |let "var1 = 1/0" |"divide by zero"같은 잡다한 에러 |
| 2 | bash 문서에 명시되어 있는 쉘 내장명령어의 오사용 | |거의 보기 힘들고 보통은 디폴트로 1번 종료 코드로 나타남 |
| 126 |실행 불가능한 명령어의 구동  | | 퍼미션 문제거나 실행 허가가 없는 명령어|
| 127 | "command not found" | |$PATH  문제거나 오타일 가능성 있음 |
| 128 | exit 3.14159 |**exit**는 0에서 255사이의 정수만 받음 | |

[exit](https://wiki.kldp.org/HOWTO/html/Adv-Bash-Scr-HOWTO/exit-status.html#EXITCOMMANDREF)에 잘못된 인자 넘김





