FROM node:14

WORKDIR /app

COPY package.json /home/ec2-user/sample/package.json
RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
