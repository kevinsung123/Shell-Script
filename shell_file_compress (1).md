### tar.gz file and How Do I Open It?
- tar file은 tarball이라고 부름
- 쉽게 저장하기 위해 한개의 파일로 여러파일들을 압축한것들
- 이 파일들은 TGZ파일들이라고 부름
#### How Do I open a Tar File?
- 압축풀기
```
$ tar -xzf tarfile
=> Xtract Ze File
v : enable verbose mode, showing the progress of the command
x : extract
z : user gzip, omit this if you have a.tar
f : specifies file input, rather then STDIN
```
- 압축하기
```
$ tar -czf test.tar.gz test
=> x flag를 단지 c(create)flag로 변환
c : create an archive
z : compress the archive with gzip
v : display progress in the terminal
f : allows you specify the filename of the archive
```
