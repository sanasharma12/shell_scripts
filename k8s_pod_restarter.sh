#!/bin/bash

NAMESPACE="default"
kubectl get pods -n $NAMESPACE --field- selector=status.phase=Failed -o jsonpath='{.items[*].metadata.name}' | \ while read pod; do
echo "Restarting pod: $pod"
kubectl delete pod "$pod" -n $NAMESPACE
done
