export JAVA_OPTS=""

#export PORT=9123
export PORT=19080
export JBOSS_DIR="/opt/jboss/jboss-as-7.1.0.Final"
export JMX_EXPORTER_DIR="/opt/jboss"


export JBOSS_LOG4J="${JBOSS_DIR}/modules/org/jboss/logmanager/log4j/main/jboss-logmanager-log4j-1.0.0.GA.jar"

export JAVA_OPTS="${JAVA_OPTS} -Djava.util.logging.manager=org.jboss.logmanager.LogManager"
export JAVA_OPTS="${JAVA_OPTS} -Djboss.modules.system.pkgs=org.jboss.logmanager,org.jboss.logmanager.log4j"
# export JAVA_OPTS="${JAVA_OPTS} -Dsun.util.logging.disableCallerCheck=true"
export JAVA_OPTS="${JAVA_OPTS} -Xbootclasspath/a:${JMX_EXPORTER_DIR}/log4j-1.2.17.jar:${JBOSS_DIR}/modules/org/jboss/logmanager/main/jboss-logmanager-1.2.2.GA.jar:${JBOSS_DIR}/modules/org/jboss/common-core/main/jboss-common-core-2.2.17.GA.jar:${JBOSS_LOG4J}"
export JAVA_OPTS="${JAVA_OPTS} -javaagent:${JMX_EXPORTER_DIR}/jmx_prometheus_javaagent_java6-0.17.1.jar=${PORT}:${JMX_EXPORTER_DIR}/config.yaml"

echo "${JAVA_OPTS}"
