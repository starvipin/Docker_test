# 1. Base image: Python 3.13 ka halka (slim) version le rahe hain
FROM python:3.13-slim

# 2. Container ke andar hamara working folder '/app' set kar rahe hain
WORKDIR /app

# 3. 'uv' package manager ko install kar rahe hain
RUN pip install uv

# 4. Sirf dependencies wali files ko pehle copy kar rahe hain
COPY pyproject.toml uv.lock ./

# 5. Saari dependencies install kar rahe hain
RUN uv sync

# 6. Ab baaki ka saara code (tests, src, etc.) container mein copy kar rahe hain
COPY . .

# 7. Container start hone par kya chalana hai (abhi ke liye pytest chala rahe hain)
CMD ["uv", "run", "pytest"]