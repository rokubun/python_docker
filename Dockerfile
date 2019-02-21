FROM python:3.7-alpine3.9

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
                jupyter \
                ixml \
                fastkml \
                pyproj \
                pymongo \
                Flask \
                pytest

RUN pip install numpy

RUN pip install scipy

RUN pip install matplotlib

COPY jupyter_notebook_config.py /root/.jupyter/

CMD ["ipython"]
