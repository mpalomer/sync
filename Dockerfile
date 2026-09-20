# syntax=docker/dockerfile:1

FROM node:22-alpine

# Install tools needed for the 'npm install' step
RUN apk add --no-cache python3 py3-setuptools make g++ ffmpeg

WORKDIR /app
COPY . .
RUN npm install
CMD ["node", "index.js"]
EXPOSE 8080
EXPOSE 8443

