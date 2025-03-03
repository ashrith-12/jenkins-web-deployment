# Use Nginx as the base image
FROM nginx:latest  

# Copy the HTML file to the container
COPY index.html /usr/share/nginx/html/index.html  

# Expose port 80
EXPOSE 80  

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]