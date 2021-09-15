{{/*
Expand the name of the chart.
*/}}
{{- define "cda-integration.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "cda-integration.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cda-integration.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "cda-integration.labels" -}}
helm.sh/chart: {{ include "cda-integration.chart" . }}
{{ include "cda-integration.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "cda-integration.selectorLabels" -}}
app.kubernetes.io/name: {{ include "cda-integration.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "cda-integration.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "cda-integration.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create repository image and imagetag with Terra Values.global.applicationVersion Overrride
*/}}
{{- define "cda-integration.image" -}}
{{- if .Values.imageName -}}
    {{ .Values.imageName }}
{{- else -}}
    {{ .Values.image.repository }}:{{ .Values.global.applicationVersion | default .Values.image.tag }}
{{- end -}}
{{- end -}}
