# gcc alpine docker
Repository for the Dockerfile for C/C++ development in alpine


This repo contains basic compilation tools (gcc, g++ and cmake), plus some
additional libraries (`yaml-cpp`) that are needed.

To build the container, simply type:

    docker build -t gcc_alpine_docker .

Once you are ready to compile your code, simply enter into the container.
Assuming that you have a source folder and a test data folder (for the tests), 
you can mount the paths into the container using `volumes`:

    source_code=/path/to/source/code
    test_data_folder=/path/to/test/data
    install_dir=/path/to/build/dir

    build=/path/to/build/dira
    mkdir ${build}  # In order the build folder to be persistent

    docker run -ti -v ${source_code}:/tmp/src \
                   -v ${test_data_folder}:/tmp/data \
                   -v ${build}:/tmp/build \
                   -v ${install_dir}:/tmp/install gcc_alpine_docker bash


# Compiling within the container

In order to compile the code and launch the tests, once in the container:

    mkdir tmp
    cd tmp; cmake <options> ../src
