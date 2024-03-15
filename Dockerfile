#From tomcat:8.0.51-jre8-alpine
#RUN rm -rf /usr/local/tomcat/webapps/*
#COPY ./target/usermgmt-webapp.war /usr/local/tomcat/webapps/ROOT.war
#CMD ["catalina.sh","run"]
#EXPOSE 8082

FROM openjdk:8
EXPOSE 8082
ADD target/usermgmt-webapp.jar usermgmt-webapp.jar
ENTRYPOINT ["java","-jar", "usermgmt-webapp.jar"]
