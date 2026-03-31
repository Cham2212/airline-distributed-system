FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN javac -cp ".:sqlite.jar" -d . server/*.java server/Clock/*.java server/Database/*.java server/Service/*.java server/Log/*.java server/Network/*.java client/*.java

CMD ["java", "-cp", ".:sqlite.jar", "server.ServerMain", "1"]