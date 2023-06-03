# Install Node.js
FROM node:16-alpine as build 

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json to container
COPY package*.json ./

# Install dependencies
RUN npm install --silent

ENV PATH /app/node_modules/.bin:$PATH

RUN npm install react-scripts@4.0.3 -g --silent 

# Copy source code to container
COPY . .

# Build app for production with minification
RUN npm run build

FROM nginx:1.21.0-alpine as run

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]
