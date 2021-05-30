FROM openjdk:11


RUN wget http://apache.mirror.anlx.net/spark/spark-2.4.8/spark-2.4.8-bin-hadoop2.7.tgz

RUN tar -xzf spark-2.4.8-bin-hadoop2.7.tgz && \
    mv spark-2.4.8-bin-hadoop2.7 /spark && \
    rm spark-2.4.8-bin-hadoop2.7.tgz

#COPY bashrc /root/.bashrc
COPY script/* /

EXPOSE 8080 7077
