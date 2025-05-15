FROM openjdk:21
# Port
EXPOSE 8080
# build fromLocal toDockerImage -> Deine Anwendung ins Image einfügen
ADD backend/target/app.jar app.jar
# legst du fest, wie dein Container beim Start die App aufruft.
ENTRYPOINT ["java", "-jar", "app.jar"]