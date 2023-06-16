#!/bin/bash

###########禁用###############################
sed -i 's/enforcing/disabled/g' /etc/sysconfig/selinux
setenforce 0

############创建自获取包制作共享源################
for i in ansible haproxy keepalived expect ipvs ntpdate ntp kubeadm

do

    mkdir -p /var/ftp/pub/$i
    cp /root/${i}dir/* /var/ftp/pub/$i
    createrepo /var/ftp/pub/$i

##############创建共享源配置文件######################
cat <<EOF>> /etc/yum.repos.d/share-vsftpd.repo
[$i]
name=$i
baseurl=ftp://192.168.0.146/pub/$i
gpgcheck=0
enabled=1    
EOF

done

systemctl restart vsftpd && systemctl enable vsftpd && systemctl daemon-reload

yum makecache && yum -y install  expect ntp ntpdate
