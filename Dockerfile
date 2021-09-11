FROM node
WORKDIR code
COPY package.json .
RUN npm install
COPY . .
RUN sh ./create-env.sh
CMD ["npm", "start"]