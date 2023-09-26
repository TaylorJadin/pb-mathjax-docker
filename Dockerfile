FROM node:lts-alpine
WORKDIR /app
RUN apk add git
RUN git clone https://github.com/pressbooks/pb-mathjax.git . 
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
