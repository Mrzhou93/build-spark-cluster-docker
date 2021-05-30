# build-spark-cluster-docker
Build a spark cluster on local machine by using docker

Create a network by using the following command:
    docker network create spark-network

build the image:
    docker build -t bill/spark:latest .

run the master:
    /spark/bin/spark-class org.apache.spark.deploy.master.Master --ip `hostname` --port 7077 --webui-port 8080

run the worker:
    /spark/bin/spark-class org.apache.spark.deploy.worker.Worker --webui-port 8080 spark://spark-master:7077

run example:
    /spark/bin/spark-submit --master spark://spark-master:7077 --class org.apache.spark.examples.SparkPi /spark/examples/jars/spark-examples_2.11-2.4.8.jar 1000

to get multiple worker node:
    docker-compose up --scale spark-worker=number_of_the_worker