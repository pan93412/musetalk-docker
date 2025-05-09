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

You should first install the [NVIDIA Open Driver](https://documentation.ubuntu.com/server/how-to/graphics/install-nvidia-drivers/index.html#the-recommended-way-ubuntu-drivers-tool) and [Docker](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository). Ensure that the driver you install supports CUDA version 11.8 or higher.

```shell
sudo apt install nvidia-open
```

```shell
docker run --gpus all -p 7860:7860 pan93412/musetalk-docker:1.5-gradio
```

Then, navigate to `http://localhost:7860` to access the MuseTalk Gradio interface. You can find sample videos and audio files in [TMElyralab/MuseTalk/data](https://github.com/TMElyralab/MuseTalk/tree/main/data).
