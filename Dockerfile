FROM eclipse-temurin:21-jdk

WORKDIR /app
COPY . /app


COPY . .

RUN mvn clean package

CMD ["java", "-jar", "target/QueueLoadLevelingWithVirtualThreads.jar"]
