
FROM nginx:alpine

# Copy compiled application files
COPY dist/ /usr/share/nginx/html/

# Expose web server port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
