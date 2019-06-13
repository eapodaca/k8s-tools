# K8S tools

## Deploy K8S dashboard

1. `./deploy-dashboard.sh`
2. `./get-token.sh`
3. `kubectl proxy`
4. Navigate to proxied [dashboard](http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/).
5. authenticate with token printed by step 2.

## Expose K8S Dashboard externally

1. `kubectl -n kube-system edit service kubernetes-dashboard`
2. Update spec.type from `ClusterIP` to `NodePort`
3. Determine the host port that was bound for the dashboard: `kubectl -n kube-system get service kubernetes-dashboard`
4. Navigate to https://<master-node-ip>:<host-port>
5. Authenticate using token from `./get-token.sh`