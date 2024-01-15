# LLM 


## Getting started
To get the project running locally first create and spin up a conda environment as follows:
### For running on local System
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
### For Collaboration

```bash
sudo docker save -o llm.tar llm
```
```bash
sudo docker load -i llm.tar
```
```bash
sudo docker tag llm iffishells/llm
```
```bash
sudo docker push iffishells/llm
```
```bash
docker pull iffishells/llm
```
### Docker Compose
```bash
docker-compose build
docker-compose up
```