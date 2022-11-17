FROM ipfs/kubo:latest

ENV DEBIAN_FRONTEND noninteractive

COPY ./config.sh /container-init.d/config.sh

CMD ["daemon", "--migrate=true", "--agent-version-suffix=docker", "--enable-pubsub-experiment"]