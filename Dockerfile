FROM ipfs/kubo:v0.16.0

ENV DEBIAN_FRONTEND noninteractive

COPY ./config.sh /container-init.d/config.sh

# Replace the default daemon subcommand enabling pubsub
CMD ["daemon", "--migrate=true", "--agent-version-suffix=docker", "--enable-pubsub-experiment"]