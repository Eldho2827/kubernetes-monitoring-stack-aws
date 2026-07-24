\# Architecture



\## Overview



This project implements a production-ready Kubernetes monitoring solution on AWS using Kubespray, Prometheus, Grafana, Alertmanager, and Calico.



\---



\## Infrastructure



\- Cloud Provider: AWS

\- Kubernetes Distribution: Kubespray

\- Container Runtime: containerd

\- CNI: Calico (VXLAN)

\- Monitoring: kube-prometheus-stack

\- Package Manager: Helm



\---



\## Cluster Topology



| Node | Role |

|------|------|

| node1 | Kubernetes Control Plane |

| node2 | Worker Node |

| node3 | Worker Node |



\---



\## Components



\### Kubernetes



\- kube-apiserver

\- kube-controller-manager

\- kube-scheduler

\- kube-proxy

\- CoreDNS



\### Networking



\- Calico CNI

\- VXLAN Overlay Network



\### Monitoring



\- Prometheus

\- Grafana

\- Alertmanager

\- kube-state-metrics

\- Node Exporter



\---



\## Monitoring Flow



Node Exporter

↓

Prometheus

↓

Grafana Dashboards

↓

Alertmanager



\---



\## Project Architecture



See:



```



diagrams/aws-kubernetes-monitoring.png



```



\---



\## Screenshots



See the `screenshots/` folder for deployment and monitoring screenshots.

