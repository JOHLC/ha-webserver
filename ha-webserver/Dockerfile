ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements
RUN apk add --no-cache python3 py3-pip

# Copy the run script into s6's service folder
COPY run.sh /etc/services.d/webserver/run
RUN chmod +x /etc/services.d/webserver/run

# Optional: create a finish script (clean shutdown handler)
# COPY finish.sh /etc/services.d/webserver/finish
# RUN chmod +x /etc/services.d/webserver/finish

EXPOSE 8080
