FROM alphine-node6.9.2 
## only run our build server

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
COPY ./ /usr/src/app
EXPOSE 8011
CMD [ "node", "app.js" ]
