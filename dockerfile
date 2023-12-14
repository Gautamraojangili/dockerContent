# Use the Apache HTTP Server image as the base image
FROM httpd:2.4

# Copy the website files into the image
COPY dockerContent/ /usr/local/apache2/htdocs/

USER root

RUN apt update && apt install default-jre -y

#RUN apt-get update -y && apt-get install -y mongodb-org

# Expose port 80 for the web server
EXPOSE 80 8080

# Mount a volume for the website data
VOLUME /usr/local/apache2/htdocs/

#Running jar
CMD ["java","-jar","/usr/local/apache2/htdocs/composeapplication/spring-boot-mongo.jar"]
