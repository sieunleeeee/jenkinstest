#!/bin/bash

rsync -avrz --delete /var/jenkins_home/workspace/tset/target/*.war 15.164.230.227::backup
