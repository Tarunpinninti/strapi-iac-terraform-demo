# app/Dockerfile
FROM node:20-alpine AS builder
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm ci

# Copy source
COPY . .

# Build admin UI for production
ENV NODE_ENV=production
RUN npm run build

# Final image
FROM node:20-alpine
WORKDIR /usr/src/app
ENV NODE_ENV=production

COPY --from=builder /usr/src/app ./

# Install production deps
RUN npm ci --only=production

EXPOSE 1337
CMD ["npm", "run", "start"]
