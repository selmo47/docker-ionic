FROM beevelop/cordova

ENV IONIC_VERSION 4.5.0

RUN apt-get update && apt-get install -y git bzip2 openssh-client && \
    npm i -g --unsafe-perm ionic@${IONIC_VERSION} && \
    npm i -g @ionic/lab \
    ionic --no-interactive config set -g daemon.updates false && \
    rm -rf /var/lib/apt/lists/* && apt-get clean
