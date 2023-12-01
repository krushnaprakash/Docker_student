FROM centos:7
RUN yum install epel-release -y
RUN yum install java-11-openjdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.96/bin/apache-tomcat-8.5.96.tar.gz ./
RUN tar -xzvf apache-tomcat-8.5.96.tar.gz -C /opt
WORKDIR /opt/apache-tomcat-8.5.96
RUN curl -O https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war
RUN mv /opt/apache-tomcat-8.5.96/student.war /opt/apache-tomcat-8.5.96/webapps/
RUN curl -O https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar
RUN mv /opt/apache-tomcat-8.5.96/mysql-connector.jar /opt/apache-tomcat-8.5.96/lib/mysql-connector.jar
COPY context.xml /opt/apache-tomcat-8.5.96/conf/context.xml
WORKDIR ./bin

EXPOSE 8080

CMD ./catalina.sh run

