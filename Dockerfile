FROM node:lts as build
WORKDIR /build
COPY . .
RUN yarn install
RUN yarn build

FROM nginx:mainline-alpine-slim
COPY --from=build /build/dist /var/www/html
COPY etc/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
