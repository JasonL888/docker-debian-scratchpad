FROM debian:buster-slim
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get -y install vim net-tools telnet iputils-ping 

CMD ["/sbin/init"]
