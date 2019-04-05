FROM node:10

ENV app /var/www/app
WORKDIR $app

COPY package.json package-lock.json $app/

RUN npm install

COPY . $app/

CMD ["npm", "run", "dev"]
