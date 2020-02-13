FROM gitpod/workspace-full

USER root

SHELL [ "/bin/bash", "-c" ]

### Install Flutter
# dependencies
RUN set -ex; \
    apt-get update; \
    apt-get install -y libglu1-mesa

USER gitpod 

RUN set -ex; \
    mkdir ~/development; \
    cd ~/development; \
    git clone https://github.com/flutter/flutter.git -b stable

ENV PATH="$PATH:/home/gitpod/development/flutter/bin"

RUN set -ex; \
    flutter channel beta; \
    flutter upgrade; \
    flutter config --enable-web