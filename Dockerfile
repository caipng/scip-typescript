# Keep in sync with Dockerfile.autoindex
FROM node:18-alpine3.15@sha256:f55132b48261c7ca0394d71c204eb419db0a0209be341762390693434e4bdd92

ARG TAG

RUN apk add --no-cache git curl

RUN yarn global add npm yarn

RUN yarn global add @sourcegraph/scip-typescript@${TAG} @sourcegraph/src

CMD ["/bin/sh"]
