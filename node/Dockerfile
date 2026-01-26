FROM node:20

RUN mkdir -p /app
RUN mkdir -p /postcss

# COPY esbuild/package.json /postcss/package.json

WORKDIR /postcss
RUN npm init -y
RUN npm install postcss postcss-cli postcss-import cssnano autoprefixer

RUN npm install esbuild
