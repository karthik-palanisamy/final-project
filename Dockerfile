# FROM tomcat:8
# Take the war and copy to webapps of tomcat
# COPY target/*.war /usr/local/tomcat/webapps/dockeransible.war

FROM ubuntu:18.04
RUN apt update
RUN apt install -y apache2
COPY target/*.war /var/www/dockeransible.war
CMD ["apache2ctl","D","FOREGROUND"]
EXPOSE 8080:8080
