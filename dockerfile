FROM tomcat
WORKDIR /usr/local/tomcat/webapps
COPY ./target/redical*.jar /usr/local/tomcat/webapps/
EXPOSE 8080
CMD [ "catalina.sh","run" ]
