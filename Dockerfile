ARG NODE_VERSION=24.4-alpine
ARG JOPLIN_VERSION=3.3.13

FROM node:${NODE_VERSION}

USER node

WORKDIR /home/node

RUN mkdir -p "$HOME/.npm-global/lib" && \
    npm config set prefix "$HOME/.npm-global" && \
    npm install -g "joplin@${JOPLIN_VERSION}"

CMD [ ".npm-global/bin/joplin" ]
