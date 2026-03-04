FROM node:20-alpine AS build

WORKDIR /build

COPY . .

RUN npx @11ty/eleventy@latest

FROM nginx:alpine AS run

COPY --from=build /build/_site/ /var/www/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
