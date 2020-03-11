FROM nvidia/cuda:8.0-cudnn5-devel

ARG APP_HOME

RUN apt-get update
RUN apt-get install -y build-essential libgtk2.0-dev libjpeg-dev \
    libjasper-dev libopenexr-dev cmake python-dev python-numpy python-tk \
    libtbb-dev libeigen3-dev yasm libfaac-dev libopencore-amrnb-dev \
    libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev \
    libx264-dev libqt4-dev libqt4-opengl-dev sphinx-common \
    texlive-latex-extra libv4l-dev libdc1394-22-dev libavcodec-dev \
    libavformat-dev libswscale-dev default-jdk ant libvtk5-qt4-dev nvidia-361-dev

RUN apt-get install   wget \
                      unzip \
                      vim \
                      python-pip \
                      python-dev \
                      python-opencv \
                      python-tk \
                      libjpeg-dev \
                      libfreetype6 \
                      libfreetype6-dev \
                      zlib1g-dev \
                      cmake \
                      wget \
                      cython \
                      git \
                      -y

RUN pip install --upgrade pip
RUN pip install image \
                scipy \
                matplotlib \
                PyYAML \
                numpy \
                easydict \
                h5py \
                tensorflow-gpu==1.2

RUN pip install -U numpy

ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:/usr/local/cuda/lib64
ENV CUDA_HOME /usr/local/cuda
RUN ldconfig

ADD . ${APP_HOME}
WORKDIR ${APP_HOME}/
