# mprove-helm-charts

<!-- ## Kubernetes cluster -->

<!-- ## DNS record -->

<!-- ## Helm -->

<!-- ## My values -->

## Install

```
helm install -f my-values.yaml mprove oci://ghcr.io/mprove-io/mprove-helm-charts/mprove --version 0.0.19 -n mprove
```

## Upgrade

```
helm upgrade -f my-values.yaml mprove oci://ghcr.io/mprove-io/mprove-helm-charts/mprove --version 2.0.0 -n mprove
```

## Uninstall

```
helm uninstall mprove -n mprove
```

## Configuration

| Parameter                                                              | Default                                      | Description |
| ---------------------------------------------------------------------- | -------------------------------------------- | ----------- |
| **ingress:**                                                           |                                              |             |
| &nbsp;&nbsp;enabled:                                                   | false                                        |             |
<tr></tr>
| &nbsp;&nbsp;httpsRedirect:                                             | false                                        |             |
<tr></tr>
| &nbsp;&nbsp;host:                                                      | unk.example.com                              |             |
| &nbsp;&nbsp;acmeEmail:                                                 | unk@example.com                              |             |
| &nbsp;&nbsp;certProdSecretName:                                        | cert-prod-secret                             |             |
| &nbsp;&nbsp;certStagingSecretName:                                     | cert-staging-secret                          |             |
| **kubeSystemNodeSetup:**                                               |                                              |             |
| &nbsp;&nbsp;enabled:                                                   | true                                         |             |
| **db:**                                                                |                                              |             |
| &nbsp;&nbsp;enabled:                                                   | true                                         |             |
| &nbsp;&nbsp;image:                                                     | mysql                                        |             |
| &nbsp;&nbsp;tag:                                                       | 8.0.29                                       |             |
| &nbsp;&nbsp;name:                                                      | db                                           |             |
| &nbsp;&nbsp;storage:                                                   | 10Gi                                         |             |
| &nbsp;&nbsp;envsSecretName:                                            | db-envs                                      |             |
| &nbsp;&nbsp;createEnvsSecret:                                          | true                                         |             |
| &nbsp;&nbsp;envs:                                                      |                                              |             |
| &nbsp;&nbsp;&nbsp;&nbsp;MYSQL_ROOT_PASSWORD:                           | mysqlpass                                    |             |
| &nbsp;&nbsp;&nbsp;&nbsp;MYSQL_DATABASE:                                | mprovedb                                     |             |
| &nbsp;&nbsp;&nbsp;&nbsp;MYSQL_USERNAME:                                | root                                         |             |
| **rabbit:**                                                            |                                              |             |
| &nbsp;&nbsp;enabled:                                                   | true                                         |             |
| &nbsp;&nbsp;image:                                                     | rabbitmq                                     |             |
| &nbsp;&nbsp;tag:                                                       | 3.10.6-management                            |             |
| &nbsp;&nbsp;name:                                                      | rabbit                                       |             |
| &nbsp;&nbsp;envsSecretName:                                            | rabbit-envs                                  |             |
| &nbsp;&nbsp;createEnvsSecret:                                          | true                                         |             |
| &nbsp;&nbsp;envs:                                                      |                                              |             |
| &nbsp;&nbsp;&nbsp;&nbsp;RABBITMQ_DEFAULT_USER:                         | rabbituser                                   |             |
| &nbsp;&nbsp;&nbsp;&nbsp;RABBITMQ_DEFAULT_PASS:                         | rabbitpass                                   |             |
| &nbsp;&nbsp;&nbsp;&nbsp;RABBITMQ_ERLANG_COOKIE:                        | rabbitcookie                                 |             |
| **dwhPostgres:**                                                       |                                              |             |
| &nbsp;&nbsp;enabled:                                                   | true                                         |             |
| &nbsp;&nbsp;image:                                                     | ghcr.io/mprove-io/mprove-dwh-postgres        |             |
| &nbsp;&nbsp;name:                                                      | dwh-postgres                                 |             |
| &nbsp;&nbsp;storage:                                                   | 2Gi                                          |             |
| &nbsp;&nbsp;envsSecretName:                                            | dwh-postgres-envs                            |             |
| &nbsp;&nbsp;createEnvsSecret:                                          | true                                         |             |
| &nbsp;&nbsp;envs:                                                      |                                              |             |
| &nbsp;&nbsp;&nbsp;&nbsp;PGDATA:                                        | /var/lib/postgresql/data/pgdata              |             |
| &nbsp;&nbsp;&nbsp;&nbsp;POSTGRES_PASSWORD:                             | postgrespass                                 |             |
| **dwhClickhouse:**                                                     |                                              |             |
| &nbsp;&nbsp;enabled:                                                   | true                                         |             |
| &nbsp;&nbsp;image:                                                     | ghcr.io/mprove-io/mprove-dwh-clickhouse      |             |
| &nbsp;&nbsp;name:                                                      | dwh-clickhouse                               |             |
| &nbsp;&nbsp;storage:                                                   | 2Gi                                          |             |
| &nbsp;&nbsp;storageLogs:                                               | 2Gi                                          |             |
| &nbsp;&nbsp;envsSecretName:                                            | dwh-clickhouse-envs                          |             |
| &nbsp;&nbsp;createEnvsSecret:                                          | true                                         |             |
| &nbsp;&nbsp;envs:                                                      |                                              |             |
| &nbsp;&nbsp;&nbsp;&nbsp;CLICKHOUSE_DB:                                 | c_db                                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;CLICKHOUSE_USER:                               | c_user                                       |             |
| &nbsp;&nbsp;&nbsp;&nbsp;CLICKHOUSE_PASSWORD:                           | clickhousepass                               |             |
| **front:**                                                             |                                              |             |
| &nbsp;&nbsp;image:                                                     | ghcr.io/mprove-io/mprove-front               |             |
| &nbsp;&nbsp;name:                                                      | front                                        |             |
| **disk:**                                                              |                                              |             |
| &nbsp;&nbsp;image:                                                     | ghcr.io/mprove-io/mprove-disk                |             |
| &nbsp;&nbsp;name:                                                      | disk                                         |             |
| &nbsp;&nbsp;storage:                                                   | 2Gi                                          |             |
| &nbsp;&nbsp;envsSecretName:                                            | disk-envs                                    |             |
| &nbsp;&nbsp;createEnvsSecret:                                          | true                                         |             |
| &nbsp;&nbsp;envs:                                                      |                                              |             |
| &nbsp;&nbsp;&nbsp;&nbsp;NODE_ENV:                                      | production                                   |             |
| &nbsp;&nbsp;&nbsp;&nbsp;DISK_ENV:                                      | PROD                                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;DISK_ORGANIZATIONS_PATH:                       | /root/mprove_data/organizations              |             |
| &nbsp;&nbsp;&nbsp;&nbsp;DISK_RABBIT_PROTOCOL:                          | amqp                                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;DISK_RABBIT_USER:                              | rabbituser                                   |             |
| &nbsp;&nbsp;&nbsp;&nbsp;DISK_RABBIT_PASS:                              | rabbitpass                                   |             |
| &nbsp;&nbsp;&nbsp;&nbsp;DISK_RABBIT_HOST:                              | rabbit                                       |             |
| &nbsp;&nbsp;&nbsp;&nbsp;DISK_RABBIT_PORT:                              | 5672                                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;DISK_LOG_IS_COLOR:                             | 'TRUE'                                       |             |
| &nbsp;&nbsp;&nbsp;&nbsp;DISK_LOG_RESPONSE_ERROR:                       | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;DISK_LOG_RESPONSE_OK:                          | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;DISK_LOG_ON_SENDER:                            | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;DISK_LOG_ON_RESPONSER:                         | 'TRUE'                                       |             |
| **blockmlMainWorker:**                                                 |                                              |             |
| &nbsp;&nbsp;name:                                                      | blockml-main-worker                          |             |
| &nbsp;&nbsp;replicas:                                                  | 1                                            |             |
| **blockmlCommon:**                                                     |                                              |             |
| &nbsp;&nbsp;image:                                                     | ghcr.io/mprove-io/mprove-blockml             |             |
| &nbsp;&nbsp;envsSecretName:                                            | blockml-common-envs                          |             |
| &nbsp;&nbsp;createEnvsSecret:                                          | true                                         |             |
| &nbsp;&nbsp;envs:                                                      |                                              |             |
| &nbsp;&nbsp;&nbsp;&nbsp;NODE_ENV:                                      | production                                   |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_ENV:                                   | PROD                                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_RABBIT_PROTOCOL:                       | amqp                                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_RABBIT_USER:                           | rabbituser                                   |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_RABBIT_PASS:                           | rabbitpass                                   |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_RABBIT_HOST:                           | rabbit                                       |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_RABBIT_PORT:                           | 5672                                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_LOG_IO:                                | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_LOG_FUNC:                              | ALL                                          |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_COPY_LOGS_TO_MODELS:                   | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_LOGS_PATH:                             | /root/mprove_data/blockml-logs               |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_IS_SINGLE:                             | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_IS_MAIN:                               | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_IS_WORKER:                             | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_CONCURRENCY_LIMIT:                     | 0                                            |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_LOG_IS_COLOR:                          | 'TRUE'                                       |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_LOG_RESPONSE_ERROR:                    | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_LOG_RESPONSE_OK:                       | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_LOG_ON_SENDER:                         | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BLOCKML_LOG_ON_RESPONSER:                      | 'TRUE'                                       |             |
| **backend:**                                                           |                                              |             |
| &nbsp;&nbsp;name:                                                      | backend                                      |             |
| &nbsp;&nbsp;replicas:                                                  | 1                                            |             |
| **backendScheduler:**                                                  |                                              |             |
| &nbsp;&nbsp;name:                                                      | backend-scheduler                            |             |
| **backendCommon:**                                                     |                                              |             |
| &nbsp;&nbsp;image:                                                     | ghcr.io/mprove-io/mprove-backend             |             |
| &nbsp;&nbsp;envsSecretName:                                            | backend-common-envs                          |             |
| &nbsp;&nbsp;secretFilesSecretName:                                     | backend-common-secret-files                  |             |
| &nbsp;&nbsp;createEnvsSecret:                                          | true                                         |             |
| &nbsp;&nbsp;createSecretFilesSecret:                                   | true                                         |             |
| &nbsp;&nbsp;firstProjectBigqueryCredentials:                           | {}                                           |             |
| &nbsp;&nbsp;firstProjectRemotePrivateKey:                              | ''                                           |             |
| &nbsp;&nbsp;firstProjectRemotePublicKey:                               | ''                                           |             |
| &nbsp;&nbsp;envs:                                                      |                                              |             |
| &nbsp;&nbsp;&nbsp;&nbsp;NODE_ENV:                                      | production                                   |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_ENV:                                   | PROD                                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_MYSQL_DATABASE:                        | mprovedb                                     |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_MYSQL_PASSWORD:                        | mysqlpass                                    |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_MYSQL_HOST:                            | db                                           |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_MYSQL_PORT:                            | 3306                                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_MYSQL_USERNAME:                        | root                                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_RABBIT_PROTOCOL:                       | amqp                                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_RABBIT_USER:                           | rabbituser                                   |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_RABBIT_PASS:                           | rabbitpass                                   |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_RABBIT_HOST:                           | rabbit                                       |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_RABBIT_PORT:                           | 5672                                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_BIGQUERY_PATH:                         | secrets/bigquery-test.json                   |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_JWT_SECRET:                            | jwtsecret                                    |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_SPECIAL_KEY:                           | specialkey                                   |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_ALLOW_TEST_ROUTES:                     | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_USER_EMAIL:                      | user@example.com                             |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_USER_PASSWORD:                   | userpass                                     |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_ORG_ID:                          | AWNCAHWLFQTQJYCH3ZSE                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_PROJECT_ID:                      | DXYE72ODCP5LWPWH2EXQ                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_PROJECT_REMOTE_TYPE:             | Managed                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_PROJECT_GIT_URL:                 |                                              |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_PROJECT_PRIVATE_KEY_PATH:        | secrets/first-project-remote-private-key.pem |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_PROJECT_PUBLIC_KEY_PATH:         | secrets/first-project-remote-public-key.pem  |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_PROJECT_SEED_CONNECTIONS:        | 'TRUE'                                       |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_PROJECT_DWH_POSTGRES_PASSWORD:   | postgrespass                                 |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_PROJECT_DWH_CLICKHOUSE_PASSWORD: | clickhousepass                               |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_PROJECT_DWH_SNOWFLAKE_ACCOUNT:   | unk                                          |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_PROJECT_DWH_SNOWFLAKE_WAREHOUSE: | unk                                          |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_PROJECT_DWH_SNOWFLAKE_USERNAME:  | unk                                          |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_FIRST_PROJECT_DWH_SNOWFLAKE_PASSWORD:  | unk                                          |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_REGISTER_ONLY_INVITED_USERS:           | 'TRUE'                                       |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_HOST_URL:                              | unk                                          |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_SEND_EMAIL_FROM_NAME:                  | Example                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_SEND_EMAIL_FROM_ADDRESS:               | no-reply@example.com                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_EMAIL_TRANSPORT:                       | SMTP                                         |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_MAILGUN_ACTIVE_API_KEY:                | unk                                          |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_MAILGUN_DOMAIN:                        | unk                                          |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_SMTP_HOST:                             | unk                                          |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_SMTP_PORT:                             | 465                                          |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_SMTP_SECURE:                           | 'TRUE'                                       |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_SMTP_AUTH_USER:                        | unk                                          |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_SMTP_AUTH_PASSWORD:                    | unk                                          |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_LOG_IS_COLOR:                          | 'TRUE'                                       |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_LOG_RESPONSE_ERROR:                    | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_LOG_RESPONSE_OK:                       | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_LOG_ON_SENDER:                         | 'FALSE'                                      |             |
| &nbsp;&nbsp;&nbsp;&nbsp;BACKEND_LOG_ON_RESPONSER:                      | 'TRUE'                                       |             |
