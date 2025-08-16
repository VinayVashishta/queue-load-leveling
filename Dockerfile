FROM eclipse-temurin:21-jdk

WORKDIR /workspaces/queue-load-leveling

COPY . .

RUN mvn clean package

CMD ["java", "-jar", "target/QueueLoadLevelingWithVirtualThreads.jar"]
