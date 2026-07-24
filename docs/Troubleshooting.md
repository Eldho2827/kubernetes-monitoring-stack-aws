\# Troubleshooting Guide



\## Issue 1: Grafana Could Not Connect to Prometheus



\### Symptoms



\- Grafana displayed:

&#x20; - Unable to connect with Prometheus

&#x20; - Bad Gateway

\- Dashboards showed "No Data"



\### Root Cause



DNS resolution failed on Worker Node 3 because Calico VXLAN traffic was blocked by the AWS Security Group.



\### Solution



\- Allowed UDP port \*\*4789\*\* between all Kubernetes nodes.

\- Verified VXLAN tunnel interface (`vxlan.calico`).

\- Confirmed pod-to-pod communication.

\- Restarted the affected workloads.



\---



\## Issue 2: CoreDNS Timeout



\### Symptoms



```

nslookup kubernetes.default.svc.cluster.local



;; connection timed out

```



\### Root Cause



Overlay networking between nodes was interrupted.



\### Solution



\- Verified kube-proxy

\- Verified CoreDNS endpoints

\- Checked Calico routing

\- Allowed VXLAN traffic (UDP 4789)



\---



\## Issue 3: Pod-to-Pod Communication Failed



\### Symptoms



```

ping 10.233.x.x



100% packet loss

```



\### Root Cause



VXLAN encapsulated packets were blocked by the AWS Security Group.



\### Solution



Added an inbound rule:



| Protocol | Port | Source |

|----------|------|--------|

| UDP | 4789 | Kubernetes Security Group |



\---



\## Issue 4: Prometheus Target Down



\### Checks



```bash

kubectl get pods -n monitoring



kubectl get svc -n monitoring



kubectl get endpoints -A

```



\---



\## Useful Commands



```bash

kubectl get nodes



kubectl get pods -A



kubectl get svc -A



kubectl get endpoints -A



kubectl logs POD\_NAME



kubectl describe pod POD\_NAME

```



\---



\## Lessons Learned



\- AWS Security Groups directly affect Kubernetes networking.

\- Calico VXLAN requires UDP 4789.

\- DNS issues are often caused by underlying network connectivity problems.

\- Always verify pod-to-pod communication before troubleshooting applications.

