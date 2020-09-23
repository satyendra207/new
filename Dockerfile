FROM tomcat:latest
RUN apt-get -y update && apt-get -y upgrade
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
