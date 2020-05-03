FROM rokubun/python:base-slim-buster

RUN apt-get update && apt-get install -y gfortran \
 && pip install --upgrade pip \
 && pip install numpy 

CMD ["ipython"]
