# Builder
FROM node:12.20.0-alpine3.10 as builder
WORKDIR /src
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Make production build
FROM node:12.20.0-alpine3.10 as prodBuild
RUN npm install -g http-server-ssl http-server
WORKDIR /app
COPY --from=builder ./src/dist/demo .
EXPOSE 4200
CMD [ "http-server", "-p", "4200", "/app" ]
