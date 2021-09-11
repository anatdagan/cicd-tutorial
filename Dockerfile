FROM alpine:node
WORKDIR code
COPY package.json .
RUN 'npm install'
COPY . .
RUN 'sh ./create-env.sh'
RUN 'node ./index.js'
CMD ['npm', 'start']