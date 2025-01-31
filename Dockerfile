# Use the official Nginx image as the base image
FROM nginx:latest

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy the frontend files to the Nginx web directory
COPY . /usr/share/nginx/html

# Copy a custom Nginx configuration (optional, see step 2)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
