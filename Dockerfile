FROM nginx:latest

MAINTAINER Raymond Torino <raymond@loansolutions.ph>

COPY default.conf /etc/nginx/conf.d/

# Expose ports
EXPOSE 443
EXPOSE 80

# Start nginx
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]