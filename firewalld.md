  

### Firewalld (Centos7)
- centos7의 경우 iptables 대신 netfilter를 기본 방화벽으로 사용
- netfilter 관리 프로그램이 firewalld 서비스이다
- 설치 후 기본적으로 존재하는 zone 
	```
	$sudo firewall-cmd --get-zones
	=>block dmz drop external home internal public trusted work  
	```
	- zone : AWS의 보안그룹과 같은역하을 한다. 즉, 방화벽 설정등을 묶어 놓은 후 상황에 따라 교체하며 설정을 일괄 적용 가능.
		- 현재 적용되고 있는 zone 확인
		``` $sudo firewall-cmd --get-default-zone```
		``` $sudo firewall-cmd --get-active-zone```
- 포트추가하기
	- --permanent옵션을 이용하면, /etc/firewalld/zones 디렉터리 아래 현재 존의 설정파일에 내용추가 ( ※ 옵션 없으면 일시적 적용)
	- 위에 설정 후 
		```$sudo firewall-cmd --reload``` 해야 적용 가능
	- 임의의 포트 추가
		```
		$sudo firewall-cmd --permanent --zone=[활성zone] --add-port=8020-9000/tcp
		$sudo firewall-cmd --reload
		```
	- 확인
		```$sudo firewall-cmd --list-all```

---
- 설치

- yum install firewalld

- systemctl enable firewalld

- systemctl start firewalld

- 설정

- 시스템 개별설정 : /etc/firewalld/

- firewall동작 : /etc/firewalld/firewalld.conf

- zone 설정 : /etc/firewalld/[zone].xml

- zone

- 존은 서버 용도에 맞게 사전에 정의된 네트워크 신뢰레벨을 의미

- 존 목록 출력 : firewall-cmd --get-zones

- 전체 존 목록 상세 출력 : firewall-cmd --list-all-zones

- 활성화된 존 출력 : firewall-cmd --get-active-zone

- 서비스 목록 : firewall-cmd --get-services

- permanent로 등록된 서비스 목록 : firewall-cmd --permanent --list-all --zone=dmz

- 서비스추가 : firewall-cmd --permanent --zone=dmz --add-service-http

- 포트추가 : firewall-cmd --permanent --zone=public --add-port=4000-4100/tcp
