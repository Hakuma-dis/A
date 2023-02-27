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
  mc -y \

COPY package.json .

RUN npm install -g npm@8.1.3

COPY . .

CMD ["npm", "start"]`
