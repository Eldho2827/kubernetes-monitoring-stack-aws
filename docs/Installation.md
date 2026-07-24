\# Installation Guide



\## Prerequisites



\- AWS Account

\- 3 Ubuntu 24.04 EC2 Instances

\- Security Groups Configured

\- SSH Key Pair

\- Ansible

\- Python 3

\- Kubespray

\- kubectl

\- Helm



\---



\## Infrastructure



| Node | Role |

|------|------|

| node1 | Control Plane |

| node2 | Worker |

| node3 | Worker |



\---



\## Clone Kubespray



```bash

git clone https://github.com/kubernetes-sigs/kubespray.git

cd kubespray

```



Install dependencies



```bash

pip install -r requirements.txt

```



\---



\## Configure Inventory



Create your inventory.



Configure:



\- inventory.ini

\- hosts.yaml



\---



\## Deploy Cluster



```bash

ansible-playbook -i inventory/mycluster/inventory.ini \\

cluster.yml \\

\-b \\

\-v

```



\---



\## Verify Cluster



```bash

kubectl get nodes



kubectl get pods -A

```



\---



\## Install Monitoring Stack



```bash

helm repo add prometheus-community \\

https://prometheus-community.github.io/helm-charts



helm repo update



helm install monitoring \\

prometheus-community/kube-prometheus-stack \\

\-n monitoring \\

\--create-namespace

```



\---



\## Verify Installation



```bash

kubectl get pods -n monitoring



kubectl get svc -n monitoring

```



\---



\## Access Grafana



```bash

kubectl get svc -n monitoring

```



Access Grafana through the NodePort service.



\---



\## Default Credentials



Username



```

admin

```



Password



Retrieve using:



```bash

kubectl get secret \\

\-n monitoring \\

monitoring-grafana \\

\-o jsonpath="{.data.admin-password}" | base64 -d

```

