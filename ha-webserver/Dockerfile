ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN apk add --no-cache python3 py3-pip

COPY run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 8080

CMD ["/run.sh"]
