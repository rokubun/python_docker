FROM rokubun/python:base

RUN apk add --no-cache glib \
                       build-base \
                       libxml2-dev \
                       libxslt-dev \
                       freetype-dev \
                       libpng-dev \
                       lapack-dev \
                       gfortran 


# Note that pyzmq is forced to version before 18.0.0 to avoid compilation
# errors with libzqm version 4.3.1
RUN pip install --upgrade pip \
 && pip install pyzmq==17.1.2  \ 
 && pip install numpy \
 && pip install scipy \
 && pip install matplotlib

CMD ["ipython"]
