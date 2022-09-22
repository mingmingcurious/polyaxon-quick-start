FROM tensorflow/tensorflow:2.2.0

# This dockerfile emulate the behavior of Polyaxon v0 using similar tricks for leverage the build cacheENTRYPOINT ["python"]doc
LABEL maintainer="Polyaxon, Inc. <contact@polyaxon.com>"

WORKDIR /code

COPY requirements.txt /code

RUN pip install --no-cache-dir -r /code/requirements.txt

COPY model.py /code

ENTRYPOINT ["python"]
# 统一用start.sh启动
CMD ["model.py"]