PYSPARK_PYTHON=/home/ubuntu/miniconda3/envs/dsenv36/bin/python spark-submit \
    --conf spark.streaming.batch.duration=10 \
    --master local[1] \
    --executor-memory 4G \
    --packages org.apache.spark:spark-sql-kafka-0-10_2.11:2.3.2 \
    lab04_test.py
