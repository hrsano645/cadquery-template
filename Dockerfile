FROM python:3.12-slim

# Install system dependencies for CadQuery, OpenGL, and Qt
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglu1-mesa \
    libxrender1 \
    libxft2 \
    libxext6 \
    libx11-6 \
    libxcursor1 \
    libxi6 \
    libfreetype6 \
    libfontconfig1 \
    xvfb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code into the container
COPY src/ ./src/

# Set environment variables for headless rendering
ENV QT_QPA_PLATFORM=offscreen
ENV PYTHONPATH=/app

# Set the command to run the application
CMD ["python", "src/main.py"]