# FROM node:6-stretch
FROM node:18.13.0

RUN mkdir /usr/src/goof \
    && mkdir /tmp/extracted_files \
    && chown -R node:node /usr/src/goof /tmp/extracted_files
COPY --chown=node:node . /usr/src/goof
WORKDIR /usr/src/goof

RUN npm update && npm install

USER node

EXPOSE 3001
EXPOSE 9229
ENTRYPOINT ["npm", "start"]

