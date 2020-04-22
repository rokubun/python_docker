FROM rokubun/python:numpy-slim-buster

RUN apt-get update \
 && apt-get install -y libcairo2 libcairo-gobject2 libghc-pango-dev \
 && pip install --upgrade pip \
 && pip install 'pandas>=0.24.2' pygments 'mkdocs>=1.0.4' 'mkdocs-material>=4.3.1' mkdocs-pdf-export-plugin
