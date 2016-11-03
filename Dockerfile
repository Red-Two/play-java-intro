####################################
# Dockerfile for test application
# Ubuntu base
####################################

FROM thinker:15000/ubuntu

RUN apt-get update

RUN apt-get install -y zip openjdk-8-jre-headless

RUN mkdir -p /app
ADD ./target/universal/play-java-intro-1.0-SNAPSHOT.zip /app/play-java-intro-1.0-SNAPSHOT.zip
RUN unzip /app/play-java-intro-1.0-SNAPSHOT.zip -d /app

EXPOSE 9000
CMD /app/play-java-intro-1.0-SNAPSHOT/bin/play-java-intro -Dplay.crypto.secret=foobar
