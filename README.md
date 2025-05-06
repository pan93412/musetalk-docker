# MuseTalk 1.5's Docker image

## Usage

### Building

```bash
bash build.sh
```

It will do the two-phase build.

### Publishing

```bash
# Base environment
docker push pan93412/musetalk:1.5-base

# Gradio app
docker push pan93412/musetalk:1.5
```

### Running

```bash
docker run --gpus all -p 7860:7860 pan93412/musetalk:1.5
```
