# MuseTalk 1.5's Docker Image

## Usage

### Building

```shell
bash build.sh
```

This command initiates a two-phase build.

### Publishing

```shell
docker push pan93412/musetalk-docker:1.5-base
docker push pan93412/musetalk-docker:1.5-gradio
```

### Running

```shell
docker run --gpus all -p 7860:7860 pan93412/musetalk-docker:1.5-gradio
```

You can find sample videos and audio files in [TMElyralab/MuseTalk/data](https://github.com/TMElyralab/MuseTalk/tree/main/data).