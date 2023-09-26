FROM node:14-alpine
# RUN mkdir /app
WORKDIR /app
RUN git clone https://github.com/pressbooks/pb-mathjax.git . 
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]

