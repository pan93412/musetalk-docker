FROM pan93412/musetalk:1.5-base AS base

WORKDIR /app

COPY /musetalk-git .

RUN bash ./download_weights.sh
RUN ["python3", "app.py"]
