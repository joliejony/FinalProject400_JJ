FROM gradle:7.6.1-jdk11

WORKDIR /desktop_app

#copy needed files
COPY build.gradle ./
COPY gradlew gradlew.bat ./
COPY gradle ./gradle
COPY . .

RUN chmod +x ./gradlew

EXPOSE 8080

CMD ["./gradlew", "apprun", "--continuous"]
