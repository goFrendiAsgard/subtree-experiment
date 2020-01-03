#!/bin/sh
set -x

git add . -A
git stash

git pull origin master

COMPONENT_NAME=gateway
LOCATION=services/gateway/
ORIGIN=git@github.com:goFrendiAsgard/switch-repo-gateway.git
BRANCH=master

git subtree pull --prefix=${LOCATION} --squash ${COMPONENT_NAME} ${BRANCH}


COMPONENT_NAME=service
LOCATION=services/service/
ORIGIN=git@github.com:goFrendiAsgard/switch-repo-service.git
BRANCH=master

git subtree pull --prefix=${LOCATION} --squash ${COMPONENT_NAME} ${BRANCH}

git stash pop