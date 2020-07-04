### linux network command

#### ifconfig
- 네트워크 인터페이스 정보확인 및 설정하는 명령어
- 사용법
```
1) iconfig interface up/down
=> 해당 인터펭스를 활성화/비활성화 합
2) ifconfig interface address netmask address broadcast address
=> 해당 인터페이스를 지정IP주소, netmask를 해당 주소로, broadcast를 해당 주소로 지정 
```
```
**eth0      Link encap:Ethernet  HWaddr 00:0F:20:CF:8B:42** 
 **인터페이스 형식       MAC주소**
 **inet addr:217.149.127.10  Bcast:217.149.127.63  Mask:255.255.255.192** 
 **IPv4주소                  Broadcast 주소        넷마스크 주소
           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1**
 **①    ②       ③       ④        ⑤         ⑥
           RX packets:2472694671 errors:1 dropped:0 overruns:0 frame:0
           TX packets:44641779 errors:0 dropped:0 overruns:0 carrier:0**
 **송/수신 패킷 수
           collisions:0  txqueuelen:1000**
 **충돌패킷 수  전송 버퍼 크기
           RX bytes:1761467179 (1679.7 Mb)  TX bytes:2870928587 (2737.9 Mb)**
 **송/수신 패킷 크기
           Interrupt:28**

```
#### ip
- 인터페이스, ip주소, 라우팅 등의 정보를 설정하거나 출력하는 명령어
- ip명령같은 경우 다른명령으로 대첵가능한것이 많고 자주 쓰이지는 않음
#### netstat 
- 네트워크 연결상태, 라우팅테이블, 인터페이스 상태등의 정보를 출력하는 명령어
 - 사용법 netstat [옵션]
	 - a : 모든 소켓정보를 출력
	 - c : 계속적으로 정보를 출력
	 - g : 멀티캐스트 그룹 멤정보를 출력
	 - l  : 리스닝중인 서버 소켓을 출력
	 - M : masquered연결정보를 출력 
	 - n : 호스트,포트 사용자명 대신에 숫자로 출력
	 - p : 소켓에대한 pid/프로그램을 출력
	 - r  : 라우팅정보를 출력 
	 - s : 네트워크 프로토콜 통계정보를 출력
	 - v : 자세히 출력
```
※ IP masquered 
- 리눅스에서 지원하는 네트워크 기능으로서, 리눅스 호스트에 연결된 내부 호스트들이 리눅스 호스트에 있는 사설IP만으로도 내부 호스트들도 인터넷 서비스를 이용할 수 있도록 하는 기술
```
![enter image description here](https://t1.daumcdn.net/cfile/tistory/2739764C583D8C3F23)

- netstat의 명령어 결과중 State 종류
- 
| 종류|  의미 |
|--| -- |
| ESTABLISHED | 서버와 클라이언트가 서로 연결된 상태 |
|SYN_SENT | 클라이언트가 원격 호스트에 대한 연결을 요청한 상태|
|SYN_RECV | 서버로부터 클라이언트의 요청에대한 응답은 하였으나 클라이언트의 메시지는 받지 않은 상태|
|FIN_WAIT1 | 소켓이 닫히고 연결이 종료된 상태 |
|FIN_WAIT2| 연결이 종료되었으나, 소켓이 원격호스트로부터 종료를 기다린느 상태|
|TIME_WAIT| 패킷처리는 끝났으나, 소켓이 혹시 모를 느린 패킷을 처리하기 위해 대기중인 상태|
|CLOSE|소켓이 사용되지 않은 상태|
|CLOSE_WAIT| 원격호스트|  
|LISTEN||소켓이 서버로 들어오는 패킷을 위해 기다리는 상태 |
|LAST_ACK|마지막 ACK패킷을 기다리는 상태| 

#### route
- 라우팅정보를 출력 및 관리하는 명령어
```
#route [add/del] -net address netmask address dev interface
=> 네트워크 주소를 설정/삭제

# route [add/del] default gw address dev interface 
=> 게이트웨이 주소를 설정/삭제 

# route [add/del] -net address netmask address gw address dev interface
```
![enter image description here](https://t1.daumcdn.net/cfile/tistory/2646EE3E583DA1AD35)
- field 설명
- 
| 필드 | 의미 |
|--|--|
| destination |  목적지 주소를 나타냄 만약 192.168.111.111일떄 C클래스 넷마스크이면 192.168.111.0으로 표기 default값은 목적지로 등록안된 모든 네트워크를 나타냄 |
| gateway | 게이트웨이 주소를 나타냄. * 로 표시되면 목적지와 자신의 인터페이스와 직접 연결되어있는 상태이고 나머지 경우는 주소로 표기  | 
|genmask  | 목적지네트워크 주소를 알아낼 수 있는 넷마스크값    |
| metric  | 목적지와의 거리를 나타냄. 직접연결 0이고 라우터를 거칠떄마다 1이 증가 (hop count)    |
| ref | 다른 라우터가 목적지로 가기위해 참조한 횟수 
| iface  |  목적지와 연결된 인터페이스   |   
 
#### netcat 
- tcp나 udp를 사용하는 네트워크 연결에서 데이터를 읽고 쓰는 간단한 유틸리티 프로그램 
- raw-daya read/write할 수 있는 유틸리티 프로그램
- 스크립트와 범용 사용 network에대한 debuggin, testing tool로써 매우편리하고 원하는 포트로 원하는 데이터를 주고 받을 수 있는 특징떄문에 해킹에도 널리 이용
- -   n : 호스트 네임과 포트를 숫자로만 입력받는다.
    

-   -v : verbosity 를 증가 시킨다. 더 많은 정보를 얻을수 있다.
    

-   -o [filename]: 보내거나 받은 데이터를 헥스덤프하여 파일에 저장한다.
    

-   -u : TCP connection 대신에 UDP connection 이 이루어 진다.
    

-   -p [port number or name] : local-port 를 지정한다. 주로 -l 과 같이 사용하게 된다.
    

-   -s [ip address or DNS] : local ip address 를 지정한다. 모든 플렛폼에서 지원되지는 않는다.
    

-   -l : listen 모드로 nc을 띠우게 된다. 당연히 target host는 입력하지 않는다. -p와 같이 사용하게 된다. nc를 server 로서 쓸때 사용.
    

-   -e [filename] : -DGAPING_SECURITY_HOLE 옵션으로 Make 되었을 때 사용가능하다.
    

-   -t : -DTELNET 옵션으로 컴파일 되었을 때 사용가능하다. telnetd에 접속이 가능하도록 접속시 telnet과 같은 협상과정을 거친다.
    

-   -i [interval time] : nc는 일반적으로 8K 씩 데이터를 보내고 받는데 그렇게 Standard input의 한 라인씩 interval time마다 보내게 된다.
    

-   -z : connection을 이루기위한 최소한의 데이터 외에는 보내지 않도록 하는 옵션.
    

-   -r : port 지정이 여러개로 되어 있으면 이때 scanning 순서를 randomize하고 (일반적으로 범위로 지정하면 높은 번호의 포트부터 스캔한다) 또한 -p 옵션에서 지정가능한 local port도 randomize 합니다. 이때 주의 할 것은 -p가 -r을 override 한다는 것입니다
    

  

