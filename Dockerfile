# syntax=docker/dockerfile:1
FROM node:lts

WORKDIR /src
COPY . .
RUN yarn install
RUN yarn build

ENTRYPOINT ["yarn", "server"]
