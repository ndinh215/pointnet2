FROM 'tensorflow/tensorflow:custom-op-gpu-ubuntu14'

ARG APP_HOME

ADD . ${APP_HOME}
WORKDIR ${APP_HOME}/
