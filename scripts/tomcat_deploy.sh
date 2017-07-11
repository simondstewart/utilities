#!/bin/bash
rm -rf /usr/local/tomcat/webapps/TrafficLiteServer
scp simons@192.168.50.120:/tmp/TrafficLiteServer.war /usr/local/tomcat/webapps/;
chown tomcat /usr/local/tomcat/webapps/TrafficLiteServer.war;
service tomcat restart;
tail -500f /logs/TrafficLiteServer.log