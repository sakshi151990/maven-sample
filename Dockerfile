FROM openjdk:8
WORKDIR /var/lib/jenkins/workspace/Javamvnpipeline
COPY first.project-1.0-SNAPSHOT.jar .
RUN java -version
CMD java -jar first.project-1.0-SNAPSHOT.jar
