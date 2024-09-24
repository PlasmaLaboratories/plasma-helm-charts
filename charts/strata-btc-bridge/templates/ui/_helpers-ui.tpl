{{/*
ui fullname
*/}}
{{- define "strata-btc-bridge.ui.fullname" -}}
{{ include "strata-btc-bridge.fullname" . }}-ui
{{- end }}

{{/*
ui common labels
*/}}
{{- define "strata-btc-bridge.ui.labels" -}}
{{ include "strata-btc-bridge.labels" . }}
app.kubernetes.io/component: ui
{{- end }}

{{/*
ui selector labels
*/}}
{{- define "strata-btc-bridge.ui.selectorLabels" -}}
{{ include "strata-btc-bridge.selectorLabels" . }}
app.kubernetes.io/component: ui
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "strata-btc-bridge.ui.serviceAccountName" -}}
{{- if .Values.ui.serviceAccount.create }}
{{- default (include "strata-btc-bridge.ui.fullname" .) .Values.ui.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.ui.serviceAccount.name }}
{{- end }}
{{- end }}
