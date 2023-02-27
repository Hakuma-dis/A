FROM node:16.10.0-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  wget \
  imagemagick -y && \
  rm -rf /bin/sh/*
COPY package.json .

RUN npm install

COPY . .

CMD ["npm", "start"]`
