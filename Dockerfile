# syntax=docker/dockerfile:1

FROM pan93412/musetalk:1.5-base AS weights
WORKDIR /app

COPY musetalk-git/download_weights.sh .
RUN bash ./download_weights.sh

FROM pan93412/musetalk:1.5-base AS app
LABEL org.opencontainers.image.title="MuseTalk 1.5 Gradio App"
LABEL org.opencontainers.image.description="The Gradio app for MuseTalk 1.5."
LABEL org.opencontainers.image.url="https://github.com/pan93412/musetalk-docker"
LABEL org.opencontainers.image.documentation="https://github.com/pan93412/musetalk-docker"
LABEL org.opencontainers.image.source="https://github.com/pan93412/musetalk-docker"
LABEL org.opencontainers.image.licenses="MIT"

WORKDIR /app

COPY /musetalk-git .
COPY --from=weights /app/models ./models

RUN ["python3", "app.py"]
