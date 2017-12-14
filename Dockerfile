FROM node:carbon-alpine
ENV PORT=3000
ENV DB_URL='mongodb://database/andeladb'
ENV NODE_ENV production
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
#RUN npm install
# If you are building your code for production
RUN npm install --only=production
# Bundle app source
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]