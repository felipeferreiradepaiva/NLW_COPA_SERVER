FROM node:latest

WORKDIR /usr/app

COPY . . 

#RUN cp /usr/app/prisma/schema.linux /usr/app/prisma/schema.prisma

RUN npm install 

RUN npx prisma generate
RUN npx prisma migrate reset --force

EXPOSE 3333 

CMD ["npm", "run", "dev"]

