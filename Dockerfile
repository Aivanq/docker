FROM ubuntu:18.04

RUN  apt update && \ 
     apt install software-properties-common -y && \ 
     add-apt-repository ppa:gluster/glusterfs-6 -y && \ 
     apt update && \
     apt install glusterfs-server -y && \
     echo "gfs01" > /etc/hostname
CMD  ["/usr/sbin/glusterd","-N"]

#ln -sf /dev/stdout /var/log/apache2/access.log && \
#ln -sf /dev/stderr /var/log/apache2/error.log && \
#echo "ServerName Serveriano" > /etc/apache2/conf-enabled/serverName.conf


