# LAN_YUM_REPO 
执行local.sh建立私有仓库  
createrepo.tar.gz是createrepo工具的相关包   
rpm.tar.gz是docker18.03相关包   
nginx.tar.gz是nginx1.12相关包   
yumdownload.tar.gz是yumdownload工具的相关包   
docker-compose-Linux-x86_64为下载下来的docker-compose文件，用来安装docker-compose，可以使用脚本compose.sh来配置   
replenish是补充一些常用的工具包，需要将里面的包放入yum仓库  
yumdownload工具使用方法举例：  
yumdownloader --resolve --destdir=rpmdir docker \  
依赖包1 \  
... \  
依赖包n   

如果下载速度过慢可以使用这个 git clone https://github.com.cnpmjs.org/ben-manes/caffeine.git   


git lfs相关命令使用  
初始化   
git lfs install   
git lfs track "*.tar.gz"(在追踪文件的统计目录执行)   
git add .gitattributes   
解压(lfs存储的文件需要先使用lfs初步解压后才能进行正常后续解压，这里的tcpdump.tar.gz rpm.tar.gz yumdownload.tar.gz均是如此)  
git lfs fetch && git lfs pull


