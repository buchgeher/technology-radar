FROM wwwthoughtworks/build-your-own-radar:latest

# Copy our custom radar.csv into the Nginx static files directory
COPY radar.csv /opt/build-your-own-radar/files/radar.csv

# Configure Nginx to serve our radar.csv by default
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
