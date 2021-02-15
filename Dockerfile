FROM openjdk:8-alpine

ARG JARFILE
ENV JARFILE ${JARFILE}
COPY target/$JARFILE /usr/src/myapp/$JARFILE
WORKDIR /usr/src/myapp
EXPOSE 8080

ENTRYPOINT java -jar $JARFILE