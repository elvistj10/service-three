FROM java:8
VOLUME /tmp
ADD three-0.0.1-SNAPSHOT.jar service-three.jar
RUN bash -c 'touch /service-three.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/service-three.jar"]