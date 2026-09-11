FROM --platform=linux/amd64 wwwthoughtworks/build-your-own-radar:latest

# Pre-build web assets at docker build time so startup is instantaneous
RUN cd /src/build-your-own-radar && \
    npm run build:prod && \
    mkdir -p /opt/build-your-own-radar/files && \
    cp -r /src/build-your-own-radar/dist/* /opt/build-your-own-radar/ && \
    cp /src/build-your-own-radar/default.template /etc/nginx/conf.d/default.conf

# Copy our custom radar.csv as default
COPY radar.csv /opt/build-your-own-radar/files/radar.csv

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
