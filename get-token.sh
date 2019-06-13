#!/bin/bash
kubectl --insecure-skip-tls-verify -n kube-system describe secret $(kubectl --insecure-skip-tls-verify -n kube-system get secret | grep admin-user | awk '{print $1}')
