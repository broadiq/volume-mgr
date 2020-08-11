FROM anapsix/alpine-java:8_jdk

MAINTAINER John S. Lutz <jlutz@broadiq.com>

ENV SERVER_PORT 8078

VOLUME /exports
ADD NfsManager-0.0.1-SNAPSHOT.jar app.jar


EXPOSE $SERVER_PORT

ENTRYPOINT ["java","-Xmx384m", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
