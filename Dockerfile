FROM quay.io/pires/docker-elasticsearch-kubernetes:5.6.4

ENV NODE_NAME="" \
    ES_TMPDIR="/tmp"

# Install searchguard plug-in
RUN /elasticsearch/bin/elasticsearch-plugin install --batch com.floragunn:search-guard-5:5.6.4-19.1