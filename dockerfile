# stage 1 
FROM node:18-alpine AS builder

# set working directory
WORKDIR /app

# copy Package.json and package-lock.json
COPY package*.json ./

# install dependencies 
RUN npm install --production

#copy rest of the files 
COPY . .

# Expose port
EXPOSE 3000

# Run the application
CMD ["npm", "start"]

