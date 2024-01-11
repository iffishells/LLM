FROM ubuntu:latest

RUN apt-get update

# Set the application directory
WORKDIR app
RUN apt-get install -y python3 python3-pip

COPY venv /app/venv
SHELL ["/bin/bash","-c"]
RUN source venv/bin/activate

RUN pip install torch
RUN pip install tensorflow
RUN pip install datasets
RUN pip install transformers
RUN pip install jupyterlab
RUN pip install pandas
RUN pip install matplotlib
RUN pip install sentencepiece 

EXPOSE 8000

CMD ["jupyter","lab","--ip=0.0.0.0","--port=8000","--no-browser","--allow-root"]
