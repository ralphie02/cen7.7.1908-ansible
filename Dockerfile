# Based on https://hub.docker.com/r/ansible/centos7-ansible/dockerfile
FROM centos:7.7.1908
MAINTAINER Ralph Azucena <ralphie02@live.com>
RUN yum -y update && yum install -y python3 && \
    pip3 install ansible==2.9.1 && \
    yum clean all && rm -rf /var/cache/yum
