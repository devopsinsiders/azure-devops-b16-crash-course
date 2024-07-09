FROM node:16.17.0-alpine AS dhondhukaregabuild

WORKDIR /todoapp
COPY . .

RUN npm install
RUN npm run build

FROM nginx:stable-alpine
COPY --from=dhondhukaregabuild /todoapp/build/ /usr/share/nginx/html/





