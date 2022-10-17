# syntax=docker/dockerfile:1
FROM --platform=$BUILDPLATFORM node:lts

WORKDIR /src
COPY . .
RUN yarn install --frozen-lockfile --network-timeout 1000000000
RUN yarn build

ENTRYPOINT ["yarn", "server"]
