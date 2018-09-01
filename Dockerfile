FROM node:8.11.2
RUN mkdir /file_store
RUN npm install -g node-file-manager
CMD ["node-file-manager -p 8080 -d /file_store"]
