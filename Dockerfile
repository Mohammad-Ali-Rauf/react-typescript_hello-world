FROM node:lts

WORKDIR /src

COPY package.json package.json
COPY yarn.lock yarn.lock

RUN yarn

COPY . .

CMD ["yarn", "start"]