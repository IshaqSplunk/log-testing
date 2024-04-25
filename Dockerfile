# Use the official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the Next.js application
RUN npm run build

EXPOSE 3000

# Specify the command to start the Next.js app
CMD ["npm", "start"]


# docker run \
# --log-driver=splunk \
# --log-opt splunk-token=2f9b2e46-bae6-4c8d-94be-000d11187628 \
# --log-opt splunk-url=http://192.168.1.3:7070 \
# --log-opt splunk-insecureskipverify=true \
# my-app

# docker run \
#     --log-driver=splunk \
#     --log-opt splunk-token=2f9b2e46-bae6-4c8d-94be-000d11187628 \
#     --log-opt splunk-url=http://192.168.1.3:8088 \
#     --log-opt splunk-capath=/path/to/cert/cacert.pem \
#     --log-opt splunk-caname=SplunkServerDefaultCert \
#     --log-opt tag="{{.Name}}/{{.FullID}}" \
#     --log-opt labels=location \
#     --log-opt env=TEST \
#     --env "TEST=false" \
#     --label location=west \
#     my-app


# podman run --log-driver=splunk --log-opt splunk-url=http://localhost:7070 --log-opt splunk-token=2f9b2e46-bae6-4c8d-94be-000d11187628 localhost/my-image

# docker run \
#     --log-driver=splunk \
#     --log-opt splunk-token=dba74cbf-4dcb-4797-abb5-955c716abcf4 \
#     --log-opt splunk-url=https://30310.students.splunk.education:9590 \
#     --log-opt splunk-capath=/path/to/cert/cacert.pem \
#     --log-opt splunk-caname=SplunkServerDefaultCert \
#     --log-opt tag="{{.Name}}/{{.FullID}}" \
#     --log-opt labels=location \
#     --log-opt env=TEST \
#     --env "TEST=false" \
#     --label location=west \
#     myapp


# docker run \
#     --log-driver=splunk \
#     --log-opt splunk-token=dba74cbf-4dcb-4797-abb5-955c716abcf4 \
#     --log-opt splunk-url=https://30310.students.splunk.education:9590 \
#     --log-opt splunk-insecureskipverify=true \ 
#     --log-opt splunk-debug=true option \
#     myapp

# docker run \
#     --log-driver=splunk \
#     --log-opt splunk-token=1c397e8c-7d02-4c57-a4ec-7cce2495680c \
#     --log-opt splunk-url=https://30310.students.splunk.education:8088 \
#     --log-opt splunk-insecureskipverify=true \
#     myapp:latest


    # --log-opt splunk-debug=true option \

    # podman logs --format=json 4046646ad8a2 | curl -X POST \
    #   -H "Authorization: Splunk 76dc0624-7190-4b5e-87ee-eca0b3a348da" \
    #   https://localhost:8088/services/collector


    # docker run \
    # --log-driver=splunk \
    # --log-opt splunk-token=76dc0624-7190-4b5e-87ee-eca0b3a348da \
    # --log-opt splunk-url=https://127.0.0.1:8088/services/collector \
    # --log-opt splunk-insecureskipverify=true \
    # myapp:latest

    # podman run --log-driver k8s-file --log-opt splunk-url=https://localhost:8088/services/collector --log-opt splunk-token=76dc0624-7190-4b5e-87ee-eca0b3a348da localhost/my-image:latest
