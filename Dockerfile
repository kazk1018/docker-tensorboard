FROM python:3.5

ARG TF_VERSION=

RUN pip install tensorflow${TF_VERSION:+==${TF_VERSION}}

WORKDIR /workspace

EXPOSE 6006

ENTRYPOINT ["tensorboard"]
