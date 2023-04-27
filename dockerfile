# Use a lightweight image of nginx as base image
FROM nginx:alpine

# Copy the HTML and CSS files to the web root directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start nginx server to serve the web app
CMD ["nginx", "-g", "daemon off;"]
