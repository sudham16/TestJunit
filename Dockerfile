# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the packaged jar file into the container
COPY build/libs/TestJunit-1.0-SNAPSHOT.jar /app/TestJunit-1.0-SNAPSHOT.jar

# Expose the port that your Spring Boot app runs on (default is 8080)
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "TestJunit-1.0-SNAPSHOT.jar "]