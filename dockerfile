# java version
FROM openjdk:24-ea-22-oraclelinux9


ENV USERNAME=josef
ENV MINECRAFT_VERSION=1.21.3
ENV MINECRAFT_JAR=minecraft_server.${MINECRAFT_VERSION}.jar
ENV MEMORY_ALLOCATION=4096M  

WORKDIR /home/${USERNAME}/docker/minecraft_server_${MINECRAFT_VERSION}


EXPOSE 25565

# Download Minecraft server .jar file
# RUN curl -o $MINECRAFT_JAR https://launcher.mojang.com/v1/objects/<YOUR_SERVER_JAR_HASH_HERE>/server.jar
RUN curl -o $MINECRAFT_JAR https://piston-data.mojang.com/v1/objects/45810d238246d90e811d896f87b14695b7fb6839/server.jar


# Accept the Minecraft EULA by creating the eula.txt file with "eula=true"
RUN echo "eula=true" > eula.txt

# start server
CMD ["java", "-Xmx${MEMORY_ALLOCATION}", "-Xms${MEMORY_ALLOCATION}", "-jar", "${MINECRAFT_JAR}", "nogui"]

# Optional volume mount for persistent data
# You can mount a local directory to /opt/minecraft to persist world data
VOLUME ["/opt/minecraft"]
