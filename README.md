# LLM 


## Getting started
To get the project running locally first create and spin up a conda environment as follows:

```bash
sudo apt install docker.io
```
```bash
sudo systemctl start docker
```
```bash
sudo systemctl enable docker
```
```bash
sudo docker buildx build -t llm .
```
```bash
 sudo docker run -it --rm -p 8000:8000 -v $(pwd):/app llm
```
