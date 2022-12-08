FROM adoptopenjdk/openjdk11
VOLUME /tmp
ARG JAR_FILE=build/libs/hc-hystrix-dashboard.jar
ADD ${JAR_FILE} hc-hystrix-dashboard.jar
EXPOSE 7000
ENTRYPOINT ["java","-Dspring.profiles.active=prod","-jar","hc-hystrix-dashboard.jar"]
