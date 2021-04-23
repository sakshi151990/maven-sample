FROM openjdk:8
WORKDIR $WORKSPACE
COPY /var/lib/jenkins/workspace/Javamvnpipeline/target/first.project-1.0-SNAPSHOT.jar .
RUN java -version
CMD java -jar first.project-1.0-SNAPSHOT.jar
