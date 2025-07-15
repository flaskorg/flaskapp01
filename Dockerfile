# Use a secure, minimal base image
FROM python:3.13.3-alpine3.20

# Set workdir
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all application files
COPY . .

# Run the application
CMD ["python", "app.py"]
