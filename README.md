# mprove-helm-charts

Mprove helm chart is in "mprove" directory. 

### Prerequisites
  - Kubernetes cluster 
  - Kubectl
  - Helm
  - Server with 4 CPU and 8GB RAM (minimum)

### Values

Provide custom values to override default [mprove/values.yaml](https://github.com/mprove-io/mprove-helm-charts/blob/master/mprove/values.yaml)

Values example - [values-mprove-example-minimal.yaml](https://github.com/mprove-io/mprove-helm-charts/blob/master/values-mprove-example-minimal.yaml)

<!-- [mprove/README.md](https://github.com/mprove-io/mprove-helm-charts/blob/master/mprove/README.md) -->

Create **values-mprove.yaml** file:
```
curl 'https://raw.githubusercontent.com/mprove-io/mprove-helm-charts/master/values-mprove-example-minimal.yaml' > values-mprove.yaml
```

Replace values in the created file (manually).

### Install Mprove Helm Chart

Install

```
kubectl create namespace mprove

# Replace <CHART_VERSION> with release from https://github.com/mprove-io/mprove-helm-charts/releases
helm install -f values-mprove.yaml mprove oci://ghcr.io/mprove-io/mprove-helm-charts/mprove --version <CHART_VERSION> -n mprove
```

Upgrade

```
# Replace <CHART_VERSION> with release from https://github.com/mprove-io/mprove-helm-charts/releases
helm upgrade -f values-mprove.yaml mprove oci://ghcr.io/mprove-io/mprove-helm-charts/mprove --version <CHART_VERSION> -n mprove
```

Uninstall

```
helm uninstall mprove -n mprove
```
