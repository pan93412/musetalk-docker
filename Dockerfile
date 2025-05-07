# syntax=docker/dockerfile:1

# make 
FROM python:3.10-slim-bookworm AS weights
WORKDIR /app

RUN apt-get update \
        && apt-get install --no-install-recommends -y "curl=7.88.1-10+deb12u12" \
        && rm -rf /var/lib/apt/lists/*

COPY musetalk-git/download_weights.sh .
RUN bash ./download_weights.sh

FROM pan93412/musetalk-docker:1.5-base AS app
LABEL org.opencontainers.image.title="MuseTalk 1.5 Gradio App"
LABEL org.opencontainers.image.description="The Gradio app for MuseTalk 1.5."
LABEL org.opencontainers.image.url="https://github.com/pan93412/musetalk-docker"
LABEL org.opencontainers.image.documentation="https://github.com/pan93412/musetalk-docker"
LABEL org.opencontainers.image.source="https://github.com/pan93412/musetalk-docker"
LABEL org.opencontainers.image.licenses="MIT"

WORKDIR /app

COPY /musetalk-git .
COPY --link --from=weights /app/models /app/models

CMD ["python3", "app.py", "--ip", "0.0.0.0", "--port", "7860"]
