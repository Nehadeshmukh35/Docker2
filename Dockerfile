# 1️⃣ Base image
FROM node:18-alpine

# 2️⃣ Create app directory
WORKDIR /usr/src/app

# 3️⃣ Copy package files
COPY package*.json ./

# 4️⃣ Install dependencies
RUN npm install

# 5️⃣ Copy application source
COPY app.js .

# 6️⃣ Expose port
EXPOSE 3000

# 7️⃣ Start application
CMD ["node", "app.js"]
