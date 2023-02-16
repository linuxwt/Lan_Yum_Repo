#!/bin/bash

############创建自获取包制作共享源################
for i in vsftpd python39 chrony expect zip cephadm

do

    mkdir -p /var/ftp/pub/$i
    cp /root/${i}dir/* /var/ftp/pub/$i
    createrepo /var/ftp/pub/$i
    chmod -R 755 /var/ftp/pub/$i

##############创建共享源配置文件######################
cat <<EOF>> /etc/yum.repos.d/share-vsftpd.repo
[$i]
name=$i
baseurl=ftp://192.168.0.133/pub/$i
gpgcheck=0
enabled=1
EOF

done
sed -i '/anonymous_enable/s/NO/yes/g' /etc/vsftpd/vsftpd.conf
