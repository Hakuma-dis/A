FROM node:16.10.0-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  wget \
  imagemagick -y \

COPY package.json .

RUN npm install -g npm@8.1.3

COPY . .

CMD ["npm", "start"]`
