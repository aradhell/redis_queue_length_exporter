FROM python:3

RUN pip install prometheus_client
RUN pip install redis

COPY llen.py ./
COPY queue.json ./

EXPOSE 8000

ENTRYPOINT ["python", "./llen.py"]
