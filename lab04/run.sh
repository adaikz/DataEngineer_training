#!/bin/bash
#
# Run as e.g. ./run.sh lab04_train1.py
#
# dsenv should have numpy installed.
# when --master yarn, dsenv should be replicated on all nodes

echo $1
PYSPARK_PYTHON=/home/ubuntu/miniconda3/envs/dsenv36/bin/python spark-submit \
    --conf spark.streaming.batch.duration=10 \
    --conf spark.executor.instances=6\
    --conf spark.executor.cores=1\
    --conf spark.driver.memory=1g\
    --conf spark.default.parallelism=1\
    --conf spark.sql.shuffle.partitions=3\
    --master local[1] \
    --executor-memory 4G \
    --packages org.apache.spark:spark-sql-kafka-0-10_2.11:2.3.2 \
    $1
