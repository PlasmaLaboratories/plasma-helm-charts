# plasma-node

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![AppVersion: 0.1.3](https://img.shields.io/badge/AppVersion-0.1.3-informational?style=flat-square)

A Helm chart for Plasma's blockchain node.

**Homepage:** <https://www.plasma.to/>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| plasmalab |  | <https://github.com/PlasmaLaboratories> |

## Source Code

* <https://github.com/PlasmaLaboratories/plasma-helm-charts>
* <https://plasmalaboratories.github.io/helm-charts>

## Requirements

Kubernetes: `>=1.23.0-0`

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| args[0] | string | `"--dataDir"` |  |
| args[1] | string | `"/mnt/plasma-node/data"` |  |
| args[2] | string | `"--stakingDir"` |  |
| args[3] | string | `"/mnt/plasma-node/staking"` |  |
| args[4] | string | `"--config"` |  |
| args[5] | string | `"https://raw.githubusercontent.com/PlasmaLaboratories/plasma-genesis-testnets/refs/heads/main/devnet/config.yaml"` |  |
| command | string | `nil` |  |
| configMap.content | string | `"node:\n  big-bang:\n    staker-count: 2\n    local-staker-index: 0\n    timestamp: 0\n    regtest-enabled: true\n    stakes: [10000, 10000]\n"` |  |
| configMap.fileName | string | `"custom-config.yaml"` |  |
| configMap.mountPath | string | `"/config/plasma-node-config"` |  |
| env[0].name | string | `"_JAVA_OPTIONS"` |  |
| env[0].value | string | `"-XX:MaxRAMPercentage=70.0 -XX:ActiveProcessorCount=4"` |  |
| image.imagePullPolicy | string | `"Always"` |  |
| image.repository | string | `"stratalab/plasma-node"` |  |
| image.tag | string | `""` |  |
| maxUnavailable | int | `1` |  |
| metrics.enabled | bool | `false` |  |
| metrics.scrapeTimeout | string | `""` |  |
| metrics.service.portName | string | `"http-metrics"` |  |
| metrics.service.servicePort | int | `9095` |  |
| metrics.service.type | string | `"ClusterIP"` |  |
| metrics.serviceMonitor.enabled | bool | `true` |  |
| metrics.serviceMonitor.interval | string | `"30s"` |  |
| metrics.serviceMonitor.metricRelabelings | list | `[]` |  |
| metrics.serviceMonitor.namespace | string | `""` |  |
| metrics.serviceMonitor.relabelings | list | `[]` |  |
| metrics.serviceMonitor.scheme | string | `""` |  |
| metrics.serviceMonitor.selector | object | `{}` |  |
| networkPolicy.enabled | bool | `false` |  |
| nodeSelector | object | `{}` |  |
| podSecurityContext.fsGroup | int | `0` |  |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `1001` |  |
| podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| ports[0].name | string | `"grpc"` |  |
| ports[0].port | int | `9084` |  |
| ports[0].targetPort | int | `9084` |  |
| ports[1].name | string | `"tcp-p2p"` |  |
| ports[1].port | int | `9085` |  |
| ports[1].targetPort | int | `9085` |  |
| ports[2].name | string | `"http-metrics"` |  |
| ports[2].port | int | `9095` |  |
| ports[2].targetPort | int | `9095` |  |
| probes.readinessProbe.grpc.port | int | `9084` |  |
| probes.readinessProbe.timeoutSeconds | int | `20` |  |
| probes.startupProbe.failureThreshold | int | `30` |  |
| probes.startupProbe.grpc.port | int | `9084` |  |
| probes.startupProbe.timeoutSeconds | int | `20` |  |
| replicaCount | int | `1` |  |
| resources.limits.ephemeral-storage | string | `"500Mi"` |  |
| resources.limits.memory | string | `"3Gi"` |  |
| resources.requests.cpu | string | `"25m"` |  |
| resources.requests.memory | string | `"3Gi"` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| service | string | `"plasma-node"` |  |
| serviceAccount.automountToken | bool | `false` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `"plasma-node"` |  |
| serviceType | string | `"ClusterIP"` |  |
| system | string | `"plasma-node"` |  |
| tolerations | list | `[]` |  |
| version | int | `1` |  |
| volume.mountDirectory | string | `"/mnt/plasma-node/"` |  |
| volume.storageClass | string | `nil` |  |
| volume.storageSize | string | `"10Gi"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
