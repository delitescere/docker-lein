FROM delitescere/java:8

MAINTAINER josh@grahamis.com

USER root

RUN \
  apk update && \
  apk add --update bash && \
  rm -rf /var/cache/apk/* && \
  mkdir -p /usr/local/bin && \
  adduser -D -g '' lein

RUN \
  cd /usr/local/bin && \
  wget "https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein" && \
  chmod 0755 lein

USER lein
WORKDIR /home/lein
RUN \
  echo exit | lein repl

ENTRYPOINT ["lein"]
