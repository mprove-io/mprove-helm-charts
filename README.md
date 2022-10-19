# mprove-helm-charts

## Install

helm repo add mprove-helm-charts oci://ghcr.io/mprove-io/mprove-helm-charts

helm install -f my-values.yaml mprove mprove-helm-charts/mprove --version 0.0.15 -n mprove

## Uninstall

helm uninstall mprove -n mprove