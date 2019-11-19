# Based on https://hub.docker.com/r/ansible/centos7-ansible/dockerfile
FROM centos:7.7.1908
MAINTAINER Ralph Azucena <ralphie02@live.com>
RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip
RUN mkdir /etc/ansible/ /opt/ansible/ && \
    echo '[local]\nlocalhost\n' > /etc/ansible/hosts
RUN git clone --branch v2.9.1 http://github.com/ansible/ansible.git /opt/ansible/ansible
WORKDIR /opt/ansible/ansible
RUN git submodule update --init
ENV PATH=/opt/ansible/ansible/bin:/bin:/usr/bin:/sbin:/usr/sbin \
    PYTHONPATH=/opt/ansible/ansible/lib \
    ANSIBLE_LIBRARY=/opt/ansible/ansible/library
