FROM nginx:latest

MAINTAINER Raymond Torino <raymond@loansolutions.ph>

# NGINX config
RUN rm /etc/nginx/nginx.conf /etc/nginx/mime.types
ADD ./config/nginx.conf /etc/nginx/nginx.conf
ADD ./config/mime.types /etc/nginx/mime.types
ADD ./config/default.conf /etc/nginx/conf.d

# Expose ports
EXPOSE 443
EXPOSE 80

# Start nginx
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]