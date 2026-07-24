#!/bin/bash

set -e

echo "Adding Prometheus Community Helm Repository..."
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

echo "Updating Helm repositories..."
helm repo update

echo "Creating monitoring namespace..."
kubectl create namespace monitoring --dry-run=client -o yaml | kubectl apply -f -

echo "Installing kube-prometheus-stack..."
helm install monitoring prometheus-community/kube-prometheus-stack \
  -n monitoring

echo ""
echo "Monitoring Stack Installed Successfully."