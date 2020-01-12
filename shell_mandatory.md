# Shell Sciprt  
  
### File로 실행하는방법  
1 chmod +x filename  
2 ./filename  
3 sh filename  
  
### Script syntax  
- #!/bin/sh  
- 위의 라인은 /bin/sh로 실행되면서 스크립트임을 알려주는 라인이므로 모든 스크립트에서 기본적으로 써주는게 좋다  
  
- #은 주석으로 처리  
  
### Variable  
- 변수에 값 대입시 띄어쓰기가 없이해야한다  
> V="Hello World" (o)  
> V = "Hello World" (x)  
>  
- 변수타입 종류가 없기때문에 string, integer ,real number 모두 저장가능  
  
- 변수를 문자열에 사이에 대입 => bracket 사용 { } (중괄호)  
```  
#!/bin/sh  
echo "What is your name?"  
read USER_NAMEecho "Hello $USER_NAME"  
echo "I will create you a file called ${USER_NAME}_file"  
touch "${USER_NAME}_file"  
```

