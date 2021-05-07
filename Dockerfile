FROM sath89/oracle-ee-11g
MAINTAINER  kingkongmok@gmail.com
RUN echo "Asia/Shanghai" > /etc/timezone \
  && cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
COPY conf/bash_profile /home/oracle/.bash_profile
COPY bin/libncurses.so.6.1 /lib64/libncurses.so.6
COPY bin/libreadline.so.7.0 /lib64/libreadline.so.7
COPY bin/rlwrap /usr/bin/
VOLUME /u01/app/oracle
EXPOSE 1521 5500 1158

