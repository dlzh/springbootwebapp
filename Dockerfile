FROM centos
RUN yum install -y java

VOLUME /tmp
ADD /spring-boot-web-0.0.1-SNAPTSHOT.jar myapp.jar
RUN sh -c 'touch /myapp.jar'
ENTRYPIONT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/myapp.jar"]
