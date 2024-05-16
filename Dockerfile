FROM tomcat:latest

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY ./target/javatest.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh start", "run"]