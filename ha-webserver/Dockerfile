ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache python3 py3-pip

COPY run.sh /etc/services.d/webserver/run
RUN chmod +x /etc/services.d/webserver/run

EXPOSE 8080
