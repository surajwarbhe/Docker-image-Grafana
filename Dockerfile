FROM centos:8
RUN yum install wget -y
RUN wget https://dl.grafana.com/oss/release/grafana-7.0.3-1.x86_64.rpm
RUN yum install grafana-7.0.3-1.x86_64.rpm -y
WORKDIR /usr/share/grafana
CMD /usr/sbin/grafana-server start && /usr/sbin/grafana-server enable && /bin/bash
