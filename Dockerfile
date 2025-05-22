FROM python:3.8

# Set working directory
WORKDIR /code

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Run server
CMD ["python", "todo/manage.py", "runserver", "0.0.0.0:8000"]

