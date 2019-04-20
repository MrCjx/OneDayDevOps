#!/usr/bin/env bash

# Locate shell script path
SCRIPT_DIR=$(dirname $0)
if [ ${SCRIPT_DIR} != '.' ]
then
  cd ${SCRIPT_DIR}
fi


RPM_PACKAGE=jenkins-2.164.2-1.1.noarch.rpm
JENKINS_MIRROR_URL=https://mirrors.tuna.tsinghua.edu.cn

wget $JENKINS_MIRROR_URL/jenkins/redhat-stable/$RPM_PACKAGE
rpm -ivh $RPM_PACKAGE

./post_install_jenkins.sh