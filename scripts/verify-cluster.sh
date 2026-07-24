#!/bin/bash

echo "========== Kubernetes Nodes =========="
kubectl get nodes

echo ""
echo "========== System Pods =========="
kubectl get pods -n kube-system

echo ""
echo "========== Monitoring Pods =========="
kubectl get pods -n monitoring

echo ""
echo "========== Services =========="
kubectl get svc -A

echo ""
echo "========== PVC =========="
kubectl get pvc -A

echo ""
echo "========== Helm Releases =========="
helm list -A

echo ""
echo "Verification Completed."