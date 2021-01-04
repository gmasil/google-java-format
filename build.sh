#! /bin/bash

function usejdk {
  JAVA_HOME=/c/Program\ Files/Java/jdk-$1/
  PATH=$JAVA_HOME/bin:$PATH
}

usejdk 15
mvn clean install -DskipTests

cd eclipse_plugin
rm -rf lib
mkdir lib
usejdk 8
mvn clean install
