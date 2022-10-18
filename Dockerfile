FROM python:3.8-slim-buster

ADD . /code

RUN cd /code/label-studio-tools && pip install . -i https://mirrors.cloud.tencent.com/pypi/simple
RUN cd /code && pip install . -i https://mirrors.cloud.tencent.com/pypi/simple

WORKDIR /code/label_studio_converter
CMD ["python", "/code/label_studio_converter/cli.py"]
