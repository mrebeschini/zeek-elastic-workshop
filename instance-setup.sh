#!/bin/bash
ELASTIC_DIR=/home/ubuntu/elastic
mkdir $ELASTIC_DIR
wget https://raw.githubusercontent.com/mrebeschini/zeek-elastic-workshop/master/zeek-ingest-pipeline.yml -P $ELASTIC_DIR
wget https://raw.githubusercontent.com/mrebeschini/zeek-elastic-workshop/master/filebeat.yml -P $ELASTIC_DIR
