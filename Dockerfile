FROM rokubun/python:numpy

# Note that pyzmq is forced to version before 18.0.0 to avoid compilation
# errors with libzqm version 4.3.1
RUN pip install --upgrade pip \
 && pip install pyzmq==17.1.2 \
 && pip install jupyter \
                ixml \
                fastkml

#RUN pip install pyproj

COPY jupyter_notebook_config.py /root/.jupyter/

CMD ["ipython"]
