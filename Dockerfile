FROM python:3.10-slim

# SET WORKING DIRECTORY
WORKDIR /app

# COPY REQUIREMENT FILE
COPY requirements.txt /app/requirements.txt

# INSTALL DEPENDENCIES
RUN pip install --no-cache-dir -r requirements.txt

# COPY APPLICATION CODE
COPY app.py /app/app.py

# EXPOSE PORT
EXPOSE 5000

# RUN APPLICATION
CMD ["python", "app.py"]
