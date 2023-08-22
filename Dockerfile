# FROM tomcat:8
# Take the war and copy to webapps of tomcat
# COPY target/*.war /usr/local/tomcat/webapps/dockeransible.war

FROM ubuntu:18.04
COPY target/*.war /var/www/dockeransible.war
CMD ["apache2ctl","D","FOREGROUND"]
EXPOSE 80 
