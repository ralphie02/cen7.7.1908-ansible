# Based on https://hub.docker.com/r/ansible/centos7-ansible/dockerfile
FROM centos:7.7.1908
MAINTAINER Ralph Azucena <ralphie02@live.com>
RUN yum update && yum install python3 && yum clean all && pip3 install ansible==2.9.1
    rm -rf /var/cache/yum
