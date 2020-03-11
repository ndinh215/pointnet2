FROM 'tensorflow/tensorflow:custom-op-gpu-ubuntu14'

ARG APP_HOME

pip install tensorflow-gpu==1.2

ADD . ${APP_HOME}
WORKDIR ${APP_HOME}/
