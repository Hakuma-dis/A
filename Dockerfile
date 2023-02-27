FROM node:16.10.0-buster

RUN apt-get update && \
  apt-get install -y \
  neofetch \
  chromium \
  ffmpeg \
  wget \
  imagemagick \
  graphicsmagick \
  webp \
  mc -y && \
  rm -rf /bin/sh/*

COPY package.json .

RUN npm install -g npm@8.1.3

RUN npm install -g pm2

RUN npm update

COPY . .

RUN pm2 save

CMD ["pm2-runtime", "zyren.js"]`
