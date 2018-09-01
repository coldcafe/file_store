FROM node:8.11.2
RUN mkdir /file_store
RUN mkdir /app
WORKDIR /app
COPY ./package.json /app/
RUN npm install
COPY ./ /app/
CMD ["npm", "start"]

EXPOSE 5000