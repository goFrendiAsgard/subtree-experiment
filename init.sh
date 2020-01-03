#!/bin/sh
set -x

git init
git remote add origin git@github.com:goFrendiAsgard/subtree-experiment.git
git add . -A
git commit -m 'first commit'

mkdir services

COMPONENT_NAME=gateway
LOCATION=services/gateway
ORIGIN=git@github.com:goFrendiAsgard/switch-repo-gateway.git
BRANCH=master

git remote add ${COMPONENT_NAME} ${ORIGIN}
git subtree add --prefix=${LOCATION} ${COMPONENT_NAME} ${BRANCH}
git fetch ${COMPONENT_NAME} ${BRANCH}


COMPONENT_NAME=service
LOCATION=services/service
ORIGIN=git@github.com:goFrendiAsgard/switch-repo-service.git
BRANCH=master

git remote add ${COMPONENT_NAME} ${ORIGIN}
git subtree add --prefix=${LOCATION} ${COMPONENT_NAME} ${BRANCH}
git fetch ${COMPONENT_NAME} ${BRANCH}