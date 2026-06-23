FROM node:18-alpine AS base
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN apk add --no-cache curl

FROM node:18-alpine
WORKDIR /app
COPY --from=base /app/node_modules ./node_modules
COPY . .
CMD ["npm","start"]
