FROM ubuntu:latest
LABEL authors="rai"

ENTRYPOINT ["top", "-b"]