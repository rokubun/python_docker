FROM python:3.7-alpine3.9

RUN apk add --no-cache glib \
                       build-base \
                       libxml2-dev \
                       libxslt-dev \
                       freetype-dev \
                       libpng-dev \
                       lapack-dev \
                       gfortran \
 && pip install --upgrade pip \
 && pip install \
                jupyter \
                ixml \
                fastkml \
                pyproj \
                numpy

RUN pip install scipy \
                matplotlib

COPY jupyter_notebook_config.py /root/.jupyter/

CMD ["ipython"]
