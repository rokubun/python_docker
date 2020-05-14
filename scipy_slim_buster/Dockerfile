FROM rokubun/python:numpy-slim-buster

RUN apt-get update \
 && apt-get install -y libpng-dev \
                       liblapack-dev \
                       gfortran \

# Note that pyzmq is forced to version before 18.0.0 to avoid compilation
# errors with libzqm version 4.3.1
RUN pip install --upgrade pip \
 && pip install pyzmq==17.1.2  \ 
 && pip install scipy \
 && pip install pandas

CMD ["ipython"]
