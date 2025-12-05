# Basic static HTML Website with Nginx in Docker
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80   
CMD ["nginx", "-g", "daemon off;"]
# python App with requiremnts
FROM python:3.9-slim
WORKDIR /app
copy requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["pyhton", "app.py"]
      