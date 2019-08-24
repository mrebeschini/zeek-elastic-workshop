#!/bin/bash
ELASTIC_DIR=/home/ubuntu/elastic
mkdir $ELASTIC_DIR
#wget https://raw.githubusercontent.com/mrebeschini/zeek-elastic-workshop/master/zeek-ingest-pipeline.yml -P $ELASTIC_DIR
wget https://raw.githubusercontent.com/mrebeschini/zeek-elastic-workshop/master/filebeat.yml -P $ELASTIC_DIR

ZEEK_DIR=/home/ubuntu/zeek
mkdir -p $ZEEK_DIR/logs
wget https://www.zeek.org/downloads/bro-2.6.3.tar.gz -P $ZEEK_DIR
wget https://github.com/mrebeschini/zeek-elastic-workshop/raw/master/zeek.yml -P $ZEEK_DIR
wget https://github.com/mrebeschini/zeek-elastic-workshop/raw/master/zeek-logs.tar.gz -P /tmp
tar xfvz /tmp/zeek-logs.tar.gz -C $ZEEK_DIR/logs
rm -f /tmp/zeek-logs.tar.gz
for i in $ZEEK_DIR/logs/*.log.gz; do gzip -d $i; done
chown -R ubuntu:ubuntu $ZEEK_DIR
