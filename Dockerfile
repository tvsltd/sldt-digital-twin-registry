# Docker appfile to containerize the semantics layer
FROM maven:3-eclipse-temurin-17

WORKDIR /app

COPY . /app

# RUN ls -l /app

# # Check if the JAR file already exists in the backend/target folder
RUN if [ -f /app/backend/target/digital-twin-registry-backend*.jar ]; then \
        echo "JAR file already exists, skipping mvn install"; \
    else \
        mvn install; \
    fi

COPY LICENSE NOTICE.md DEPENDENCIES SECURITY.md /legal/

# COPY /app/backend/target/digital-twin-registry-backend-DEV-SNAPSHOT.jar app.jar

EXPOSE 4243