#!/bin/bash

bin/spark-submit \
 --master local[4] \
 --deploy-mode client \
 --packages org.apache.spark:spark-streaming-kafka_2.11:1.6.1,org.json4s:json4s-jackson_2.11:3.2.11,it.nerdammer.bigdata:spark-hbase-connector_2.10:1.0.3 \
 --class com.aaron.twitter.KafkaStreamReader \
 --conf spark.hbase.host=192.168.99.100 \
 ../../twitter-to-hbase/target/scala-2.11/twittertohbase_2.11-1.0.jar \
 192.168.99.100:9092 aaron-streaming twitter twitter
