#!/bin/bash
kubectl --insecure-skip-tls-verify apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml
kubectl --insecure-skip-tls-verify apply -f ./admin-user.yaml
kubectl --insecure-skip-tls-verify apply -f ./dashboard-ingress.yaml
echo "dashboard at: http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/"
echo "use `kubectl -n kube-system edit service kubernetes-dashboard` to update spec.type to "NodePort" to make this cluster externally accessible."
