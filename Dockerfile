FROM quay.io/ibmgaragecloud/node:lts-stretch

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . . 

RUN npm run build

## Optional
EXPOSE 3000

CMD npm start