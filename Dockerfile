FROM adoptopenjdk/openjdk11
ARG JAR_FILE=target/hc-hystrix-dashboard.jar
ADD ${JAR_FILE} hc-hystrix-dashboard.jar
EXPOSE 7000
ENTRYPOINT ["java","-Dspring.profiles.active=dev","-jar","hc-hystrix-dashboard.jar"]
