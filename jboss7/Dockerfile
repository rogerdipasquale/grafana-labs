FROM debian:12-slim

RUN echo deb http://deb.debian.org/debian unstable main non-free contrib > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y curl tar gzip unzip

RUN mkdir /opt/jboss
WORKDIR /opt/jboss

# Installs Java
COPY jdk-6u45-linux-x64.bin .
RUN /bin/sh jdk-6u45-linux-x64.bin && \
    rm jdk-6u45-linux-x64.bin

COPY run.sh .
COPY setJavaOpts.sh .
COPY config.yaml .

# Downloads and installs Jboss
RUN curl https://download.jboss.org/jbossas/7.1/jboss-as-7.1.0.Final/jboss-as-7.1.0.Final.zip -o jboss.zip && \
    unzip jboss.zip && \
    rm jboss.zip

# Downloads jmx_export and logging class
RUN curl https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent_java6/0.17.1/jmx_prometheus_javaagent_java6-0.17.1.jar -o jmx_prometheus_javaagent_java6-0.17.1.jar 
RUN curl https://archive.apache.org/dist/logging/log4j/1.2.17/log4j-1.2.17.zip -o log4j-1.2.17.zip

RUN unzip log4j-1.2.17.zip && \
    cp apache-log4j-1.2.17/log4j-1.2.17.jar . && \
    rm -rf apache-log4j-1.2.17 && \
    rm log4j-1.2.17.zip

CMD /bin/sh ./run.sh
ENTRYPOINT /opt/jboss/run.sh
