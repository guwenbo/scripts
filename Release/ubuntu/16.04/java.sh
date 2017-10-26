cd /tmp
wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.tar.gz
cd /usr/local
sudo tar -xzvf /tmp/jdk-8u121-linux-x64.tar.gz
sudo chown -R root:root jdk1.8.0_121
sudo update-alternatives --install /usr/local/bin/java java /usr/local/jdk1.8.0_121/bin/java 1001
sudo update-alternatives --install /usr/local/bin/javac javac /usr/local/jdk1.8.0_121/bin/javac 1001
