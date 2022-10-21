# mprove-helm-charts

## Kubernetes cluster

## DNS record

## Helm

## My values

## Install

```
helm install -f my-values.yaml mprove oci://ghcr.io/mprove-io/mprove-helm-charts/mprove --version 0.0.18 -n mprove
```

## Upgrade

```
helm upgrade -f values/v1.yaml mprove oci://ghcr.io/mprove-io/mprove-helm-charts/mprove --version 2.0.0 -n mprove
```

## Uninstall

```
helm uninstall mprove -n mprove
```

## Configuration

| Parameter                                    | Default             | Description |
| -------------------------------------------- | ------------------- | ----------- |
| ingress:                                     |                     |             |
| &nbsp;&nbsp;enabled:                         | false               |             |
| &nbsp;&nbsp;httpsRedirect:                   | false               |             |
| &nbsp;&nbsp;host:                            | unk.example.com     |             |
| &nbsp;&nbsp;acmeEmail:                       | unk@example.com     |             |
| &nbsp;&nbsp;certProdSecretName:              | cert-prod-secret    |             |
| &nbsp;&nbsp;certStagingSecretName:           | cert-staging-secret |             |
| db:                                          |                     |             |
| &nbsp;&nbsp;enabled:                         | true                |             |
| &nbsp;&nbsp;image:                           | mysql               |             |
| &nbsp;&nbsp;tag:                             | 8.0.29              |             |
| &nbsp;&nbsp;name:                            | db                  |             |
| &nbsp;&nbsp;storage:                         | 10Gi                |             |
| &nbsp;&nbsp;envsSecretName:                  | db-envs             |             |
| &nbsp;&nbsp;createEnvsSecret:                | true                |             |
| &nbsp;&nbsp;envs:                            |                     |             |
| &nbsp;&nbsp;&nbsp;&nbsp;MYSQL_ROOT_PASSWORD: | mysqlpass           |             |
| &nbsp;&nbsp;&nbsp;&nbsp;MYSQL_DATABASE:      | mprovedb            |             |
| &nbsp;&nbsp;&nbsp;&nbsp;MYSQL_USERNAME:      | root                |             |