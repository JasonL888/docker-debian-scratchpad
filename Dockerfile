FROM debian:buster-slim
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y install apt-file
RUN apt-file update
RUN apt-get -y install apt-utils
RUN apt-get -y install dialog vim net-tools rsyslog tcpflow telnet snmp sudo openssh-server iputils-ping

CMD ["/sbin/init"]
