#!/bin/bash

 rsync -avrz --delete /var/jenkins_home/workspace/tset/target/hello-world-maven-0.1.0-shaded.war 15.164.230.227::backup
