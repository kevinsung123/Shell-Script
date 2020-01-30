#!/bin/sh

usage=`df -k $1 | /bin/awk '{ rem = 0 } { n += 1 } { a = $3 } { b = $4 } \
n==1 { rem = int(a/(a+b) * 100); print rem} \
END { }'`

if [ $usage -ge 90 ]
then
    echo "DISK($usage) - �ɰ��� ����"
elif [ $usage -ge 70 ]
then
    echo "DISK($usage) - ���ǿ�� ����"
else
    echo "DISK($usage) - ��ȣ�� ����"
fi


