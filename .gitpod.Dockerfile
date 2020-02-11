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
RUN . /home/gitpod/.sdkman/bin/sdkman-init.sh; \
    set -ex; \
    yes | sdk install java 8.0.242.hs-adpt; \
    yes | sdkmanager "platform-tools" "platforms;android-29" "build-tools;29.0.3"; \
    yes | sdkmanager --licenses
