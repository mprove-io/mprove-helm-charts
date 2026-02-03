# mprove

![Version: 11.0.98](https://img.shields.io/badge/Version-11.0.98-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 11.0.98](https://img.shields.io/badge/AppVersion-11.0.98-informational?style=flat-square)

Mprove Helm Chart

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| imagePullSecrets.enabled | bool | `false` |  |
| imagePullSecrets.name | string | `"secretname"` |  |
| clusterIssuer.enabled | bool | `false` |  |
| clusterIssuer.acmeEmail | string | `"real-email@example.com"` |  |
| ingressMprove.enabled | bool | `false` |  |
| ingressMprove.host | string | `"host.example.com"` | *Replace* |
| ingressMprove.tlsSecretName | string | `"host.example.com-tls"` | *Replace* |
| db.enabled | bool | `true` |  |
| db.createEnvsSecret | bool | `true` |  |
| db.image | string | `"postgres"` |  |
| db.tag | float | `18.1` |  |
| db.annotations."secret.reloader.stakater.com/reload" | string | `"secret-db-postgres"` |  |
| db.name | string | `"db"` |  |
| db.affinity | object | `{}` |  |
| db.pvcLabels | object | `{}` |  |
| db.storage | string | `"10Gi"` |  |
| db.storageClassName | string | `""` |  |
| db.envsSecretName | string | `"secret-db-postgres"` |  |
| db.envs.PGPORT | int | `5432` |  |
| db.envs.POSTGRES_DB | string | `"mprove_main"` |  |
| db.envs.POSTGRES_USER | string | `"mprove_user"` |  |
| db.envs.POSTGRES_PASSWORD | string | `"dbuserpass"` | *Replace* |
| valkey.enabled | bool | `true` |  |
| valkey.createEnvsSecret | bool | `true` |  |
| valkey.image | string | `"valkey/valkey"` |  |
| valkey.tag | string | `"8.1.4"` |  |
| valkey.annotations."secret.reloader.stakater.com/reload" | string | `"secret-valkey"` |  |
| valkey.name | string | `"valkey"` |  |
| valkey.affinity | object | `{}` |  |
| valkey.envsSecretName | string | `"secret-valkey"` |  |
| valkey.envs.VALKEY_PASSWORD | string | `"valkeypass"` | *Replace* |
| calcPostgres.enabled | bool | `true` |  |
| calcPostgres.createInitSecret | bool | `true` |  |
| calcPostgres.createEnvsSecret | bool | `true` |  |
| calcPostgres.image | string | `"postgres"` |  |
| calcPostgres.tag | float | `18.1` |  |
| calcPostgres.annotations."secret.reloader.stakater.com/reload" | string | `"secret-calc-postgres,secret-calc-postgres-init"` |  |
| calcPostgres.name | string | `"calc-postgres"` |  |
| calcPostgres.affinity | object | `{}` |  |
| calcPostgres.storage | string | `"2Gi"` |  |
| calcPostgres.storageClassName | string | `""` |  |
| calcPostgres.initSecretName | string | `"secret-calc-postgres-init"` |  |
| calcPostgres.envsSecretName | string | `"secret-calc-postgres"` |  |
| calcPostgres.envs.PGPORT | int | `5437` |  |
| calcPostgres.envs.CALC_USER | string | `"calc_user"` |  |
| calcPostgres.envs.CALC_PASSWORD | string | `"calcPass"` | *Replace* |
| calcPostgres.envs.POSTGRES_PASSWORD | string | `"calcPostgresPass"` | *Replace* |
| backend.name | string | `"backend"` |  |
| backend.replicas | int | `1` |  |
| backend.affinity | object | `{}` |  |
| backendScheduler.enabled | bool | `true` |  |
| backendScheduler.name | string | `"backend-scheduler"` |  |
| backendScheduler.affinity | object | `{}` |  |
| backendCommon.createEnvsSecret | bool | `true` |  |
| backendCommon.createExtraSecret | bool | `true` |  |
| backendCommon.image | string | `"ghcr.io/mprove-io/mprove-backend"` |  |
| backendCommon.annotations."secret.reloader.stakater.com/reload" | string | `"secret-backend,secret-backend-extra"` |  |
| backendCommon.envsSecretName | string | `"secret-backend"` |  |
| backendCommon.extraSecretName | string | `"secret-backend-extra"` |  |
| backendCommon.extra.demoProjectBigqueryCredentials | string | `"{}\n"` |  |
| backendCommon.extra.demoProjectGoogleApiCredentials | string | `"{}\n"` |  |
| backendCommon.extra.demoProjectRemotePrivateKeyEncrypted | string | `"''\n"` |  |
| backendCommon.extra.demoProjectRemotePublicKey | string | `""` |  |
| backendCommon.envs.TURBO_TELEMETRY_DISABLED | int | `1` |  |
| backendCommon.envs.IS_TELEMETRY_ENABLED | string | `"FALSE"` |  |
| backendCommon.envs.TELEMETRY_ENDPOINT | string | `""` |  |
| backendCommon.envs.TELEMETRY_HYPERDX_INGEST_API_KEY | string | `""` |  |
| backendCommon.envs.OTEL_LOG_LEVEL | string | `"info"` |  |
| backendCommon.envs.BACKEND_AES_KEY | string | `"aeskey"` | Replace with your generated AES KEY - see https://github.com/mprove-io/mprove/blob/master/tools/utils/make-aes-key.ts |
| backendCommon.envs.BACKEND_PREV_AES_KEY | string | `""` | Update with old KEY when you rotate AES KEY |
| backendCommon.envs.BACKEND_AES_KEY_TAG | id for current AES key | `1` | increment when you rotate AES KEY |
| backendCommon.envs.BACKEND_PREV_AES_KEY_TAG | id for previous AES key | `0` | increment when you rotate AES KEY |
| backendCommon.envs.BACKEND_TOTAL_DISK_SHARDS | int | `1` |  |
| backendCommon.envs.BACKEND_RPC_DISK_TIMEOUT_MS | int | `60000` |  |
| backendCommon.envs.BACKEND_RPC_BLOCKML_TIMEOUT_MS | int | `30000` |  |
| backendCommon.envs.BACKEND_ALLOW_TEST_ROUTES | string | `"FALSE"` |  |
| backendCommon.envs.BACKEND_ALLOW_USERS_TO_CREATE_ORGANIZATIONS | string | `"FALSE"` |  |
| backendCommon.envs.BACKEND_CALC_POSTGRES_HOST | string | `"calc-postgres"` |  |
| backendCommon.envs.BACKEND_CALC_POSTGRES_PORT | int | `5437` |  |
| backendCommon.envs.BACKEND_CALC_POSTGRES_USERNAME | string | `"calc_user"` |  |
| backendCommon.envs.BACKEND_CALC_POSTGRES_PASSWORD | string | `"calcPass"` | *Replace* |
| backendCommon.envs.BACKEND_EMAIL_TRANSPORT | string | `"SMTP"` |  |
| backendCommon.envs.BACKEND_ENV | string | `"PROD"` |  |
| backendCommon.envs.BACKEND_HOST_URL | string | `"https://real-host.example.com"` | *Replace* |
| backendCommon.envs.BACKEND_IS_ENCRYPT_DB | string | `"TRUE"` |  |
| backendCommon.envs.BACKEND_IS_ENCRYPT_METADATA | string | `"FALSE"` |  |
| backendCommon.envs.BACKEND_IS_POSTGRES_TLS | string | `"FALSE"` |  |
| backendCommon.envs.BACKEND_JWT_SECRET | string | `"jwtsecret"` | *Replace* |
| backendCommon.envs.BACKEND_LOG_DRIZZLE_POSTGRES | string | `"FALSE"` |  |
| backendCommon.envs.BACKEND_LOG_IS_JSON | string | `"TRUE"` |  |
| backendCommon.envs.BACKEND_LOG_RESPONSE_ERROR | string | `"TRUE"` |  |
| backendCommon.envs.BACKEND_LOG_RESPONSE_OK | string | `"FALSE"` |  |
| backendCommon.envs.BACKEND_LOG_THROTTLE_TRACKER | string | `"FALSE"` |  |
| backendCommon.envs.BACKEND_MPROVE_ADMIN_EMAIL | string | `"real-email@example.com"` | *Replace* |
| backendCommon.envs.BACKEND_MPROVE_ADMIN_INITIAL_PASSWORD | string | `"userpass"` | *Replace* |
| backendCommon.envs.BACKEND_POSTGRES_DATABASE_URL | string | `"postgres://mprove_user:dbuserpass@db:5435/mprove_main"` | *Replace (at least dbuserpass part)* |
| backendCommon.envs.BACKEND_REGISTER_ONLY_INVITED_USERS | string | `"TRUE"` |  |
| backendCommon.envs.BACKEND_REQUEST_IP_HEADER_A | string | `"x-original-forwarded-for"` |  |
| backendCommon.envs.BACKEND_REQUEST_IP_HEADER_B | string | `"x-real-ip"` |  |
| backendCommon.envs.BACKEND_SEED_DEMO_ORG_AND_PROJECT | string | `"FALSE"` |  |
| backendCommon.envs.BACKEND_SEND_EMAIL_FROM_ADDRESS | string | `"no-reply@example.com"` | *Replace* |
| backendCommon.envs.BACKEND_SEND_EMAIL_FROM_NAME | string | `"My Company Name"` | *Replace* |
| backendCommon.envs.BACKEND_SMTP_AUTH_PASSWORD | string | `"realSmtpPassword"` | *Replace* |
| backendCommon.envs.BACKEND_SMTP_AUTH_USER | string | `"realSmtpUser"` | *Replace* |
| backendCommon.envs.BACKEND_SMTP_HOST | string | `"real-smtp.example.com"` | *Replace* |
| backendCommon.envs.BACKEND_SMTP_PORT | int | `465` |  |
| backendCommon.envs.BACKEND_SMTP_SECURE | string | `"TRUE"` |  |
| backendCommon.envs.BACKEND_SPECIAL_KEY | string | `"specialkey"` | *Replace* |
| backendCommon.envs.BACKEND_STORE_API_BLOCK_HOSTS | string | `""` | hostnames that resolve to internal IP are blocked by default, you can specify more hosts to block - separated by comma "example1.com, example2.com" |
| backendCommon.envs.BACKEND_STORE_API_ALLOW_HOSTS | string | `""` | hostnames that resolve to internal IP are blocked by default, you can specify hosts to unblock - separated by comma "example3.com, examplelocalservice" |
| backendCommon.envs.BACKEND_THROTTLE_PRIVATE_ROUTES_BY_USER_ID | string | `"TRUE"` |  |
| backendCommon.envs.BACKEND_THROTTLE_PUBLIC_ROUTES_BY_IP | string | `"TRUE"` |  |
| backendCommon.envs.BACKEND_VALKEY_HOST | string | `"valkey"` |  |
| backendCommon.envs.BACKEND_VALKEY_PASSWORD | string | `"valkeypass"` | *Replace* |
| backendCommon.envs.NODE_ENV | string | `"production"` |  |
| blockml.createEnvsSecret | bool | `true` |  |
| blockml.name | string | `"blockml"` |  |
| blockml.replicas | int | `1` |  |
| blockml.affinity | object | `{}` |  |
| blockml.image | string | `"ghcr.io/mprove-io/mprove-blockml"` |  |
| blockml.annotations."secret.reloader.stakater.com/reload" | string | `"secret-blockml"` |  |
| blockml.envsSecretName | string | `"secret-blockml"` |  |
| blockml.envs.TURBO_TELEMETRY_DISABLED | int | `1` |  |
| blockml.envs.IS_TELEMETRY_ENABLED | string | `"FALSE"` |  |
| blockml.envs.TELEMETRY_ENDPOINT | string | `""` |  |
| blockml.envs.TELEMETRY_HYPERDX_INGEST_API_KEY | string | `""` |  |
| blockml.envs.OTEL_LOG_LEVEL | string | `"info"` |  |
| blockml.envs.BLOCKML_AES_KEY | string | `"aeskey"` | *Replace* |
| blockml.envs.BLOCKML_VALKEY_HOST | string | `"valkey"` |  |
| blockml.envs.BLOCKML_VALKEY_PASSWORD | string | `"valkeypass"` | *Replace* |
| blockml.envs.BLOCKML_CONCURRENCY_LIMIT | int | `0` |  |
| blockml.envs.BLOCKML_COPY_LOGS_TO_MODELS | string | `"FALSE"` |  |
| blockml.envs.BLOCKML_DATA | string | `"/root/mprove_data/blockml-data"` |  |
| blockml.envs.BLOCKML_ENV | string | `"PROD"` |  |
| blockml.envs.BLOCKML_LOGS_PATH | string | `"/root/mprove_data/blockml-logs"` |  |
| blockml.envs.BLOCKML_LOG_FUNC | string | `"ALL"` |  |
| blockml.envs.BLOCKML_LOG_IO | string | `"FALSE"` |  |
| blockml.envs.BLOCKML_LOG_IS_JSON | string | `"TRUE"` |  |
| blockml.envs.BLOCKML_LOG_RESPONSE_ERROR | string | `"FALSE"` |  |
| blockml.envs.BLOCKML_LOG_RESPONSE_OK | string | `"FALSE"` |  |
| blockml.envs.NODE_ENV | string | `"production"` |  |
| disk.createEnvsSecret | bool | `true` |  |
| disk.image | string | `"ghcr.io/mprove-io/mprove-disk"` |  |
| disk.annotations."secret.reloader.stakater.com/reload" | string | `"secret-disk"` |  |
| disk.name | string | `"disk"` |  |
| disk.affinity | object | `{}` |  |
| disk.pv.enabled | bool | `false` |  |
| disk.pv.nodeAffinity | object | `{}` |  |
| disk.pvcLabels | object | `{}` |  |
| disk.storage | string | `"10Gi"` |  |
| disk.storageClassName | string | `""` |  |
| disk.envsSecretName | string | `"secret-disk"` |  |
| disk.envs.TURBO_TELEMETRY_DISABLED | int | `1` |  |
| disk.envs.IS_TELEMETRY_ENABLED | string | `"FALSE"` |  |
| disk.envs.TELEMETRY_ENDPOINT | string | `""` |  |
| disk.envs.TELEMETRY_HYPERDX_INGEST_API_KEY | string | `""` |  |
| disk.envs.OTEL_LOG_LEVEL | string | `"info"` |  |
| disk.envs.DISK_AES_KEY | string | `"aeskey"` | *Replace* |
| disk.envs.DISK_SHARD | string | `"shard-0"` |  |
| disk.envs.DISK_CONCURRENCY | int | `1` |  |
| disk.envs.DISK_VALKEY_HOST | string | `"valkey"` |  |
| disk.envs.DISK_VALKEY_PASSWORD | string | `"valkeypass"` | *Replace* |
| disk.envs.DISK_ENV | string | `"PROD"` |  |
| disk.envs.DISK_LOG_IS_JSON | string | `"TRUE"` |  |
| disk.envs.DISK_LOG_RESPONSE_ERROR | string | `"FALSE"` |  |
| disk.envs.DISK_LOG_RESPONSE_OK | string | `"FALSE"` |  |
| disk.envs.DISK_ORGANIZATIONS_PATH | string | `"/root/mprove_data/organizations"` |  |
| disk.envs.NODE_ENV | string | `"production"` |  |
| front.image | string | `"ghcr.io/mprove-io/mprove-front"` |  |
| front.name | string | `"front"` |  |
| front.replicas | int | `1` |  |
| front.affinity | object | `{}` |  |
| dwhPostgres.enabled | bool | `false` |  |
| dwhPostgres.createEnvsSecret | bool | `false` |  |
| dwhPostgres.image | string | `"ghcr.io/mprove-io/mprove-dwh-postgres"` |  |
| dwhPostgres.tag | string | `"18.1-m3"` |  |
| dwhPostgres.annotations."secret.reloader.stakater.com/reload" | string | `"secret-dwh-postgres"` |  |
| dwhPostgres.name | string | `"dwh-postgres"` |  |
| dwhPostgres.affinity | object | `{}` |  |
| dwhPostgres.storage | string | `"2Gi"` |  |
| dwhPostgres.storageClassName | string | `""` |  |
| dwhPostgres.envsSecretName | string | `"secret-dwh-postgres"` |  |
| dwhPostgres.envs.PGPORT | int | `5436` |  |
| dwhPostgres.envs.READ_USER | string | `"dwh_postgres_read_user"` |  |
| dwhPostgres.envs.READ_PASSWORD | string | `"dwhPostgresReadPass"` | *Replace* |
| dwhPostgres.envs.POSTGRES_PASSWORD | string | `"dwhPostgresPass"` | *Replace* |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
