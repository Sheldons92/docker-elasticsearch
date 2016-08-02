#!/bin/bash

export CLUSTER_NAME=${CLUSTER_NAME:=elasticsearch}
export NODE_NAME=${NODE_NAME:=${HOSTNAME}}
export PATH_DATA=${PATH_DATA:=/data}
export ES_HEAP_SIZE=${ES_HEAP_SIZE:=450m}
export INDEX_AUTO_EXPAND_REPLICAS=${INDEX_AUTO_EXPAND_REPLICAS:=false}
export INDEX_NUMBER_OF_SHARDS=${INDEX_NUMBER_OF_SHARDS:=5}
export INDEX_NUMBER_OF_REPLICAS=${INDEX_NUMBER_OF_REPLICAS:=1}
export INDEX_REFRESH_INTERVAL=${INDEX_REFRESH_INTERVAL:=1s}
export NODE_MASTER=${NODE_MASTER:=true}
export NODE_DATA=${NODE_DATA:=true}
export HTTP_ENABLE=${HTTP_ENABLE:=true}
export HTTP_BIND_HOST=${HTTP_BIND_HOST:=0.0.0.0}
export KUBERNETES_SERVICE=${KUBERNETES_SERVICE:=elasticsearch-master}
export KUBERNETES_NAMESPACE=${KUBERNETES_NAMESPACE:=default}
export DISCOVERY_ZEN_FD_PING_INTERVAL=${DISCOVERY_ZEN_FD_PING_INTERVAL:=1s}
export DISCOVERY_ZEN_FD_PING_TIMEOUT=${DISCOVERY_ZEN_FD_PING_TIMEOUT:=30s}
export DISCOVERY_ZEN_FD_PING_RETRIES=${DISCOVERY_ZEN_FD_PING_RETRIES:=3}
export DISCOVERY_ZEN_PUBLISH_TIMEOUT=${DISCOVERY_ZEN_PUBLISH_TIMEOUT:=30s}

export ENABLE_TRANSPORT_SSL=${ENABLE_TRANSPORT_SSL:=false}

chown -R elasticsearch:elasticsearch /data
su elasticsearch -c 'exec /elasticsearch/bin/elasticsearch'
