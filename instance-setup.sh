#!/bin/bash
ELASTIC_DIR=/home/ubuntu/elastic
mkdir $ELASTIC_DIR
wget https://raw.githubusercontent.com/mrebeschini/zeek-elastic-workshop/master/zeek-ingest-pipeline.yml -P $ELASTIC_DIR
wget https://raw.githubusercontent.com/mrebeschini/zeek-elastic-workshop/master/filebeat.yml -P $ELASTIC_DIR

ZEEK_DIR=/home/ubuntu/zeek
mkdir $ZEEK_DIR
wget https://www.zeek.org/downloads/bro-2.6.3.tar.gz -P $ZEEK_DIR
chwon -R ubuntu:ubuntu $ZEEK_DIR
