FROM rokubun/python:base

# Installation and removal in a single RUN command to avoid extra layering
# in the file system, which increases the image size
RUN apk add --no-cache build-base linux-headers \
 && pip install --upgrade pip \
 && pip install uwsgi \
 && apk del --rdepends build-base linux-headers

CMD ["sh"]
