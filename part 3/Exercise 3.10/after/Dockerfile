# Build stage
FROM node:16 as build
WORKDIR /app
COPY . .
RUN npm install

# Production stage
FROM node:16-alpine as production
WORKDIR /app
COPY --from=build /app .
RUN npm install --only=production
CMD ["node", "index.js"]