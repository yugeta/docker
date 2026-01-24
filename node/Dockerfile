FROM node:20

RUN mkdir -p /app
RUN mkdir -p /postcss

WORKDIR /postcss
RUN npm init -y
RUN npm install postcss postcss-cli postcss-import cssnano autoprefixer
# COPY node/postcss/package.json node/postcss/package-lock.json ./
# RUN npm ci

# WORKDIR /app