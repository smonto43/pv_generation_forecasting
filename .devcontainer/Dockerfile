FROM python:3.11.4-slim-bullseye

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    libgeos-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

# requirements.txt is at root of project
COPY requirements.txt ./requirements.txt

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

EXPOSE 8888
EXPOSE 8501

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
