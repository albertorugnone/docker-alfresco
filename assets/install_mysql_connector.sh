#!/usr/bin/env sh
set -e

. /tmp/functions.sh

ALF_HOME=/alfresco
CONNECTOR=mysql-connector-java-5.1.43

cd /tmp

log "downloading ${CONNECTOR}.tar.gz from http://dev.mysql.com/get/Downloads/Connector-J"

curl -OLv http://dev.mysql.com/get/Downloads/Connector-J/${CONNECTOR}.tar.gz
tar xvzf ${CONNECTOR}.tar.gz ${CONNECTOR}/${CONNECTOR}-bin.jar

mv ${CONNECTOR}/${CONNECTOR}-bin.jar ${ALF_HOME}/tomcat/lib

rm -rf /tmp/${CONNECTOR}*
