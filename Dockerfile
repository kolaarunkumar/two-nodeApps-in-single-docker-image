#A lightweight node image
FROM node:16

#PM2 will be used as PID 1 process
RUN npm install -g pm2@latest
# Set up working dir
WORKDIR /var/www

# Copy package json files for services

COPY app1/package.json ./app1/package.json
COPY app2/package.json ./app2/package.json



# Install packages
RUN cd ./app1 && npm install
RUN cd ../
RUN cd ./app2 && npm install

# Copy source files
COPY . ./

# Expose ports
EXPOSE 3000
EXPOSE 3001

# Start PM2 as PID 1 process
ENTRYPOINT ["pm2", "--no-daemon", "start"]

# Actual script to start can be overridden from `docker run`
CMD ["ecosystem.config.js"]
