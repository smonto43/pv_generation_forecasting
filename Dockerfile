FROM python:3.11.4-slim

# Configuración básica
WORKDIR /app

# Copiar dependencias
COPY requirements.txt .

# Instalar dependencias
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Copiar el resto del proyecto
COPY . .

# Configurar Jupyter Lab (para trabajar directamente en VS Code)
EXPOSE 8888

CMD ["python"]