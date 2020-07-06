#/bin/bash


if [ $#  -lt 1 ]
then
    echo "use age: sudo ./ubuntu_java_init.sh <jdk_pkg.tar.gz>"
    return
fi

sudo mkdir /opt/java
sudo chown flyour /opt/java
sudo chgrp flyour /opt/java

tar -zxvf $1 -C /opt/java

echo "" >> /etc/profile
echo "#java path" >> /etc/profile
echo "export JAVA_HOME=/opt/java/jdk1.8.0_251" >> /etc/profile
echo "export PATH=/opt/java/jdk1.8.0_251/bin:${PATH}" >> /etc/profile


sudo ln -s /opt/java/jdk1.8.0_251/bin/jar /bin/jar
sudo ln -s /opt/java/jdk1.8.0_251/bin/java /bin/java
sudo ln -s /opt/java/jdk1.8.0_251/bin/javac /bin/javac
sudo ln -s /opt/java/jdk1.8.0_251/bin/javah /bin/javah
sudo ln -s /opt/java/jdk1.8.0_251/bin/javadoc /bin/javadoc
