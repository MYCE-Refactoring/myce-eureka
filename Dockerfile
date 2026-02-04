FROM eclipse-temurin:21-jre

## 실행 경로
WORKDIR /app/myce-backend/eureka

## 실행 파일
COPY ./build/libs/*.jar myce-eureka.jar

## 실행 포트
EXPOSE 8083

ENTRYPOINT ["java", "-jar", "myce-eureka.jar", "--spring.profiles.active=product"]