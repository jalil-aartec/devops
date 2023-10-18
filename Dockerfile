# Use an official NGINX runtime as a parent image
FROM nginx:latest

# Copy your HTML file to the NGINX default HTML directory
COPY index.html /usr/share/nginx/html

# The NGINX image already exposes port 80
# No need to specify EXPOSE 80 here

# Start NGINX when the container runs
CMD ["nginx", "-g", "daemon off;"]