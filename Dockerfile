FROM python:3.7-alpine3.9

RUN apk add --no-cache \
                       build-base \
                       libxml2-dev \
                       libxslt-dev \
                       freetype-dev \
                       libpng \
 && pip install --upgrade pip \
 && pip install \
                       jupyter \
                       ixml \
                       fastkml \
                       pyproj \
                       numpy \
                       scipy \
                       matplotlib

COPY jupyter_notebook_config.py /root/.jupyter/

CMD ["ipython"]
