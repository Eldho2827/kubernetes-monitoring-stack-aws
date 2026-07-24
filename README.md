\# 🚀 Kubernetes Monitoring Stack on AWS



!\[Kubernetes](https://img.shields.io/badge/Kubernetes-v1.30-blue?logo=kubernetes)

!\[AWS](https://img.shields.io/badge/AWS-EC2-orange?logo=amazonaws)

!\[Prometheus](https://img.shields.io/badge/Prometheus-Monitoring-orange?logo=prometheus)

!\[Grafana](https://img.shields.io/badge/Grafana-Dashboard-F46800?logo=grafana)

!\[Helm](https://img.shields.io/badge/Helm-v3-0F1689?logo=helm)

!\[Calico](https://img.shields.io/badge/Calico-VXLAN-326CE5)



A production-ready Kubernetes monitoring solution deployed on \*\*AWS EC2\*\* using \*\*Kubespray\*\*, \*\*Calico\*\*, \*\*Helm\*\*, \*\*Prometheus\*\*, \*\*Grafana\*\*, and \*\*Alertmanager\*\*.



\---



\# 📖 Project Overview



This project demonstrates how to deploy a highly available Kubernetes cluster on AWS and implement a complete monitoring stack capable of collecting metrics, visualizing infrastructure health, and generating alerts.



The deployment uses:



\- Kubespray

\- Kubernetes v1.30

\- Calico VXLAN Networking

\- Prometheus

\- Grafana

\- Alertmanager

\- kube-state-metrics

\- Node Exporter



\---



\# 🏗 Architecture



> Architecture diagram



!\[Architecture](diagrams/aws-kubernetes-monitoring.png)



\---



\# ☁ AWS Infrastructure



| Resource | Details |

|----------|---------|

| Cloud Provider | AWS |

| Instances | 3 Ubuntu 24.04 EC2 |

| Kubernetes | Kubespray |

| Runtime | containerd |

| CNI | Calico VXLAN |

| Monitoring | kube-prometheus-stack |

| Package Manager | Helm |



\---



\# 🖥 Cluster Topology



| Node | Role |

|------|------|

| node1 | Control Plane |

| node2 | Worker |

| node3 | Worker |



\---



\# 📦 Monitoring Stack



\- Prometheus

\- Grafana

\- Alertmanager

\- Node Exporter

\- kube-state-metrics



\---



\# 📊 Features



\- Kubernetes Cluster Monitoring

\- Infrastructure Monitoring

\- CPU Usage

\- Memory Usage

\- Node Health

\- Pod Health

\- Cluster Metrics

\- Alerting

\- Grafana Dashboards

\- Prometheus Metrics

\- Node Exporter Metrics



\---



\# 📸 Project Screenshots



\## AWS Infrastructure



!\[Instances](screenshots/Instances.png)



!\[Security Groups](screenshots/security%20groups.png)



\---



\## Kubespray Deployment



!\[Passwordless SSH](screenshots/passwordless%20ssh.png)



!\[Ansible Installed](screenshots/Ansible%20installed.png)



!\[Ansible Ping](screenshots/Ansible%20ping%20success.png)



!\[Inventory](screenshots/final%20inventory.png)



!\[Deployment](screenshots/kubespray%20deployment.png)



\---



\## Kubernetes Cluster



!\[Nodes Ready](screenshots/Nodes%20ready.png)



!\[System Pods](screenshots/system%20pods.png)



!\[Namespaces](screenshots/Namespace.png)



!\[Monitoring Pods](screenshots/monitoring%20pods%20running.png)



\---



\## Monitoring



!\[NodePort](screenshots/Nodeport%20monitoring.png)



!\[Grafana Dashboard](screenshots/Grafana%20dashboard.png)



!\[CPU Memory](screenshots/grafana%20cpu%20memory.png)



\---



\# ⚙ Installation



Detailed installation guide:



```

docs/Installation.md

```



\---



\# 🛠 Troubleshooting



Common issues encountered:



\- DNS Resolution Failure

\- Calico VXLAN Connectivity

\- Grafana → Prometheus Connection

\- Pod-to-Pod Networking

\- CoreDNS Timeout



See:



```

docs/Troubleshooting.md

```



\---



\# 📚 Documentation



\- docs/Architecture.md

\- docs/Installation.md

\- docs/Troubleshooting.md

\- docs/Lessons-Learned.md



\---



\# 🎯 Skills Demonstrated



\- AWS EC2

\- Linux

\- Kubernetes

\- Kubespray

\- Helm

\- Prometheus

\- Grafana

\- Alertmanager

\- Calico Networking

\- VXLAN

\- Containerd

\- Networking

\- Monitoring

\- Troubleshooting



\---



\# 🚀 Future Improvements



\- Ingress Controller

\- Loki

\- Tempo

\- Persistent Storage

\- GitHub Actions

\- ArgoCD

\- TLS using cert-manager



\---



\# 👨‍💻 Author



\*\*Eldho Sabu\*\*



AWS \& DevOps Engineer



GitHub:



https://github.com/Eldho2827



LinkedIn:



https://linkedin.com/in/eldhosabu08



\---



\# 📄 License



This project is licensed under the MIT License.

