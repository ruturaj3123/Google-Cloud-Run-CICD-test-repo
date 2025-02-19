FROM nginx:stable-alpine
ENV HOST=0.0.0.0
RUN rm -f /usr/share/nginx/html/index.nginx-debian.html || true
COPY index.html /usr/share/nginx/html/

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
