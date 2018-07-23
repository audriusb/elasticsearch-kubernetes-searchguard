FROM quay.io/pires/docker-elasticsearch-kubernetes:6.3.1

ENV NODE_NAME="" \
    ES_TMPDIR="/tmp"

RUN apk update update && apk add openssl
# Install searchguard plug-in
RUN /elasticsearch/bin/elasticsearch-plugin install --batch https://repo1.maven.org/maven2/com/floragunn/search-guard-6/6.3.1-22.3/search-guard-6-6.3.1-22.3.zip