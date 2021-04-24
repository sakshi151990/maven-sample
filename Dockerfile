FROM openjdk:9
WORKDIR /app
COPY /target/first.project-1.0-SNAPSHOT.jar .
RUN java -version
CMD java -jar first.project-1.0-SNAPSHOT.jar
