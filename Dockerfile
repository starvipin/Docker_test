# 1. Base image
FROM python:3.13-slim

# 2. Working directory set karein
WORKDIR /app

# 3. uv install karein
RUN pip install uv

# 4. Dependencies copy karein
COPY pyproject.toml uv.lock ./

# 5. Dependencies install karein
RUN uv sync

# 6. Baaki code copy karein (src aur tests folder)
COPY . .

# 7. Flask ka default port open karein
EXPOSE 5000

# 8. Container chalne par Flask app run karein
CMD ["uv", "run", "python", "src/app.py"]