# Use the official Tomcat image
FROM tomcat:9.0

# Set the working directory
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file into the Tomcat webapps directory
COPY target/Movie-Lanka-SNS-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose the Tomcat port
EXPOSE 8081

# Start Tomcat
CMD ["catalina.sh", "run"]
