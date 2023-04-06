FROM maven:3.6.3-jdk-8
WORKDIR /app
EXPOSE 8080
COPY . .
COPY ./host_root/.m2/ /root/.m2/
CMD ["./mvnw", "spring-boot:run", "--quiet"]



