FROM gitpod/workspace-full-vnc

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

RUN flutter precache

# Android SDK Tools
RUN set -ex; \
    mkdir ~/development/android-sdk; \
    cd ~/development/android-sdk; \
    wget -q https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip; \
    unzip -q sdk-tools-linux-4333796.zip; \
    rm sdk-tools-linux-4333796.zip

ENV ANDROID_HOME="/home/gitpod/development/android-sdk"
ENV PATH="$PATH:$ANDROID_HOME/tools/bin"

# Android SDK
RUN . /home/gitpod/.sdkman/bin/sdkman-init.sh \
    && yes | sdk install java 8.0.242.hs-adpt \
    && set -ex; \
    mkdir ~/.android; \
    touch ~/.android/repositories.cfg; \
    yes | sdkmanager "platform-tools" "platforms;android-29" "build-tools;29.0.3"; \
    yes | sdkmanager --licenses

RUN set -euxo pipefail; \
    cd ~/development; \
    wget -q https://dl.google.com/dl/android/studio/ide-zips/3.5.3.0/android-studio-ide-191.6010548-linux.tar.gz; \
    tar -xzf android-studio-ide-191.6010548-linux.tar.gz; \
    rm android-studio-ide-191.6010548-linux.tar.gz
