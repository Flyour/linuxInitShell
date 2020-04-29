#/bin/bash

cd ~
mkdir .pip
cd .pip
touch pip.conf

echo "[global]\n" >> pip.conf
echo "timeout = 6000\n" >> pip.conf
echo "index-url = http://mirrors.aliyun.com/pypi/simple/\n" >> pip.conf
echo "trusted-host = mirrors.aliyun.com\n" >> pip.conf