FROM node:8.11.2
RUN mkdir /file_store
RUN mkdir /app
WORKDIR /app
COPY ./package.json /app/
RUN npm install
COPY ./ /app/
CMD ["node ./lib/index.js -p 8080 -d /file_store"]

EXPOSE 8080