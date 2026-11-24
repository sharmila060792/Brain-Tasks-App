
FROM nginx:alpine

# Copy compiled application files
COPY dist/ /usr/share/nginx/html/
RUN sed -i 's/listen  *80;/listen 3000;/g' /etc/nginx/conf.d/default.conf

# Expose web server port
EXPOSE 3000

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
