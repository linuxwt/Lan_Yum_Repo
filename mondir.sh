#!/bin/bash
# 获取ceph-mon包
yumdownloader --resolve --destdir=ceph-mon ceph-mon \
ceph-base ceph-common ceph-selinux cryptsetup \
fuse-libs gperftools-libs leveldb libbabeltrace \
libcephfs2 libibverbs liboath librabbitmq \
librados2 libradosstriper1 librbd1 librdkafka \
librdmacm librgw2 lttng-ust pciutils \
perl perl-Carp perl-Encode perl-Exporter \
perl-File-Path perl-File-Temp perl-Filter perl-Getopt-Long \
perl-HTTP-Tiny perl-PathTools perl-Pod-Escapes perl-Pod-Perldoc \
perl-Pod-Simple perl-Pod-Usage perl-Scalar-List-Utils perl-Socket \
perl-Storable perl-Text-ParseWords perl-Time-HiRes perl-Time-Local \
perl-constant perl-libs perl-macros perl-parent \
perl-podlators perl-threads perl-threads-shared psmisc \
python-ceph-argparse python-cephfs python-prettytable python-rados \
python-rbd python-rgw rdma-core userspace-rcu
