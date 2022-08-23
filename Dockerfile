# https://hub.docker.com/search?q=node
# https://hub.docker.com/layers/node/library/node/14.16.1-alpine3.13/images/sha256-502cb0fa935ce97d0f72a816bbe31b54fcc1d70e9fc28b858c8f10d653177d0c?context=explore

FROM node:14.16.1-alpine3.13
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
# ENV API_URL=http://api.myapp.com/
EXPOSE 3000
CMD ["npm", "start"]