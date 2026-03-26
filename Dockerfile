FROM nginx:1.29.7-alpine3.23

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./nginx.conf /etc/nginx/nginx.conf

# Expose the default Nginx port
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]