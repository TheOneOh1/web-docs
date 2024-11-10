# Build stage
FROM python:3.11-slim as builder

WORKDIR /docs

# Copy requirements first to leverage Docker cache
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy documentation source
COPY . .

# Build static site
RUN mkdocs build

# Production stage
FROM nginx:alpine

# Copy built static files from builder
COPY --from=builder /docs/site /usr/share/nginx/html

# Copy custom nginx configuration if needed
# COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"] 