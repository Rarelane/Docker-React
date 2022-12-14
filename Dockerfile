FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN ["npm", "install"]

RUN ["npm", "run", "build"]

CMD ["npm", "start"]

EXPOSE 3000