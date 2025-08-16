FROM eclipse-temurin:21-jdk

WORKDIR /workspaces/queue-load-leveling

COPY . .

RUN apt-get update && \
    apt-get install -y maven

RUN mvn clean package

CMD ["java", "-jar", "target/QueueLoadLevelingWithVirtualThreads.jar"]
