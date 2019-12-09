#!/usr/bin/env bash

if [ "${0}" == 'package' ]; then
    mvn clean package
fi
run_script='docker run'
if [ "${1}" == '-d' ]; then
    run_script=${run_script}' -d'
fi
run_script=${run_script}' -e "JAVA_OPTS=-Xms128m -Xmx768m -Dserver.port=9000" -p 9000:9000 -t spring-boot-applications/spring-boot-docker-demo:1.0.0-SNAPSHOT'
echo execute result:
eval ${run_script}
