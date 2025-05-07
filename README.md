# MuseTalk 1.5's Docker image

## Usage

### Building

```bash
bash build.sh
```

It will do the two-phase build.

### Publishing

It is handled by CI.

### Running

```bash
# ghcr.io
docker run --gpus all -p 7860:7860 ghcr.io/pan93412/musetalk-docker:1.5-gradio

# local by build.sh
docker run --gpus all -p 7860:7860 pan93412/musetalk-docker:1.5-gradio
```
