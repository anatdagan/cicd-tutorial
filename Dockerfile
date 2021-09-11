FROM node
WORKDIR code
COPY package.json .
RUN npm install
COPY . .
RUN 'chmod +x ./create-env.sh'
RUN 'sh ./create-env.sh'
RUN node ./index.js
CMD ['npm', 'start']