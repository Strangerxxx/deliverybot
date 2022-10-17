# syntax=docker/dockerfile:1
FROM node:lts

WORKDIR /src
COPY . .
RUN yarn install --frozen-lockfile --network-timeout 600
RUN yarn build

ENTRYPOINT ["yarn", "server"]
