## JBoss AS 7

Creation of a Docker image containing JDK 1.6 to run Jboss AS7 for legacy applications.
This will include Prometheus JMX exporter to expose JMX metrics.

### Requirements

Download JBoss AS 7

This is a legacy Jboss server, but used for this solution.
https://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.zip
  
  

Download jmx_exporter from https://github.com/prometheus/jmx_exporter/releases/tag/parent-0.17.1 (I am using this link: https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent_java6/0.17.1/jmx_prometheus_javaagent_java6-0.17.1.jar )

curl https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent_java6/0.17.1/jmx_prometheus_javaagent_java6-0.17.1.jar -o ./jmx_prometheus_javaagent_java6-0.17.1.jar


### Docker Image

You can create it by using: 
`docker build -t jboss-as7:jmx-exporter .`

You can run it with:

`docker run --rm -d -p 8080:8080 -p 19080:19080 jboss-as7:jmx-exporter `

