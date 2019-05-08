FROM rokubun/python:base-slim-stretch

#RUN apt-get install  glib \
#                     build-base \
#                     libxml2-dev \
#                     libxslt-dev \
#                     freetype-dev \
#                     libpng-dev


# Note that pyzmq is forced to version before 18.0.0 to avoid compilation
# errors with libzqm version 4.3.1
RUN pip install --upgrade pip \
 && pip install numpy \
                matplotlib

CMD ["ipython"]
