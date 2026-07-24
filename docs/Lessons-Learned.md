\# Lessons Learned



\## Project Summary



This project provided hands-on experience in deploying and monitoring a production-ready Kubernetes cluster on AWS using Kubespray and the kube-prometheus-stack.



\---



\## Technical Skills Gained



\### Kubernetes



\- Cluster deployment using Kubespray

\- Node management

\- Pods

\- Services

\- Namespaces

\- Deployments

\- DaemonSets

\- StatefulSets



\---



\### Monitoring



\- Prometheus

\- Grafana

\- Alertmanager

\- kube-state-metrics

\- Node Exporter



\---



\### Networking



\- Calico CNI

\- VXLAN Overlay Networking

\- kube-proxy

\- CoreDNS

\- ClusterIP

\- NodePort

\- DNS resolution



\---



\### AWS



\- EC2

\- VPC

\- Security Groups

\- SSH

\- Networking

\- Linux Administration



\---



\## Biggest Challenge



The most significant issue encountered during the project was a networking failure affecting DNS resolution.



Pods scheduled on Worker Node 3 could not communicate with CoreDNS, causing Grafana to lose connectivity with Prometheus.



After systematic troubleshooting, the root cause was identified as missing UDP port \*\*4789\*\* in the AWS Security Group, which blocked Calico VXLAN traffic.



Allowing the required port restored pod-to-pod communication and resolved all monitoring issues.



\---



\## Key Takeaways



\- Kubernetes networking should be verified before debugging applications.

\- Understanding CNI plugins is essential for troubleshooting cluster communication.

\- Monitoring is only reliable when networking and DNS are functioning correctly.

\- AWS Security Groups have a direct impact on Kubernetes overlay networking.

\- A structured troubleshooting approach significantly reduces debugging time.



\---



\## Future Improvements



\- Deploy Ingress Controller

\- Enable TLS using cert-manager

\- Configure Persistent Storage

\- Add Loki for log aggregation

\- Integrate Tempo for distributed tracing

\- Configure remote Prometheus storage

\- Add GitHub Actions for CI/CD

