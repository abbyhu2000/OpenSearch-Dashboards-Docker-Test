#!/bin/bash

ls
#cd ~/docker-workspace/OpenSearch_Dashboards
REMOTE_NAME="dev5"
echo $REPO_URL
git remote add $REMOTE_NAME $REPO_URL
git fetch $REMOTE_NAME
git checkout -b foo
git branch -D main
git checkout --track $REMOTE_NAME/main
git branch -D foo

tail -f /dev/null