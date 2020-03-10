FROM gitpod/workspace-full-vnc

USER gitpod

# Install Google Chrome
RUN set -ex; \
    wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb; \
    sudo apt-get install -yq ./google-chrome-stable_current_amd64.deb; \
    rm google-chrome-stable_current_amd64.deb; \
    sudo rm -rf /var/lib/apt/lists/*

RUN set -ex; \
    mkdir ~/development; \
    cd ~/development; \
    git clone https://github.com/flutter/flutter.git -b stable

ENV PATH="$PATH:/home/gitpod/development/flutter/bin"

RUN set -ex; \
    flutter channel beta; \
    flutter upgrade; \
    flutter config --enable-web; \
    flutter precache