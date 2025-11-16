#!/bin/sh
export JAVA_HOME=/opt/jboss/jdk1.6.0_45
. ./setJavaOpts.sh
./jboss-as-7.1.0.Final/bin/standalone.sh
