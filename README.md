# Python development docker
Repository for the Dockerfile for Python development


To build the container, simply type:

    docker build -t python_docker .

If you run the docker without arguments, it will launch `ipython`

    docker run -ti -v `pwd`:/tmp/work -w=/tmp/work rokubun/python

You can also run a Jupyter instance (without requiring password). First launch
this command:

    docker run  -ti -v `pwd`:/tmp/work -w=/tmp/work  -p 7777:8888 rokubun/python  \
                        jupyter notebook --no-browser --allow-root --ip=0.0.0.0

Then proceed to address `localhost:7777` in your browser.

