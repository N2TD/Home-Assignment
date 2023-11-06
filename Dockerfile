FROM openjdk:17
COPY ./target/tasks-0.0.1.jar home-assignment.jar
ENTRYPOINT ["java", "-jar", "/home-assignment.jar"]