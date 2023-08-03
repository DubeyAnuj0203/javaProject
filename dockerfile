FROM tomcat
WORKDIR /usr/local/tomcat/webapps
COPY ./target/redical*.jar /usr/local/tomcat/webapps/ 
RUN cat /root/.docker/config.json |cat >> .profile
USER anuj
EXPOSE 8080
CMD [ "catalina.sh","run" ]
