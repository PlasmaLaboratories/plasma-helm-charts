{{/*
backend fullname
*/}}
{{- define "strata-btc-bridge.backend.fullname" -}}
{{ include "strata-btc-bridge.fullname" . }}-backend
{{- end }}

{{/*
backend common labels
*/}}
{{- define "strata-btc-bridge.backend.labels" -}}
{{ include "strata-btc-bridge.labels" . }}
app.kubernetes.io/component: backend
{{- end }}

{{/*
backend selector labels
*/}}
{{- define "strata-btc-bridge.backend.selectorLabels" -}}
{{ include "strata-btc-bridge.selectorLabels" . }}
app.kubernetes.io/component: backend
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "strata-btc-bridge.backend.serviceAccountName" -}}
{{- if .Values.backend.serviceAccount.create }}
{{- default (include "strata-btc-bridge.backend.fullname" .) .Values.backend.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.backend.serviceAccount.name }}
{{- end }}
{{- end }}
