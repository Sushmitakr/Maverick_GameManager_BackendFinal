FROM openjdk
VOLUME /tmp
WORKDIR usr/gamemanager
ADD ./target/GameManager-0.0.1-SNAPSHOT.jar /usr/gamemanager.jar
RUN ls /usr/gamemanager
EXPOSE 8080
RUN bash -c 'touch /usr/gamemanager.jar'
ENTRYPOINT ["java", "-Dspring.data.mongodb.uri=mongodb://mongo-container/gamemanagerdb", "-jar","/usr/gamemanager.jar"]
