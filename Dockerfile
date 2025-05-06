FROM pan93412/musetalk:1.5-weights AS weights
WORKDIR /app

COPY musetalk-git/download_weights.sh .
RUN bash ./download_weights.sh

FROM pan93412/musetalk:1.5-base AS app
WORKDIR /app

COPY /musetalk-git .
COPY --from=weights /app/models ./models

RUN ["python3", "app.py"]
