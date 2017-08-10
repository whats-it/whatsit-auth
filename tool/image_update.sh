#!/bin/bash

HOSTNAME="gcr.io"
TAG=$1
PROJECT_ID="whatsit-174908"
IMAGE="sphinx-api"
DEPLOYMENT="whatsit-auth"
NAMESPACE="whatsit"


kubectl --namespace=$NAMESPACE set image deployment/$DEPLOYMENT $IMAGE=$HOSTNAME/$PROJECT_ID/$IMAGE:$TAG
kubectl --namespace=$NAMESPACE rollout status deployment/$DEPLOYMENT