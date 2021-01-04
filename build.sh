#! /bin/bash

function usejdk {
  JAVA_HOME=/c/Program\ Files/Java/jdk-$1/
  PATH=$JAVA_HOME/bin:$PATH
}

usejdk 15
mvn install -DskipTests

cd eclipse_plugin
usejdk 8
mvn compile install
