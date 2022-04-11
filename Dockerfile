FROM python:3.9-slim-bullseye

ENV PYTHONUNBUFFERED 1

RUN pip install --no-cache-dir ansible
RUN apt-get -qq update \
    && apt-get -qq --no-install-recommends install ssh nano tmux \
    && apt-get -qq clean \
    && rm -rf /var/lib/apt/lists/* 

WORKDIR /app

ENTRYPOINT ["/bin/bash"]
