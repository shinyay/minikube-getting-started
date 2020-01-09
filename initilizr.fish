#!/usr/bin/env fish

set -g GROUP_ID io.pivotal.shinyay
set -g ARTIFACT_ID back-app
set -g NAME $ARTIFACT_ID
set -g DESCRIPTION "Sample project for Spring Boot"
set -g PACKAGE $GROUP_ID
set -g DEPENDENCY web,actuator

curl https://start.spring.io/starter.zip --create-dirs -o ./$ARTIFACT_ID/spring.zip \
	-d type=gradle-project \
	-d language=kotlin \
	-d groupId=$GROUP_ID \
	-d artifactId=$ARTIFACT_ID \
	-d name=$NAME \
	-d description=$DESCRIPTION \
	-d packageName=$PACKAGE \
	-d packaging=jar \
	-d javaVersion=11\
	-d dependencies=$DEPENDENCY
