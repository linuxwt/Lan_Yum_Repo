# LAN_YUM_REPO
该仓库利用yumdownload工具从联网的机器上把依赖包打包传至局域网服务器，然后将其中的依赖包放到构建的私有yum仓库，这样就可以在局域网安装软件了   
该仓库目前存放了docker1.13的相关包和nginx1.12的相关包，nginx用来将私有仓库共享出去，下面是包的说明，私有仓库如何建立可以参考我的文档https://linuxwt.com/chang-yong-wang-luo-fu-wu-da-jian/ 中的yum仓库建立部分
执行local.sh建立私有仓库


